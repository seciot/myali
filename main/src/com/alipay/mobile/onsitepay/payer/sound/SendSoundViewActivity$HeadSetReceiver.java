package com.alipay.mobile.onsitepay.payer.sound;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class SendSoundViewActivity$HeadSetReceiver extends BroadcastReceiver
{
  public SendSoundViewActivity$HeadSetReceiver(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.intent.action.HEADSET_PLUG"))
    {
      if (paramIntent.getIntExtra("state", 0) != 0)
        break label74;
      new StringBuilder("接收耳机拨插时的广播1　misHeadSetOn").append(SendSoundViewActivity.m(this.a)).toString();
      SendSoundViewActivity.a(this.a, false);
      if (!SendSoundViewActivity.m(this.a))
        this.a.a("点击重试");
    }
    return;
    label74: SendSoundViewActivity.a(this.a, true);
    this.a.r();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.SendSoundViewActivity.HeadSetReceiver
 * JD-Core Version:    0.6.2
 */