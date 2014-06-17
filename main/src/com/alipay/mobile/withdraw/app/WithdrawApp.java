package com.alipay.mobile.withdraw.app;

import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.withdraw.ui.WithdrawActivity_;

public class WithdrawApp extends ActivityApplication
{
  String a = null;
  String b = null;
  String c = null;

  private void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      this.a = paramBundle.getString("bankId");
      this.b = paramBundle.getString("bankIdLast4");
      this.c = paramBundle.getString("bankMark");
    }
  }

  public String getBankId()
  {
    return this.a;
  }

  public String getBankIdLast4()
  {
    return this.b;
  }

  public String getBankMark()
  {
    return this.c;
  }

  public String getEntryClassName()
  {
    return WithdrawActivity_.class.getName();
  }

  protected void onCreate(Bundle paramBundle)
  {
    a(paramBundle);
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    a(paramBundle);
    getMicroApplicationContext().startActivity(this, getEntryClassName());
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.app.WithdrawApp
 * JD-Core Version:    0.6.2
 */