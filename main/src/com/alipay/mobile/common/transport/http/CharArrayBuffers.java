package com.alipay.mobile.common.transport.http;

import org.apache.http.protocol.HTTP;
import org.apache.http.util.CharArrayBuffer;

class CharArrayBuffers
{
  static final char uppercaseAddon = ' ';

  private static char a(char paramChar)
  {
    if ((paramChar >= 'A') && (paramChar <= 'Z'))
      paramChar = (char)(paramChar + ' ');
    return paramChar;
  }

  static boolean containsIgnoreCaseTrimmed(CharArrayBuffer paramCharArrayBuffer, int paramInt, String paramString)
  {
    int i = paramCharArrayBuffer.length();
    char[] arrayOfChar = paramCharArrayBuffer.buffer();
    while ((paramInt < i) && (HTTP.isWhitespace(arrayOfChar[paramInt])))
      paramInt++;
    int j = paramString.length();
    int k;
    if (i >= paramInt + j)
    {
      bool = true;
      k = 0;
      label52: if ((!bool) || (k >= j))
        break label122;
      char c1 = arrayOfChar[(paramInt + k)];
      char c2 = paramString.charAt(k);
      if (c1 != c2)
        if (a(c1) != a(c2))
          break label116;
    }
    label116: for (boolean bool = true; ; bool = false)
    {
      k++;
      break label52;
      bool = false;
      break;
    }
    label122: return bool;
  }

  static int setLowercaseIndexOf(CharArrayBuffer paramCharArrayBuffer, int paramInt)
  {
    int i = paramCharArrayBuffer.length();
    char[] arrayOfChar = paramCharArrayBuffer.buffer();
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfChar[j];
      if (k == paramInt)
        return j;
      if ((k >= 65) && (k <= 90))
        arrayOfChar[j] = ((char)(k + 32));
    }
    return -1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.CharArrayBuffers
 * JD-Core Version:    0.6.2
 */