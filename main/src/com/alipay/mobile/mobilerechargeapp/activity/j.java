package com.alipay.mobile.mobilerechargeapp.activity;

import com.alibaba.fastjson.JSONException;

final class j
  implements Runnable
{
  j(i parami, byte[] paramArrayOfByte)
  {
  }

  public final void run()
  {
    try
    {
      BalancesWarnCmsActivity.a(this.b.a, this.a);
      return;
    }
    catch (JSONException localJSONException)
    {
      BalancesWarnCmsActivity.a(this.b.a);
      new StringBuilder("parse json error:").append(localJSONException.getMessage()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.j
 * JD-Core Version:    0.6.2
 */