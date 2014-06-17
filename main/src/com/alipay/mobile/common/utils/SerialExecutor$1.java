package com.alipay.mobile.common.utils;

class SerialExecutor$1
  implements Runnable
{
  SerialExecutor$1(SerialExecutor paramSerialExecutor, Runnable paramRunnable)
  {
  }

  public void run()
  {
    try
    {
      this.val$command.run();
      return;
    }
    finally
    {
      this.this$0.scheduleNext();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.SerialExecutor.1
 * JD-Core Version:    0.6.2
 */