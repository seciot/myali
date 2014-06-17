package com.google.zxing.common;

public abstract class ECI
{
  private final int a;

  ECI(int paramInt)
  {
    this.a = paramInt;
  }

  public static ECI getECIByValue(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 999999))
      throw new IllegalArgumentException("Bad ECI value: " + paramInt);
    if (paramInt < 900)
      return CharacterSetECI.getCharacterSetECIByValue(paramInt);
    return null;
  }

  public int getValue()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.ECI
 * JD-Core Version:    0.6.2
 */