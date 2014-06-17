package com.taobao.security;

final class b$c
  implements Filter
{
  public final boolean filter(c paramc, g paramg)
  {
    int i = 0;
    if ((paramc == null) || (paramc.c == null))
      i = 1;
    int j;
    do
    {
      return i;
      if (paramc.c.length != 1)
        break;
      j = paramc.c[0];
      i = 0;
    }
    while (j == -1);
    int[] arrayOfInt = paramc.c;
    if (arrayOfInt.length <= 0)
      return true;
    String[] arrayOfString = new String[37];
    while (i < arrayOfInt.length)
    {
      arrayOfString[arrayOfInt[i]] = paramg.a(arrayOfInt[i]);
      i++;
    }
    paramg.a(arrayOfString);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.b.c
 * JD-Core Version:    0.6.2
 */