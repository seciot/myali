package com.alipay.mobile.onsitepay.payer.sound;

import android.view.View;
import android.view.View.OnClickListener;

final class ac
  implements View.OnClickListener
{
  ac(SoundButtonActivity paramSoundButtonActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setWavingState(false);
    this.a.waveButtonListener.c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.ac
 * JD-Core Version:    0.6.2
 */