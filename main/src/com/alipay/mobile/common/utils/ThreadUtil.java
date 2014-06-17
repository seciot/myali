package com.alipay.mobile.common.utils;

import android.os.Looper;

public class ThreadUtil
{
  public static boolean checkMainThread()
  {
    return (Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.ThreadUtil
 * JD-Core Version:    0.6.2
 */