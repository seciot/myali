package com.alipay.mobile.mobilerechargeapp.activity;

import com.alibaba.fastjson.JSONException;

final class cd
  implements Runnable
{
  cd(cc paramcc, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    try
    {
      MobileRechargeCashierActivity.a(this.b.a, this.a);
      return;
    }
    catch (JSONException localJSONException)
    {
      new StringBuilder("parse json error:").append(localJSONException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.cd
 * JD-Core Version:    0.6.2
 */