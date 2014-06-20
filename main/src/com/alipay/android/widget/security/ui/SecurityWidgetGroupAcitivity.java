package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.Button;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.NFCService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetcontainer.WidgetContainerAdapter;
import com.alipay.mobile.framework.widgetcontainer.view.WidgetListContainer;
import com.alipay.mobile.more.R.id;
import com.alipay.mobile.more.R.layout;
import java.util.HashMap;
import java.util.Map;

public class SecurityWidgetGroupAcitivity extends BaseActivity
  implements WidgetContainerAdapter
{
  public final String a = SecurityWidgetGroupAcitivity.class.getName();
  protected APTitleBar b;
  APScrollView c;
  SchemeService d;
  AuthService e;
  WidgetListContainer f;
  protected APButton g;
  NFCService h;

  public final void a()
  {
    new Handler(Looper.getMainLooper()).post(new d(this));
  }

  public IWidgetView getWidgetView(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt)
  {
    return null;
  }

  public boolean isWidgetVisible(String paramString1, String paramString2)
  {
    if ("10000008".equals(paramString2))
    {
      AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      if (localAuthService.isLogin());
      for (UserInfo localUserInfo = localAuthService.getUserInfo(); (localUserInfo != null) && (!localUserInfo.isWirelessUser()); localUserInfo = null)
        return true;
      return false;
    }
    if ("20000102".equals(paramString2))
      return this.h.hasFeatureNfc(this);
    return true;
  }

  public boolean needBindWidgetMsgFlag(String paramString1, String paramString2)
  {
    return true;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.AppBundle);
    this.d = ((SchemeService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
    this.e = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.h = ((NFCService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(NFCService.class.getName()));
    this.b = ((APTitleBar)findViewById(R.id.BundlesManagerImpl));
    this.c = ((APScrollView)findViewById(R.id.BundlesManager));
    this.f = ((WidgetListContainer)findViewById(R.id.d));
    this.g = ((APButton)findViewById(R.id.AppBundle));
    this.f.setAdapter(this);
    this.g.setOnClickListener(new a(this));
  }

  protected void onResume()
  {
    super.onResume();
    if (this.e != null)
    {
      UserInfo localUserInfo = this.e.getUserInfo();
      if ((!this.e.isLogin()) || (localUserInfo == null))
        break label66;
      this.g.setVisibility(0);
    }
    IWidgetView localIWidgetView;
    while (true)
    {
      if (this.f != null)
      {
        localIWidgetView = this.f.getWidgetViewById("50000017");
        if (localIWidgetView != null)
          break;
      }
      return;
      label66: this.g.setVisibility(8);
    }
    HashMap localHashMap = new HashMap();
    if (this.h.isAlipayNfcEnable(this));
    for (String str = "已开启"; ; str = "")
    {
      localHashMap.put("tips", str);
      localIWidgetView.setDisplayInfo(localHashMap);
      return;
    }
  }

  public boolean performWidgetClick(View paramView, String paramString1, String paramString2, String paramString3)
  {
    if ("20000057".equals(paramString2))
    {
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[5];
      arrayOfString[0] = "-";
      arrayOfString[1] = "-";
      arrayOfString[2] = "-";
      arrayOfString[3] = "-";
      arrayOfString[4] = this.d.getLastTagId();
      AlipayLogAgent.writeLog(this, localBehaviourIdEnum, "-", "-", "20000005", "-", "accountSecurityIndex", "moreHome", "accountSecurity", "-", "u", "c", arrayOfString);
      new Thread(new e(this, (byte)0)).start();
      return true;
    }
    if ("20000028".equals(paramString2))
    {
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000005", "-", "mobilePasswordIndex", "moreHome", "mobilePwd");
      new Thread(new h(this, (byte)0)).start();
      return true;
    }
    if ("20000024".equals(paramString2))
    {
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000005", "-", "paySetIndex", "moreHome", "paySet");
      new Thread(new f(this, (byte)0)).start();
      return true;
    }
    if ("20000011".equals(paramString2))
      AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000005", "-", "serviceCenterIndex", "moreHome", "serviceCenter");
    try
    {
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("20000005", "20000011", null);
      label290: return true;
      if ("10000008".equals(paramString2))
      {
        AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000005", "-", "mobileBaoLingIndex", "moreHome", "mobileBaoLing");
        new Thread(new g(this, (byte)0)).start();
        return true;
      }
      if ("10000110".equals(paramString2));
      try
      {
        AlipayApplication.getInstance().getMicroApplicationContext().startApp(null, "10000110", null);
        AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, "-", "-", "20000005", "-", "aboutIndex", "moreHome", "about");
        label404: return true;
        if ("20000102".equals(paramString2));
        try
        {
          AlipayApplication.getInstance().getMicroApplicationContext().startApp(null, "20000102", null);
          label430: return true;
          return false;
        }
        catch (AppLoadException localAppLoadException1)
        {
          break label430;
        }
      }
      catch (AppLoadException localAppLoadException2)
      {
        break label404;
      }
    }
    catch (AppLoadException localAppLoadException3)
    {
      break label290;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWidgetGroupAcitivity
 * JD-Core Version:    0.6.2
 */