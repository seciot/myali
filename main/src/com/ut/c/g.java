package com.ut.c;

public class g
{
  public static boolean D(String paramString)
  {
    return (paramString == null) || (paramString.length() <= 0);
  }

  public static int s(String paramString)
  {
    int i = 0;
    if (paramString.length() > 0)
    {
      char[] arrayOfChar = paramString.toCharArray();
      j = 0;
      while (i < arrayOfChar.length)
      {
        j = j * 31 + arrayOfChar[i];
        i++;
      }
    }
    int j = 0;
    return j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.c.g
 * JD-Core Version:    0.6.2
 */