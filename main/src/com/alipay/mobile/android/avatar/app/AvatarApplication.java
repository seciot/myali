package com.alipay.mobile.android.avatar.app;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.android.avatar.process.EditAvatarModActivity;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class AvatarApplication extends ActivityApplication
{
  private Bundle a;

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
    this.a = paramBundle;
    onStart();
  }

  protected void onStart()
  {
    Intent localIntent = new Intent(getMicroApplicationContext().getApplicationContext(), EditAvatarModActivity.class);
    if (this.a != null)
      localIntent.putExtras(this.a);
    getMicroApplicationContext().startActivity(this, localIntent);
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.app.AvatarApplication
 * JD-Core Version:    0.6.2
 */