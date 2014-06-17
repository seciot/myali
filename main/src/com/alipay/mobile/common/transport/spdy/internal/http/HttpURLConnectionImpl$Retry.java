package com.alipay.mobile.common.transport.spdy.internal.http;

 enum HttpURLConnectionImpl$Retry
{
  static
  {
    DIFFERENT_CONNECTION = new Retry("DIFFERENT_CONNECTION", 2);
    Retry[] arrayOfRetry = new Retry[3];
    arrayOfRetry[0] = NONE;
    arrayOfRetry[1] = SAME_CONNECTION;
    arrayOfRetry[2] = DIFFERENT_CONNECTION;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpURLConnectionImpl.Retry
 * JD-Core Version:    0.6.2
 */