package com.alipay.mobile.common.task;

import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class OperationTask$2 extends FutureTask
{
  OperationTask$2(OperationTask paramOperationTask, Callable paramCallable)
  {
    super(paramCallable);
  }

  protected void done()
  {
    try
    {
      Object localObject = get();
      if (isCancelled())
      {
        OperationTask.access$100(this.this$0).onCancelled(OperationTask.access$000(this.this$0));
        return;
      }
      if (localObject != null)
      {
        OperationTask.access$100(this.this$0).onPostExecute(OperationTask.access$000(this.this$0), localObject);
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      OperationTask.access$100(this.this$0).onFailed(OperationTask.access$000(this.this$0), localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      throw new RuntimeException("An error occured while executing operation task", localExecutionException.getCause());
    }
    catch (CancellationException localCancellationException)
    {
      OperationTask.access$100(this.this$0).onCancelled(OperationTask.access$000(this.this$0));
      return;
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException("An error occured while executing operation task", localThrowable);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.task.OperationTask.2
 * JD-Core Version:    0.6.2
 */