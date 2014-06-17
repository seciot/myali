package com.alipay.mobile.alipassnfcapp.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import com.alipay.mobile.alipassnfcapp.ui.app.AlipassNfcApp;
import com.googlecode.androidannotations.annotations.EActivity;

@EActivity
public class AlipassWaveActivity extends RootController
{
  protected final String a()
  {
    return AlipassWaveActivity.class.getPackage().getName();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (((AlipassNfcApp)this.mApp).getAppBundle().getBoolean("is_dynamic", false))
    {
      a("AlipassSendDynmicSoundView");
      return;
    }
    a("AlipassSendSoundView");
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.AlipassWaveActivity
 * JD-Core Version:    0.6.2
 */