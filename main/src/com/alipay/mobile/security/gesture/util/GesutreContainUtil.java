package com.alipay.mobile.security.gesture.util;

import android.text.TextUtils;

public class GesutreContainUtil
{
  private static GesutreContainUtil a;

  public static String get8BytesStr(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramString.length() < 8))
      return "userInfo";
    return paramString.substring(-8 + paramString.length());
  }

  public static GesutreContainUtil getInstance()
  {
    try
    {
      if (a == null)
        a = new GesutreContainUtil();
      GesutreContainUtil localGesutreContainUtil = a;
      return localGesutreContainUtil;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.util.GesutreContainUtil
 * JD-Core Version:    0.6.2
 */