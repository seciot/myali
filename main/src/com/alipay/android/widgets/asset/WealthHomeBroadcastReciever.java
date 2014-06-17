package com.alipay.android.widgets.asset;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import com.alipay.android.widgets.asset.adapter.WealthWidgetFlagAdapter;
import com.alipay.android.widgets.asset.rpc.AssetDynamicDataProcessor;
import com.alipay.android.widgets.asset.utils.BindCardProcessor;
import com.alipay.mobile.common.misc.ExtStringUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class WealthHomeBroadcastReciever extends BroadcastReceiver
{
  private WealthWidgetFlagAdapter a;
  private AssetDynamicDataProcessor b;
  private boolean c = true;
  private BindCardProcessor d;
  private AuthService e;
  private Handler f = new Handler(Looper.getMainLooper());
  private String g;
  private boolean h = true;
  private Runnable i = new c(this);

  public WealthHomeBroadcastReciever(WealthWidgetFlagAdapter paramWealthWidgetFlagAdapter, AssetDynamicDataProcessor paramAssetDynamicDataProcessor, MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = paramWealthWidgetFlagAdapter;
    this.b = paramAssetDynamicDataProcessor;
    this.d = new BindCardProcessor(paramMicroApplicationContext);
    this.e = ((AuthService)paramMicroApplicationContext.getExtServiceByInterface(AuthService.class.getName()));
  }

  private void b()
  {
    if (this.e.isLogin())
      this.f.postDelayed(new d(this), 20L);
  }

  private void c()
  {
    new StringBuilder("isOpenWap=").append(this.c).toString();
    if (this.c)
      this.d.a();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (paramIntent.getAction().equals("com.alipay.security.login"))
      {
        String str2 = paramIntent.getStringExtra("logonId");
        if ((str2 != null) && ((this.h) || (!StringUtils.equals(str2, this.g))))
        {
          new StringBuilder("{[info=login sucess,logonId=").append(str2).append("]}").toString();
          this.h = false;
          this.g = str2;
          new StringBuilder("设置首页rpc状态,doRpc=").append(this.h).append(",logonId=").append(str2).toString();
          this.f.postDelayed(new e(this), 20000L);
          b();
          this.a.a();
          UserInfo localUserInfo = this.e.getUserInfo();
          if ((ExtStringUtil.isEmpty(localUserInfo.getGesturePwd())) && (localUserInfo.isGestureSkip()))
            c();
        }
      }
      while (true)
      {
        if (paramIntent.getAction().equals("com.alipay.mobile.android.main.avatar.action.changed"))
          this.a.a();
        new StringBuilder("closeShowWapAfter10s(),showWap=").append(this.c).append(",action=").append(paramIntent.getAction()).toString();
        if ((!this.c) || (!paramIntent.getAction().equals("com.alipay.mobile.LAUNCHER_STATUS_CHANGED")) || (!"state=onResume".equals(paramIntent.getStringExtra("data"))))
          break;
        this.f.postDelayed(this.i, 10000L);
        return;
        if (paramIntent.getAction().equals("com.alipay.mobile.GESTURE_SETTING_SUCESS"))
        {
          String str1 = paramIntent.getStringExtra("data");
          new StringBuilder("onReceive-Data:").append(str1).toString();
          if (("state=settingGestureSucessAction".equals(str1)) || ("state=validateGestureSucessAction".equals(str1)))
          {
            c();
            b();
          }
        }
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("onReceive is null").append(localException).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.WealthHomeBroadcastReciever
 * JD-Core Version:    0.6.2
 */