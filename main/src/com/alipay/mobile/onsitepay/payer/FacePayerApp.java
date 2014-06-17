package com.alipay.mobile.onsitepay.payer;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.onsitepay.payer.sound.SendSoundViewActivity_;
import java.lang.ref.WeakReference;

public class FacePayerApp extends ActivityApplication
{
  public String getEntryClassName()
  {
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    Activity localActivity = (Activity)getMicroApplicationContext().getTopActivity().get();
    if (localActivity != null)
    {
      Intent localIntent = new Intent(localActivity, SendSoundViewActivity_.class);
      getMicroApplicationContext().startActivity(this, localIntent);
    }
  }

  protected void onStart()
  {
    getMicroApplicationContext().startActivity(this, SendSoundViewActivity_.class.getName());
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.FacePayerApp
 * JD-Core Version:    0.6.2
 */