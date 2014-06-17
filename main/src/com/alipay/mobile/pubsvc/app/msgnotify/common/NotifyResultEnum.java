package com.alipay.mobile.pubsvc.app.msgnotify.common;

public final class NotifyResultEnum
{
  public static final int DELAYED_PROCESSING = 2;
  public static final int PROCESSED = 0;
  public static final int PROCESSING = 1;

  public static boolean isProcessing(int paramInt)
  {
    return 1 == paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.common.NotifyResultEnum
 * JD-Core Version:    0.6.2
 */