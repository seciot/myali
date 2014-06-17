package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Handler;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;

final class r
  implements TransportCallback
{
  public r(BalancesWarnInputActivity paramBalancesWarnInputActivity)
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
    BalancesWarnInputActivity.e(this.a).post(new s(this, arrayOfByte));
  }

  public final void onPreExecute(Request paramRequest)
  {
    BalancesWarnInputActivity.d(this.a);
  }

  public final void onProgressUpdate(Request paramRequest, double paramDouble)
  {
    BalancesWarnInputActivity.d(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.r
 * JD-Core Version:    0.6.2
 */