package com.alipay.mobile.common.media;

import android.media.AudioManager;

public class AudioRegulatorManager$MB860ModeSetter
  implements AudioRegulatorManager.LineModeSetter
{
  public void setEarphoneLineMode(AudioManager paramAudioManager)
  {
    if (AudioRegulatorManager.apiLevel >= 11)
      paramAudioManager.setMode(3);
  }

  public void setSpeakerLineMode(AudioManager paramAudioManager)
  {
    paramAudioManager.setMode(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AudioRegulatorManager.MB860ModeSetter
 * JD-Core Version:    0.6.2
 */