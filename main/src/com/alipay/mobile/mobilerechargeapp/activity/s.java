package com.alipay.mobile.mobilerechargeapp.activity;

import com.alibaba.fastjson.JSONException;

final class s
  implements Runnable
{
  s(r paramr, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    try
    {
      BalancesWarnInputActivity.v(this.b.a, this.a);
      return;
    }
    catch (JSONException localJSONException)
    {
      BalancesWarnInputActivity.d(this.b.a);
      new StringBuilder("parse json error:").append(localJSONException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.s
 * JD-Core Version:    0.6.2
 */