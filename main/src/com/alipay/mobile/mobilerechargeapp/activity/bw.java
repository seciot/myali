package com.alipay.mobile.mobilerechargeapp.activity;

import android.view.View;
import android.view.View.OnClickListener;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;

final class bw
  implements View.OnClickListener
{
  bw(MobileRechargeCashierActivity paramMobileRechargeCashierActivity, String paramString, JSONObject paramJSONObject)
  {
  }

  public final void onClick(View paramView)
  {
    LogAgentWriteLog.g(this.c);
    this.c.a(this.a, this.b.getString("title"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.bw
 * JD-Core Version:    0.6.2
 */