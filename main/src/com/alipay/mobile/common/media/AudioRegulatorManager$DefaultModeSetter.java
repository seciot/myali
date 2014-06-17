package com.alipay.mobile.common.media;

import android.media.AudioManager;

public class AudioRegulatorManager$DefaultModeSetter
  implements AudioRegulatorManager.LineModeSetter
{
  public void setEarphoneLineMode(AudioManager paramAudioManager)
  {
    if ((3 == AudioRegulatorManager.apiLevel) || (4 == AudioRegulatorManager.apiLevel))
    {
      paramAudioManager.setMode(2);
      return;
    }
    if (AudioRegulatorManager.isLowerApi())
    {
      paramAudioManager.setMode(0);
      return;
    }
    AudioRegulatorManager.access$100(paramAudioManager);
  }

  public void setSpeakerLineMode(AudioManager paramAudioManager)
  {
    if ((3 == AudioRegulatorManager.apiLevel) || (4 == AudioRegulatorManager.apiLevel))
    {
      paramAudioManager.setMode(0);
      return;
    }
    if (AudioRegulatorManager.isLowerApi())
    {
      paramAudioManager.setMode(2);
      return;
    }
    AudioRegulatorManager.access$000(paramAudioManager);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AudioRegulatorManager.DefaultModeSetter
 * JD-Core Version:    0.6.2
 */