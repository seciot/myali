package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Handler;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;

final class i
  implements TransportCallback
{
  public i(BalancesWarnCmsActivity paramBalancesWarnCmsActivity)
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
    BalancesWarnCmsActivity.dexopt(this.a).post(new j(this, arrayOfByte));
  }

  public final void onPreExecute(Request paramRequest)
  {
    BalancesWarnCmsActivity.getBundle(this.a);
  }

  public final void onProgressUpdate(Request paramRequest, double paramDouble)
  {
    BalancesWarnCmsActivity.getBundle(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.i
 * JD-Core Version:    0.6.2
 */