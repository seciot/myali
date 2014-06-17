package com.alipay.mobile.framework.service.ext.phonecashier;

public abstract interface PhoneCashierCallback
{
  public abstract void onInstallFailed();

  public abstract void onPayFailed(int paramInt, String paramString);

  public abstract void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback
 * JD-Core Version:    0.6.2
 */