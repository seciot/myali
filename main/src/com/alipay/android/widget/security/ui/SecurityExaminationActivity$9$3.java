package com.alipay.android.widget.security.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;

class SecurityExaminationActivity$9$3
  implements PhoneCashierCallback
{
  SecurityExaminationActivity$9$3(SecurityExaminationActivity.9 param9)
  {
  }

  public void onInstallFailed()
  {
  }

  public void onPayFailed(int paramInt, String paramString)
  {
    this.a.a.alert(this.a.a.getResources().getString(R.string.ca), this.a.a.getResources().getString(R.string.bR), this.a.a.getResources().getString(R.string.bi), new SecurityExaminationActivity.9.3.1(this), null, null);
  }

  public void onPaySuccess(PhoneCashierPaymentResult paramPhoneCashierPaymentResult)
  {
    this.a.a.e();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.9.3
 * JD-Core Version:    0.6.2
 */