package com.alipay.mobile.alipassnfcapp.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AlipassSendSoundViewController$HeadSetReceiver extends BroadcastReceiver
{
  public AlipassSendSoundViewController$HeadSetReceiver(AlipassSendSoundViewController paramAlipassSendSoundViewController)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG"))
    {
      if (paramIntent.getIntExtra("state", 0) != 0)
        break label39;
      AlipassSendSoundViewController.access$1102(this.a, false);
    }
    while (true)
    {
      AlipassSendSoundViewController.access$1200(this.a);
      return;
      label39: AlipassSendSoundViewController.access$1102(this.a, true);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.AlipassSendSoundViewController.HeadSetReceiver
 * JD-Core Version:    0.6.2
 */