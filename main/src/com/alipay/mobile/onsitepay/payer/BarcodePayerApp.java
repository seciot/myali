package com.alipay.mobile.onsitepay.payer;

import android.app.Activity;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.onsitepay.payer.barcode.BarcodePayActivity_;
import java.lang.ref.WeakReference;

public class BarcodePayerApp extends ActivityApplication
{
  private static String a = "BarcodePayerApp";

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
    if ((Activity)getMicroApplicationContext().getTopActivity().get() != null)
      getMicroApplicationContext().startActivity(this, BarcodePayActivity_.class.getName());
  }

  protected void onStart()
  {
    getMicroApplicationContext().startActivity(this, BarcodePayActivity_.class.getName());
  }

  protected void onStop()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.BarcodePayerApp
 * JD-Core Version:    0.6.2
 */