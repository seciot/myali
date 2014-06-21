package com.alipay.mobile.onsitepay.payer.barcode;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class f extends BroadcastReceiver
{
  f(BarcodePayActivity paramBarcodePayActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("seed_init_complete"))
    {
      boolean bool1 = paramIntent.getBooleanExtra("seed_init_complete_falg", false);
      new StringBuilder("SEED_INIT_COMPLETE result = ").append(bool1).toString();
      BarcodePayActivity localBarcodePayActivity = this.a;
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      BarcodePayActivity.d(localBarcodePayActivity, bool2);
      this.a.getAllComponentNames();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.f
 * JD-Core Version:    0.6.2
 */