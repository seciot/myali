package com.google.zxing.common;

import java.util.Hashtable;

public final class CharacterSetECI extends ECI
{
  private static Hashtable a;
  private static Hashtable b;
  private final String c;

  private CharacterSetECI(int paramInt, String paramString)
  {
    super(paramInt);
    this.c = paramString;
  }

  private static void a()
  {
    a = new Hashtable(29);
    b = new Hashtable(29);
    a(0, "Cp437");
    a(1, new String[] { "ISO8859_1", "ISO-8859-1" });
    a(2, "Cp437");
    a(3, new String[] { "ISO8859_1", "ISO-8859-1" });
    a(4, "ISO8859_2");
    a(5, "ISO8859_3");
    a(6, "ISO8859_4");
    a(7, "ISO8859_5");
    a(8, "ISO8859_6");
    a(9, "ISO8859_7");
    a(10, "ISO8859_8");
    a(11, "ISO8859_9");
    a(12, "ISO8859_10");
    a(13, "ISO8859_11");
    a(15, "ISO8859_13");
    a(16, "ISO8859_14");
    a(17, "ISO8859_15");
    a(18, "ISO8859_16");
    a(20, new String[] { "SJIS", "Shift_JIS" });
  }

  private static void a(int paramInt, String paramString)
  {
    CharacterSetECI localCharacterSetECI = new CharacterSetECI(paramInt, paramString);
    a.put(new Integer(paramInt), localCharacterSetECI);
    b.put(paramString, localCharacterSetECI);
  }

  private static void a(int paramInt, String[] paramArrayOfString)
  {
    int i = 0;
    CharacterSetECI localCharacterSetECI = new CharacterSetECI(paramInt, paramArrayOfString[0]);
    a.put(new Integer(paramInt), localCharacterSetECI);
    while (i < paramArrayOfString.length)
    {
      b.put(paramArrayOfString[i], localCharacterSetECI);
      i++;
    }
  }

  public static CharacterSetECI getCharacterSetECIByName(String paramString)
  {
    if (b == null)
      a();
    return (CharacterSetECI)b.get(paramString);
  }

  public static CharacterSetECI getCharacterSetECIByValue(int paramInt)
  {
    if (a == null)
      a();
    if ((paramInt < 0) || (paramInt >= 900))
      throw new IllegalArgumentException("Bad ECI value: " + paramInt);
    return (CharacterSetECI)a.get(new Integer(paramInt));
  }

  public final String getEncodingName()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.CharacterSetECI
 * JD-Core Version:    0.6.2
 */