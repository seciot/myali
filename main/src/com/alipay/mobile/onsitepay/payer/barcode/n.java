package com.alipay.mobile.onsitepay.payer.barcode;

import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;

final class n
  implements PhoneCashierCallback
{
  n(m paramm)
  {
  }

  public final void onInstallFailed()
  {
    this.a.a.n();
    this.a.a.toast("设备认证失败", 0);
  }

  public final void onPayFailed(int paramInt, String paramString)
  {
    BarcodePayActivity.i(this.a.a);
    this.a.a.n();
    this.a.a.toast("设备认证失败", 0);
  }

  public final void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    BarcodePayActivity.j(this.a.a);
    this.a.a.n();
    this.a.a.toast("设备认证成功", 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.n
 * JD-Core Version:    0.6.2
 */