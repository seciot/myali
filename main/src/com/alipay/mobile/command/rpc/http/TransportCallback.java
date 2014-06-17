package com.alipay.mobile.command.rpc.http;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;

public abstract class TransportCallback
{
  public void onCancelled(Request paramRequest)
  {
  }

  public void onFailed(Request paramRequest, int paramInt, String paramString)
  {
  }

  public abstract void onPostExecute(Request paramRequest, Response paramResponse);

  public void onPreExecute(Request paramRequest)
  {
  }

  public abstract void onProgressUpdate(Request paramRequest, double paramDouble);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.TransportCallback
 * JD-Core Version:    0.6.2
 */