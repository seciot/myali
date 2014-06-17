package com.alipay.mobile.common.transport.spdy;

import java.io.IOException;
import java.net.HttpURLConnection;

final class Job
  implements Runnable
{
  final HttpURLConnection connection;
  final Dispatcher dispatcher;
  final Request request;
  final Response.Receiver responseReceiver;

  public Job(Dispatcher paramDispatcher, HttpURLConnection paramHttpURLConnection, Request paramRequest, Response.Receiver paramReceiver)
  {
    this.dispatcher = paramDispatcher;
    this.connection = paramHttpURLConnection;
    this.request = paramRequest;
    this.responseReceiver = paramReceiver;
  }

  public final void run()
  {
    int i = 0;
    int j = 0;
    try
    {
      while (j < this.request.headerCount())
      {
        this.connection.addRequestProperty(this.request.headerName(j), this.request.headerValue(j));
        j++;
      }
      Request.Body localBody = this.request.body();
      long l;
      if (localBody != null)
      {
        this.connection.setDoOutput(true);
        l = localBody.contentLength();
        if ((l != -1L) && (l <= 2147483647L))
          break label177;
        this.connection.setChunkedStreamingMode(0);
      }
      while (true)
      {
        localBody.writeTo(this.connection.getOutputStream());
        int k = this.connection.getResponseCode();
        localBuilder = new Response.Builder(this.request, k);
        while (true)
        {
          String str = this.connection.getHeaderFieldKey(i);
          if (str == null)
            break;
          localBuilder.addHeader(str, this.connection.getHeaderField(i));
          i++;
        }
        label177: this.connection.setFixedLengthStreamingMode((int)l);
      }
    }
    catch (IOException localIOException)
    {
      Response.Builder localBuilder;
      this.responseReceiver.onFailure(new Failure.Builder().request(this.request).exception(localIOException).build());
      return;
      localBuilder.body(new Dispatcher.RealResponseBody(this.connection, this.connection.getInputStream()));
      Response localResponse = localBuilder.build();
      this.responseReceiver.onResponse(localResponse);
      return;
    }
    finally
    {
      this.connection.disconnect();
      this.dispatcher.finished(this);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Job
 * JD-Core Version:    0.6.2
 */