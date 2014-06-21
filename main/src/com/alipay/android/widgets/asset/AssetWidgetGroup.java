package com.alipay.android.widgets.asset;

import android.app.Activity;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alipay.android.launcher.core.IWidget;
import com.alipay.android.launcher.core.IWidgetGroup;
import com.alipay.android.phone.wealth.home.R.drawable;
import com.alipay.android.phone.wealth.home.R.id;
import com.alipay.android.phone.wealth.home.R.layout;
import com.alipay.android.phone.wealth.home.R.string;
import com.alipay.android.widgets.asset.adapter.WealthWidgetFlagAdapter;
import com.alipay.android.widgets.asset.rpc.AssetDynamicDataProcessor_;
import com.alipay.asset.common.view.WealthWidgetMsgFlag;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.widgetcontainer.view.WidgetContainer;
import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class AssetWidgetGroup
  implements IWidgetGroup
{
  protected APTitleBar a;
  private MicroApplicationContext b;
  private Activity c;
  private String d;
  private ViewGroup e;
  private WidgetContainer f;
  private List<IWidget> g = new ArrayList();
  private WealthWidgetMsgFlag h;
  private AuthService i;
  private long j;
  private long k;
  private WealthWidgetFlagAdapter l;
  private AssetDynamicDataProcessor_ m;
  private WealthWidgetMsgFlag n;
  private RelativeLayout o;
  private WealthHomeBroadcastReciever p;

  private void c()
  {
    this.m.a(true);
  }

  public final void a(WealthHomeInfoResult paramWealthHomeInfoResult)
  {
    if ((paramWealthHomeInfoResult != null) && (paramWealthHomeInfoResult.success))
    {
      this.l.a(paramWealthHomeInfoResult.homeInfo);
      this.l.b(paramWealthHomeInfoResult.homeMarkInfo);
      if ((this.o != null) && (this.o.isSelected()) && (this.c == this.b.getTopActivity().get()))
        this.h.ackClick();
      if (this.f != null)
        this.f.refresh();
    }
    if (paramWealthHomeInfoResult == null)
    {
      this.l.getBundle(null);
      this.l.b(null);
      if (this.f != null)
        this.f.refresh();
    }
    this.k = System.currentTimeMillis();
    if ((this.j != 0L) && (this.k != 0L))
    {
      long l1 = this.k - this.j;
      Activity localActivity = this.c;
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
      String str = AssetWidgetGroup.class.getName();
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "";
      arrayOfString[1] = "";
      arrayOfString[2] = String.valueOf(l1);
      arrayOfString[3] = "";
      AlipayLogAgent.writeLog(localActivity, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_open_assets", null, "s", "c", arrayOfString);
      this.k = 0L;
      this.j = 0L;
    }
  }

  public final boolean a()
  {
    return this.f != null;
  }

  public void destroy()
  {
    try
    {
      LocalBroadcastManager.getInstance(this.b.getApplicationContext()).unregisterReceiver(this.p);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("取消注册消息监听器异常：").append(localException.getLocalizedMessage()).toString();
    }
  }

  public List<IWidget> getAllWidgets()
  {
    return this.g;
  }

  public String getId()
  {
    return this.d;
  }

  public View getIndicator()
  {
    this.o = ((RelativeLayout)LayoutInflater.from(this.c).inflate(R.layout.BundlesManagerImpl, null));
    this.h = ((WealthWidgetMsgFlag)this.o.findViewById(R.id.e));
    this.h.setBindingWidget("50000003");
    this.n = new WealthWidgetMsgFlag(this.c);
    this.n.setWidgetType(WealthWidgetMsgFlag.MSG_WIDGET_TYPE_SDK);
    this.n.setBindingWidget("50000004");
    this.h.addChild(this.n);
    TextView localTextView = (TextView)this.o.findViewById(R.id.d);
    localTextView.setText(this.c.getText(R.string.AppBundle));
    Drawable localDrawable = this.c.getResources().getDrawable(R.drawable.AppBundle);
    localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
    localTextView.setCompoundDrawables(null, localDrawable, null, null);
    this.m = AssetDynamicDataProcessor_.a(this.c);
    this.m.a(this);
    this.l = new WealthWidgetFlagAdapter(this.c, this.m);
    this.l.a(this.h);
    try
    {
      if (this.i.isLogin())
        this.m.b(false);
      LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.b.getApplicationContext());
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.alipay.security.login");
      localIntentFilter.addAction("com.alipay.mobile.android.main.avatar.action.changed");
      localIntentFilter.addAction("com.alipay.mobile.GESTURE_SETTING_SUCESS");
      localIntentFilter.addAction("com.alipay.mobile.LAUNCHER_STATUS_CHANGED");
      this.p = new WealthHomeBroadcastReciever(this.l, this.m, this.b);
      localLocalBroadcastManager.registerReceiver(this.p, localIntentFilter);
      label313: return this.o;
    }
    catch (Exception localException)
    {
      break label313;
    }
  }

  public View getView()
  {
    this.j = System.currentTimeMillis();
    if (this.f == null)
    {
      this.e = ((ViewGroup)LayoutInflater.from(this.c).inflate(R.layout.BundlesManager, null));
      this.a = ((APTitleBar)this.e.findViewById(R.id.AppBundle));
      this.a.setTitleText(this.c.getResources().getString(R.string.AppBundle));
      this.a.setGenericButtonVisiable(true);
      this.a.setGenericButtonText("更多");
      this.a.setGenericButtonListener(new a(this));
      this.f = ((WidgetContainer)this.e.findViewById(R.id.BundlesManager));
      this.f.setAdapter(this.l);
      this.a.attachNewFlagView(this.n);
      this.n.refreshMsgFlag();
    }
    return this.e;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public void onRefresh()
  {
  }

  public void onResume()
  {
    AuthService localAuthService = (AuthService)this.b.getExtServiceByInterface(AuthService.class.getName());
    if (!localAuthService.isLogin())
    {
      new Thread(new b(this, localAuthService)).start();
      return;
    }
    c();
    this.h.ackClick();
  }

  public void onReturn()
  {
    c();
  }

  public void setContext(Activity paramActivity)
  {
    this.c = paramActivity;
  }

  public void setContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = paramMicroApplicationContext;
    this.i = ((AuthService)paramMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
  }

  public void setId(String paramString)
  {
    this.d = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.AssetWidgetGroup
 * JD-Core Version:    0.6.2
 */