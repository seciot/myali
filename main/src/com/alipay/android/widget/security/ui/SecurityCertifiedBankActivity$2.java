package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.card.ExpressCardService;

class SecurityCertifiedBankActivity$2
  implements View.OnClickListener
{
  SecurityCertifiedBankActivity$2(SecurityCertifiedBankActivity paramSecurityCertifiedBankActivity)
  {
  }

  public void onClick(View paramView)
  {
    ((ExpressCardService)SecurityCertifiedBankActivity.a(this.a).getMicroApplicationContext().getExtServiceByInterface(ExpressCardService.class.getName())).newExpressCard(SecurityCertifiedBankActivity.b(this.a).getAppId(), this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedBankActivity.2
 * JD-Core Version:    0.6.2
 */