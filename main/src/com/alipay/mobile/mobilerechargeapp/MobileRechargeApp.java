package com.alipay.mobile.mobilerechargeapp;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.mobilerechargeapp.activity.MobileReChargePPBindMobileAcitvity_;
import com.alipay.mobile.mobilerechargeapp.activity.MobileRechargeActivity_;
import com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryManager;

public class MobileRechargeApp extends ActivityApplication
{
  public RechargeHistoryManager mHistoryManager;
  public Bundle mParams;

  public void dispatch(Bundle paramBundle)
  {
    AlipayApplication localAlipayApplication = getMicroApplicationContext().getApplicationContext();
    Intent localIntent = new Intent();
    if (paramBundle != null)
      if ("PPBindMobileNo".equalsIgnoreCase(paramBundle.getString("actionType")))
        localIntent.setClass(localAlipayApplication, MobileReChargePPBindMobileAcitvity_.class);
    while (true)
    {
      getMicroApplicationContext().startActivity(this, localIntent);
      return;
      if (("recharge".equalsIgnoreCase(paramBundle.getString("actionType"))) || ("cphc".equalsIgnoreCase(paramBundle.getString("actionType"))))
      {
        localIntent.setFlags(67108864);
        localIntent.setClass(localAlipayApplication, MobileRechargeActivity_.class);
      }
      else
      {
        localIntent.setFlags(67108864);
        localIntent.setClass(localAlipayApplication, MobileRechargeActivity_.class);
        continue;
        localIntent.setFlags(67108864);
        localIntent.setClass(localAlipayApplication, MobileRechargeActivity_.class);
      }
    }
  }

  public String getEntryClassName()
  {
    return null;
  }

  public Bundle getmParams()
  {
    return this.mParams;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.mParams = paramBundle;
    dispatch(paramBundle);
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  protected void onRestart(Bundle paramBundle)
  {
    this.mParams = paramBundle;
    dispatch(paramBundle);
  }

  protected void onStart()
  {
  }

  protected void onStop()
  {
  }

  public void setmParams(Bundle paramBundle)
  {
    this.mParams = paramBundle;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.MobileRechargeApp
 * JD-Core Version:    0.6.2
 */