package com.alipay.mobile.alipassapp.ui;

import android.os.Handler;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;

final class az
  implements TransportCallback
{
  public az(AlipassListActivity paramAlipassListActivity)
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
    AlipassListActivity.i(this.a).post(new ba(this, arrayOfByte));
  }

  public final void onPreExecute(Request paramRequest)
  {
  }

  public final void onProgressUpdate(Request paramRequest, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.az
 * JD-Core Version:    0.6.2
 */