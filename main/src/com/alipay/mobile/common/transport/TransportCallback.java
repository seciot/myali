package com.alipay.mobile.common.transport;

public abstract interface TransportCallback
{
  public abstract void onCancelled(Request paramRequest);

  public abstract void onFailed(Request paramRequest, int paramInt, String paramString);

  public abstract void onPostExecute(Request paramRequest, Response paramResponse);

  public abstract void onPreExecute(Request paramRequest);

  public abstract void onProgressUpdate(Request paramRequest, double paramDouble);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.TransportCallback
 * JD-Core Version:    0.6.2
 */