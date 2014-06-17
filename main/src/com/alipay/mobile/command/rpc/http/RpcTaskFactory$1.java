package com.alipay.mobile.command.rpc.http;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.rpc.http.processor.RpcProcessor;
import com.alipay.mobile.command.util.exception.HttpException;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

final class RpcTaskFactory$1 extends FutureTask<Response>
{
  RpcTaskFactory$1(Callable paramCallable, RpcProcessor paramRpcProcessor)
  {
    super(paramCallable);
  }

  protected final void done()
  {
    Request localRequest = this.a.getRequest();
    TransportCallback localTransportCallback = this.a.getCallback();
    if (localTransportCallback == null)
      super.done();
    while (true)
    {
      return;
      try
      {
        localResponse = (Response)get();
        if ((isCancelled()) || (localRequest.isCanceled()))
        {
          localRequest.cancel();
          if ((!isCancelled()) || (!isDone()))
            cancel(false);
          localTransportCallback.onCancelled(localRequest);
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Response localResponse;
        localTransportCallback.onFailed(localRequest, 7, localInterruptedException);
        return;
        if (localResponse == null)
          continue;
        localTransportCallback.onPostExecute(localRequest, localResponse);
        return;
      }
      catch (ExecutionException localExecutionException)
      {
        if ((localExecutionException.getCause() == null) || (!(localExecutionException.getCause() instanceof HttpException)))
          continue;
        HttpException localHttpException = (HttpException)localExecutionException.getCause();
        localTransportCallback.onFailed(localRequest, localHttpException.getCode(), localHttpException.getMsg());
        return;
      }
      catch (CancellationException localCancellationException)
      {
        localRequest.cancel();
        localTransportCallback.onCancelled(localRequest);
        return;
      }
      catch (Throwable localThrowable)
      {
        throw new RuntimeException("An error occured while executing http request", localThrowable);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.RpcTaskFactory.1
 * JD-Core Version:    0.6.2
 */