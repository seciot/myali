package com.alipay.mobile.mobilerechargeapp.activity;

import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;

final class av
  implements PhoneCashierCallback
{
  av(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void onInstallFailed()
  {
    this.a.runOnUiThread(new ay(this));
  }

  public final void onPayFailed(int paramInt, String paramString)
  {
    this.a.runOnUiThread(new ax(this));
  }

  public final void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    this.a.runOnUiThread(new aw(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.av
 * JD-Core Version:    0.6.2
 */