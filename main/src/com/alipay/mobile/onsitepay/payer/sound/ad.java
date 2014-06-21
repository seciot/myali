package com.alipay.mobile.onsitepay.payer.sound;

import android.view.View;
import android.view.View.OnClickListener;

final class ad
  implements View.OnClickListener
{
  ad(SoundButtonActivity paramSoundButtonActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setWavingState(true);
    this.a.waveButtonListener.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.ad
 * JD-Core Version:    0.6.2
 */