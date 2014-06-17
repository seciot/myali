package com.alipay.android.app.util;

public final class StringPool
{
  private final String[] a = new String[512];

  public final String a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    int j = 0;
    while (i < paramInt1 + paramInt2)
    {
      j = j * 31 + paramArrayOfChar[i];
      i++;
    }
    int k = j ^ (j >>> 20 ^ j >>> 12);
    int m = (k ^ (k >>> 7 ^ k >>> 4)) & -1 + this.a.length;
    String str1 = this.a[m];
    if (str1 != null)
    {
      int n = str1.length();
      int i1 = 0;
      if (n != paramInt2);
      while (i1 != 0)
      {
        return str1;
        for (int i2 = 0; ; i2++)
        {
          if (i2 >= paramInt2)
            break label151;
          int i3 = paramArrayOfChar[(paramInt1 + i2)];
          int i4 = str1.charAt(i2);
          i1 = 0;
          if (i3 != i4)
            break;
        }
        label151: i1 = 1;
      }
    }
    String str2 = new String(paramArrayOfChar, paramInt1, paramInt2);
    this.a[m] = str2;
    return str2;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.StringPool
 * JD-Core Version:    0.6.2
 */