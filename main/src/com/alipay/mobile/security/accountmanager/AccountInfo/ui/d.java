package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

final class d
  implements View.OnClickListener
{
  d(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    ((BindPhoneService)AccountInfoActivity.g(this.a).getMicroApplicationContext().getExtServiceByInterface(BindPhoneService.class.getName())).bindPhone(this.a);
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000070", "-", "bindingMobileView", "accountInfoIndex", "bindingMobile");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.d
 * JD-Core Version:    0.6.2
 */