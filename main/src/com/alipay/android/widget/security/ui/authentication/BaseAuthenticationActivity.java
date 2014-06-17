package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

public abstract class BaseAuthenticationActivity extends BaseFragmentActivity
{
  protected boolean a = false;
  protected String b = null;

  protected static void a(boolean paramBoolean)
  {
    new StringBuilder("{[info=sendBroadcast],[msg=").append(paramBoolean).append("]}").toString();
    try
    {
      Intent localIntent = new Intent("com.alipay.security.namecertified");
      localIntent.putExtra("isCertified", paramBoolean);
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext()).sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final String d()
  {
    return this.b;
  }

  public final void e()
  {
    this.a = false;
  }

  protected final void f()
  {
    try
    {
      this.mMicroApplicationContext.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static abstract interface OnFrozenCancelClickedListener
  {
    public abstract void a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationActivity
 * JD-Core Version:    0.6.2
 */