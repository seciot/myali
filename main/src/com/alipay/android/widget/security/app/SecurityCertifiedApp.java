package com.alipay.android.widget.security.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.widget.security.ui.authentication.AuthenticationCertifiedActivity_;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class SecurityCertifiedApp extends ActivityApplication
{
  protected AuthService a;
  private Bundle b;
  private MicroApplicationContext c;
  private UserInfo d = null;

  private void a()
  {
    Intent localIntent = new Intent(AlipayApplication.getInstance(), AuthenticationCertifiedActivity_.class);
    if (this.b != null)
      localIntent.putExtras(this.b);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

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
    a();
  }

  protected void onStart()
  {
    new StringBuilder("source app id: ").append(getSourceId()).toString();
    a();
  }

  protected void onStop()
  {
  }

  public void setParams(Bundle paramBundle)
  {
    this.b = paramBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.app.SecurityCertifiedApp
 * JD-Core Version:    0.6.2
 */