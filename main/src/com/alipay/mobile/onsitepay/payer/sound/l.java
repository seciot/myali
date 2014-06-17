package com.alipay.mobile.onsitepay.payer.sound;

import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;

final class l
  implements PhoneCashierCallback
{
  l(k paramk)
  {
  }

  public final void onInstallFailed()
  {
    this.a.a.m();
    this.a.a.toast("设备认证失败", 0);
  }

  public final void onPayFailed(int paramInt, String paramString)
  {
    SendSoundViewActivity.h(this.a.a);
    this.a.a.m();
    this.a.a.toast("设备认证失败", 0);
  }

  public final void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    SendSoundViewActivity.i(this.a.a);
    this.a.a.m();
    this.a.a.toast("设备认证成功", 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.l
 * JD-Core Version:    0.6.2
 */