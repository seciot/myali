package com.alipay.mobile.common.media;

import android.content.Context;
import android.media.AudioManager;

public class AudioRegulatorManager$AudioRegulator
{
  private AudioManager a;
  private AudioRegulatorManager.LineModeSetter b;
  private int c;

  public AudioRegulatorManager$AudioRegulator(Context paramContext)
  {
    this.a = ((AudioManager)paramContext.getSystemService("audio"));
    if (this.a != null)
      this.c = this.a.getMode();
  }

  public void closeToTheFace()
  {
    if (isSpeakerphoneAvailable())
      turnEarPhone();
  }

  public boolean isSpeakerphoneAvailable()
  {
    if (this.a == null);
    while (true)
    {
      return false;
      if ((this.a.isWiredHeadsetOn()) || (this.a.isBluetoothA2dpOn()) || (this.a.isBluetoothScoOn()));
      for (int i = 1; i == 0; i = 0)
        return true;
    }
  }

  public boolean isSpeakerphoneOn()
  {
    if (this.a == null)
      return false;
    return this.a.isSpeakerphoneOn();
  }

  public void resetSpeakerToOriginal()
  {
    if (this.a == null)
      return;
    this.a.setMode(0);
    this.a.setSpeakerphoneOn(false);
  }

  public void setLineModeSetter(AudioRegulatorManager.LineModeSetter paramLineModeSetter)
  {
    this.b = paramLineModeSetter;
  }

  public void stayAwayFromFace(boolean paramBoolean)
  {
    if (isSpeakerphoneAvailable())
    {
      if (paramBoolean)
        turnSpeakerphoneOn();
    }
    else
      return;
    turnEarPhone();
  }

  public void turnEarPhone()
  {
    if (!isSpeakerphoneAvailable())
      return;
    if (this.b != null)
      this.b.setEarphoneLineMode(this.a);
    this.a.setSpeakerphoneOn(false);
  }

  public void turnSpeakerphoneOn()
  {
    if (!isSpeakerphoneAvailable())
      return;
    if (this.b != null)
      this.b.setSpeakerLineMode(this.a);
    this.a.setSpeakerphoneOn(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AudioRegulatorManager.AudioRegulator
 * JD-Core Version:    0.6.2
 */