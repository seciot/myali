package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity_;
import com.alipay.android.widget.security.ui.SecurityPasswordManagerForTUserActivity_;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class PasswordManagerApp extends ActivityApplication
{
  protected AuthService a;
  private Bundle b;
  private MicroApplicationContext c;
  private String d;
  private UserInfo e = null;

  public String getEntryClassName()
  {
    return null;
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

  public void start(Intent paramIntent)
  {
    startForResult(paramIntent, -1);
  }

  public void startForResult(Intent paramIntent, int paramInt)
  {
    this.c.startActivityForResult(this, paramIntent, paramInt);
  }

  private final class a
    implements Runnable
  {
    private a()
    {
    }

    public final void run()
    {
      if (PasswordManagerApp.this.a == null);
      do
      {
        do
          return;
        while ((!PasswordManagerApp.this.a.isLogin()) && (!PasswordManagerApp.this.a.auth(new Bundle())));
        PasswordManagerApp.access$102(PasswordManagerApp.this, PasswordManagerApp.this.a.getUserInfo());
        if (PasswordManagerApp.this.e != null)
          PasswordManagerApp.access$202(PasswordManagerApp.this, PasswordManagerApp.this.e.getLogonId());
      }
      while ((PasswordManagerApp.this.d == null) || (PasswordManagerApp.this.d.equalsIgnoreCase("")));
      if (!PasswordManagerApp.this.e.isWirelessUser())
      {
        Intent localIntent1 = new Intent(AlipayApplication.getInstance(), SecurityPasswordManagerActivity_.class);
        PasswordManagerApp.this.start(localIntent1);
        return;
      }
      Intent localIntent2 = new Intent(AlipayApplication.getInstance(), SecurityPasswordManagerForTUserActivity_.class);
      PasswordManagerApp.this.start(localIntent2);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.PasswordManagerApp
 * JD-Core Version:    0.6.2
 */