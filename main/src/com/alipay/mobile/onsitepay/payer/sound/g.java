package com.alipay.mobile.onsitepay.payer.sound;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class g extends BroadcastReceiver
{
  g(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("seed_init_complete"))
    {
      Boolean localBoolean = Boolean.valueOf(paramIntent.getBooleanExtra("seed_init_complete_falg", false));
      new StringBuilder("SEED_INIT_COMPLETE result = ").append(localBoolean).toString();
      SendSoundViewActivity localSendSoundViewActivity = this.a;
      boolean bool1 = localBoolean.booleanValue();
      boolean bool2 = false;
      if (!bool1)
        bool2 = true;
      SendSoundViewActivity.d(localSendSoundViewActivity, bool2);
      if (!this.a.m.isWaveNow)
        this.a.m();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.g
 * JD-Core Version:    0.6.2
 */