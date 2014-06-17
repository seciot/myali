package com.alipay.mobile.common.media;

import android.media.AudioManager;

public class AudioRegulatorManager$SamsungModeSetter
  implements AudioRegulatorManager.LineModeSetter
{
  public void setEarphoneLineMode(AudioManager paramAudioManager)
  {
    if (AudioRegulatorManager.isLowerApi())
    {
      paramAudioManager.setMode(0);
      return;
    }
    AudioRegulatorManager.access$100(paramAudioManager);
  }

  public void setSpeakerLineMode(AudioManager paramAudioManager)
  {
    if (AudioRegulatorManager.isLowerApi())
    {
      paramAudioManager.setMode(2);
      return;
    }
    AudioRegulatorManager.access$000(paramAudioManager);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AudioRegulatorManager.SamsungModeSetter
 * JD-Core Version:    0.6.2
 */