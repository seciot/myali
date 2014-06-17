package com.alipay.mobile.common.transport.http;

import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class HttpManager$1 extends FutureTask
{
  HttpManager$1(HttpManager paramHttpManager, Callable paramCallable, HttpWorker paramHttpWorker)
  {
    super(paramCallable);
  }

  protected void done()
  {
    HttpUrlRequest localHttpUrlRequest = this.val$httpWorker.getRequest();
    TransportCallback localTransportCallback = localHttpUrlRequest.getCallback();
    if (localTransportCallback == null)
      super.done();
    while (true)
    {
      return;
      try
      {
        localResponse = (Response)get();
        if ((isCancelled()) || (localHttpUrlRequest.isCanceled()))
        {
          localHttpUrlRequest.cancel();
          if ((!isCancelled()) || (!isDone()))
            cancel(false);
          localTransportCallback.onCancelled(localHttpUrlRequest);
          return;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        Response localResponse;
        localTransportCallback.onFailed(localHttpUrlRequest, 7, localInterruptedException);
        return;
        if (localResponse == null)
          continue;
        localTransportCallback.onPostExecute(localHttpUrlRequest, localResponse);
        return;
      }
      catch (ExecutionException localExecutionException)
      {
        if ((localExecutionException.getCause() != null) && ((localExecutionException.getCause() instanceof HttpException)))
        {
          HttpException localHttpException = (HttpException)localExecutionException.getCause();
          localTransportCallback.onFailed(localHttpUrlRequest, localHttpException.getCode(), localHttpException.getMsg());
          return;
        }
        localTransportCallback.onFailed(localHttpUrlRequest, 6, localExecutionException);
        return;
      }
      catch (CancellationException localCancellationException)
      {
        localHttpUrlRequest.cancel();
        localTransportCallback.onCancelled(localHttpUrlRequest);
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
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpManager.1
 * JD-Core Version:    0.6.2
 */