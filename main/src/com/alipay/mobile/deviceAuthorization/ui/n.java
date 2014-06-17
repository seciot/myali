package com.alipay.mobile.deviceAuthorization.ui;

import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;
import java.util.List;

final class n
  implements PhoneCashierCallback
{
  n(BaseAuthActivity paramBaseAuthActivity, String paramString1, String paramString2, List paramList)
  {
  }

  public final void onInstallFailed()
  {
  }

  public final void onPayFailed(int paramInt, String paramString)
  {
  }

  public final void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    BaseAuthActivity.b localb = new BaseAuthActivity.b(this.d, this.a);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = this.a;
    arrayOfObject[2] = this.c;
    localb.execute(arrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.n
 * JD-Core Version:    0.6.2
 */