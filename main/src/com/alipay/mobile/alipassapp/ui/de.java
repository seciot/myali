package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;

final class de
  implements PhoneCashierCallback
{
  de(BasicConfirmActivity paramBasicConfirmActivity)
  {
  }

  public final void onInstallFailed()
  {
    this.a.stop();
  }

  public final void onPayFailed(int paramInt, String paramString)
  {
    this.a.v(paramString, true);
  }

  public final void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    this.a.getInstance();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.de
 * JD-Core Version:    0.6.2
 */