package com.alipay.mobile.common.media;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import java.io.PrintStream;

public class AudioRegulatorManager
{
  static final int apiLevel = Build.VERSION.SDK_INT;
  static final String deviceModel = Build.MODEL;

  public static final boolean isLowerApi()
  {
    return (apiLevel >= 5) && (apiLevel <= 7);
  }

  public static final boolean isSamsungDevice()
  {
    String str = Build.BRAND;
    if (str != null)
      return "samsung".equalsIgnoreCase(str);
    return false;
  }

  public static AudioRegulatorManager.AudioRegulator newAudioRegulator(Context paramContext)
  {
    System.out.println("deviceModel: " + deviceModel);
    AudioRegulatorManager.AudioRegulator localAudioRegulator = new AudioRegulatorManager.AudioRegulator(paramContext);
    Object localObject;
    if ("MB860".equals(deviceModel))
      localObject = new AudioRegulatorManager.MB860ModeSetter();
    while (true)
    {
      localAudioRegulator.setLineModeSetter((AudioRegulatorManager.LineModeSetter)localObject);
      return localAudioRegulator;
      if ("M040".equals(deviceModel))
        localObject = new AudioRegulatorManager.MX2ModeSetter();
      else if (isSamsungDevice())
        localObject = new AudioRegulatorManager.SamsungModeSetter();
      else
        localObject = new AudioRegulatorManager.DefaultModeSetter();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AudioRegulatorManager
 * JD-Core Version:    0.6.2
 */