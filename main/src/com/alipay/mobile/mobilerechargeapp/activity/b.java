package com.alipay.mobile.mobilerechargeapp.activity;

import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.mobilerechargeapp.utils.Validator;

final class b
  implements Runnable
{
  b(BalancesVerifySmsActivity paramBalancesVerifySmsActivity)
  {
  }

  public final void run()
  {
    Validator.b(this.a, BalancesVerifySmsActivity.a(this.a).getEtContent());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.b
 * JD-Core Version:    0.6.2
 */