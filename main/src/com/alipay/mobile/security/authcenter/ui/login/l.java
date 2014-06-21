package com.alipay.mobile.security.authcenter.ui.login;

import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;

final class l
  implements TransportCallback
{
  l(BaseLoginFragment paramBaseLoginFragment)
  {
  }

  public final void onCancelled(Request paramRequest)
  {
  }

  public final void onFailed(Request paramRequest, int paramInt, String paramString)
  {
  }

  public final void onPostExecute(Request paramRequest, Response paramResponse)
  {
    byte[] arrayOfByte = paramResponse.getResData();
    this.a.getBundle(arrayOfByte);
  }

  public final void onPreExecute(Request paramRequest)
  {
  }

  public final void onProgressUpdate(Request paramRequest, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.l
 * JD-Core Version:    0.6.2
 */