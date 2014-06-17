package com.alipay.html;

public class XmlUtils
{
  public static final int a(CharSequence paramCharSequence)
  {
    int i = 1;
    int j = -1;
    if (paramCharSequence == null)
      return j;
    String str = paramCharSequence.toString();
    int k = str.length();
    if ('-' == str.charAt(0));
    while (true)
    {
      int m;
      int n;
      if ('0' == str.charAt(i))
      {
        if (i == k - 1)
          return 0;
        int i1 = str.charAt(i + 1);
        if ((120 == i1) || (88 == i1))
        {
          m = i + 2;
          n = 16;
        }
      }
      while (true)
      {
        return j * Integer.parseInt(str.substring(m), n);
        m = i + 1;
        n = 8;
        continue;
        if ('#' == str.charAt(i))
        {
          m = i + 1;
          n = 16;
        }
        else
        {
          m = i;
          n = 10;
        }
      }
      j = i;
      i = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.html.XmlUtils
 * JD-Core Version:    0.6.2
 */