package com.alipay.mobile.common.transport.http;

import com.alipay.mobile.common.info.DeviceInfo;

class HttpWorker$DesKey
{
  static final String DEFAULT_KEY = "rDIwjx1Q";
  private static String a = "rDIwjx1Q";

  static
  {
    String str = DeviceInfo.getInstance().getClientId();
    if ((str != null) && (str.length() >= 8))
      a = str.substring(0, 8);
  }

  public static String get()
  {
    return a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpWorker.DesKey
 * JD-Core Version:    0.6.2
 */