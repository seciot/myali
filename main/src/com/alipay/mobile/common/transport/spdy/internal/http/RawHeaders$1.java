package com.alipay.mobile.common.transport.spdy.internal.http;

import java.util.Comparator;

final class RawHeaders$1
  implements Comparator
{
  public final int compare(String paramString1, String paramString2)
  {
    if (paramString1 == paramString2)
      return 0;
    if (paramString1 == null)
      return -1;
    if (paramString2 == null)
      return 1;
    return String.CASE_INSENSITIVE_ORDER.compare(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders.1
 * JD-Core Version:    0.6.2
 */