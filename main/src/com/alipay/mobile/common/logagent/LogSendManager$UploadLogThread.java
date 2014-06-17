package com.alipay.mobile.common.logagent;

import android.content.Context;

class LogSendManager$UploadLogThread extends Thread
{
  private Context a;

  public LogSendManager$UploadLogThread(Context paramContext)
  {
    this.a = paramContext;
  }

  public void run()
  {
    LogSendManager.access$000(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.LogSendManager.UploadLogThread
 * JD-Core Version:    0.6.2
 */