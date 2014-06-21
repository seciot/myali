package com.alipay.mobile.onsitepay.payer.confirm;

import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;

final class a
  implements PhoneCashierCallback
{
  a(BasicConfirmActivity paramBasicConfirmActivity, String paramString)
  {
  }

  public final void onInstallFailed()
  {
    this.b.b(this.a);
  }

  public final void onPayFailed(int paramInt, String paramString)
  {
    this.b.e(paramString, true, this.a);
  }

  public final void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    this.b.getBundle(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.a
 * JD-Core Version:    0.6.2
 */