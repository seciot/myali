package com.alipay.android.setting;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.setting.activity.EntranceActivity;
import com.alipay.android.setting.activity.NoPasswordActivity;
import com.alipay.android.setting.activity.PaymentChannelActivity;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class MspSettingsApp extends ActivityApplication
{
  private Bundle a;

  private void a(Bundle paramBundle)
  {
    if (paramBundle == null)
      return;
    switch (paramBundle.getInt("settingId", 0))
    {
    default:
      return;
    case 0:
      Intent localIntent3 = new Intent(AlipayApplication.getInstance(), EntranceActivity.class);
      localIntent3.putExtras(paramBundle);
      getMicroApplicationContext().startActivity(this, localIntent3);
      return;
    case 1:
      Intent localIntent2 = new Intent(AlipayApplication.getInstance(), NoPasswordActivity.class);
      localIntent2.putExtras(paramBundle);
      getMicroApplicationContext().startActivityForResult(this, localIntent2, 0);
      return;
    case 2:
    }
    Intent localIntent1 = new Intent(AlipayApplication.getInstance(), PaymentChannelActivity.class);
    localIntent1.putExtras(paramBundle);
    getMicroApplicationContext().startActivityForResult(this, localIntent1, 0);
  }

  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = paramBundle;
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    a(paramBundle);
  }

  protected void onStart()
  {
    a(this.a);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.MspSettingsApp
 * JD-Core Version:    0.6.2
 */