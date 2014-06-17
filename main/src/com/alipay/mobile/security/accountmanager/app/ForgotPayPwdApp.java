package com.alipay.mobile.security.accountmanager.app;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.accountmanager.ui.WapForgotPayPwdActivity_;
import com.alipay.mobile.security.securitycommon.SecurityUtil;

public class ForgotPayPwdApp extends ActivityApplication
{
  protected AuthService a;
  private Bundle b;
  private MicroApplicationContext c;
  private UserInfo d = null;

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getParams()
  {
    return this.b;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.b = paramBundle;
    this.c = getMicroApplicationContext();
    this.a = ((AuthService)this.c.getExtServiceByInterface(AuthService.class.getName()));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.b = paramBundle;
    new Thread(new a((byte)0)).start();
  }

  protected void onStart()
  {
    new Thread(new a((byte)0)).start();
  }

  protected void onStop()
  {
  }

  public void setParams(Bundle paramBundle)
  {
    this.b = paramBundle;
  }

  private final class a
    implements Runnable
  {
    private a()
    {
    }

    public final void run()
    {
      if (ForgotPayPwdApp.this.a == null)
      {
        ForgotPayPwdApp.this.c.finishApp(ForgotPayPwdApp.this.getAppId(), ForgotPayPwdApp.this.getAppId(), null);
        return;
      }
      ForgotPayPwdApp.access$202(ForgotPayPwdApp.this, ForgotPayPwdApp.this.a.getUserInfo());
      if ((ForgotPayPwdApp.this.b != null) && (!SecurityUtil.a(ForgotPayPwdApp.this.b.getString("logonId"))))
      {
        String str1 = ForgotPayPwdApp.this.b.getString("logonId");
        if (ForgotPayPwdApp.this.d == null)
        {
          if (!ForgotPayPwdApp.this.a.auth(new Bundle()))
            ForgotPayPwdApp.this.c.finishApp(ForgotPayPwdApp.this.getAppId(), ForgotPayPwdApp.this.getAppId(), null);
        }
        else if (StringUtils.equals(str1, ForgotPayPwdApp.this.d.getLogonId()))
        {
          if ((!ForgotPayPwdApp.this.a.isLogin()) && (!ForgotPayPwdApp.this.a.auth(new Bundle())))
            ForgotPayPwdApp.this.c.finishApp(ForgotPayPwdApp.this.getAppId(), ForgotPayPwdApp.this.getAppId(), null);
        }
        else
        {
          ForgotPayPwdApp.access$400(ForgotPayPwdApp.this, str1, null, false, false);
          ForgotPayPwdApp.this.c.finishApp(ForgotPayPwdApp.this.getAppId(), ForgotPayPwdApp.this.getAppId(), null);
          return;
        }
        ForgotPayPwdApp.access$202(ForgotPayPwdApp.this, ForgotPayPwdApp.this.a.getUserInfo());
        if ((ForgotPayPwdApp.this.d != null) && (StringUtils.equals(str1, ForgotPayPwdApp.this.d.getLogonId())))
        {
          if (StringUtils.isEmpty(ForgotPayPwdApp.this.d.getMobileNumber()))
          {
            ForgotPayPwdApp.this.c.Alert(null, ForgotPayPwdApp.this.c.getApplicationContext().getResources().getString(R.string.W), ForgotPayPwdApp.this.c.getApplicationContext().getResources().getString(R.string.bi), null, null, null);
            return;
          }
          Intent localIntent2 = new Intent(AlipayApplication.getInstance(), WapForgotPayPwdActivity_.class);
          if (SecurityUtil.a(ForgotPayPwdApp.this.b.getString("fromWhich")));
          for (String str2 = "alipay"; ; str2 = ForgotPayPwdApp.this.b.getString("fromWhich"))
          {
            localIntent2.putExtra("fromWhich", str2);
            ForgotPayPwdApp.this.c.startActivity(ForgotPayPwdApp.this, localIntent2);
            return;
          }
        }
        new StringBuilder("loginId: ").append(str1).toString();
        ForgotPayPwdApp.this.c.finishApp(ForgotPayPwdApp.this.getAppId(), ForgotPayPwdApp.this.getAppId(), null);
        return;
      }
      if ((ForgotPayPwdApp.this.d == null) && (!ForgotPayPwdApp.this.a.auth(new Bundle())))
      {
        ForgotPayPwdApp.this.c.finishApp(ForgotPayPwdApp.this.getAppId(), ForgotPayPwdApp.this.getAppId(), null);
        return;
      }
      ForgotPayPwdApp.access$202(ForgotPayPwdApp.this, ForgotPayPwdApp.this.a.getUserInfo());
      if ((ForgotPayPwdApp.this.d != null) && (StringUtils.isEmpty(ForgotPayPwdApp.this.d.getMobileNumber())))
      {
        ForgotPayPwdApp.this.c.Alert(null, ForgotPayPwdApp.this.c.getApplicationContext().getResources().getString(R.string.W), ForgotPayPwdApp.this.c.getApplicationContext().getResources().getString(R.string.bi), null, null, null);
        return;
      }
      Intent localIntent1 = new Intent(AlipayApplication.getInstance(), WapForgotPayPwdActivity_.class);
      ForgotPayPwdApp.this.c.startActivity(ForgotPayPwdApp.this, localIntent1);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.app.ForgotPayPwdApp
 * JD-Core Version:    0.6.2
 */