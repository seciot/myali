package com.alipay.mobile.alipassapp.biz.service;

import android.os.Bundle;
import android.os.HandlerThread;
import android.os.Message;

public final class g
{
  public static void a(Bundle paramBundle)
  {
    HandlerThread localHandlerThread = new HandlerThread("upload_alipass_hander_thread");
    localHandlerThread.start();
    Message localMessage = new f(localHandlerThread.getLooper()).obtainMessage();
    localMessage.setData(paramBundle);
    localMessage.sendToTarget();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.g
 * JD-Core Version:    0.6.2
 */