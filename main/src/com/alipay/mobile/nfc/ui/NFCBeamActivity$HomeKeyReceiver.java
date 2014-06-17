package com.alipay.mobile.nfc.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class NFCBeamActivity$HomeKeyReceiver extends BroadcastReceiver
{
  private NFCBeamActivity$HomeKeyReceiver(NFCBeamActivity paramNFCBeamActivity)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (("android.intent.action.CLOSE_SYSTEM_DIALOGS".equals(paramIntent.getAction())) && ("homekey".equals(paramIntent.getStringExtra("reason"))))
      this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCBeamActivity.HomeKeyReceiver
 * JD-Core Version:    0.6.2
 */