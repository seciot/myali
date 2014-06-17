package com.alibaba.fastjson.util;

class UTF8Decoder$Surrogate
{
  public static final int UCS4_MAX = 1114111;
  public static final int UCS4_MIN = 65536;

  static
  {
    if (!UTF8Decoder.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public static char high(int paramInt)
  {
    assert (neededFor(paramInt));
    return (char)(0xD800 | 0x3FF & paramInt - 65536 >> 10);
  }

  public static char low(int paramInt)
  {
    assert (neededFor(paramInt));
    return (char)(0xDC00 | 0x3FF & paramInt - 65536);
  }

  public static boolean neededFor(int paramInt)
  {
    return (paramInt >= 65536) && (paramInt <= 1114111);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.UTF8Decoder.Surrogate
 * JD-Core Version:    0.6.2
 */