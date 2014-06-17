package com.alipay.mobile.framework.lbsinfo;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class LBSInfoGather$1 extends Handler
{
  LBSInfoGather$1(LBSInfoGather paramLBSInfoGather, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == LBSInfoGather.access$000())
      LBSInfoGather.access$100(this.this$0);
    do
    {
      return;
      if (paramMessage.what == LBSInfoGather.access$200())
      {
        LBSInfoGather.access$300(this.this$0);
        return;
      }
    }
    while (paramMessage.what != LBSInfoGather.access$400());
    LBSInfoGather.access$500(this.this$0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.lbsinfo.LBSInfoGather.1
 * JD-Core Version:    0.6.2
 */