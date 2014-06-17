package com.alipay.sonicwavenfc;

public class SonicWaveJni
{
  static
  {
    System.loadLibrary("sonicwavejni");
  }

  public static native double ga(short[] paramArrayOfShort, int paramInt, double paramDouble1, double paramDouble2);

  public static native double mult(double paramDouble);

  public static native short wv(double paramDouble, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.sonicwavenfc.SonicWaveJni
 * JD-Core Version:    0.6.2
 */