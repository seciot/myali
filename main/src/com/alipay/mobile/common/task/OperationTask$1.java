package com.alipay.mobile.common.task;

import java.util.concurrent.Callable;

class OperationTask$1
  implements Callable
{
  OperationTask$1(OperationTask paramOperationTask)
  {
  }

  public Object call()
  {
    OperationTask.access$100(this.this$0).onPreExecute(OperationTask.access$000(this.this$0));
    return this.this$0.operation();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.task.OperationTask.1
 * JD-Core Version:    0.6.2
 */