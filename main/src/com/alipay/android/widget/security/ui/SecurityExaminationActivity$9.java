package com.alipay.android.widget.security.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;

class SecurityExaminationActivity$9
  implements View.OnClickListener
{
  SecurityExaminationActivity$9(SecurityExaminationActivity paramSecurityExaminationActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (!SecurityExaminationActivity.u(this.a))
    {
      SecurityExaminationActivity.a(this.a, (SchemeService)SecurityExaminationActivity.v(this.a).getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
      SecurityExaminationActivity localSecurityExaminationActivity2 = this.a;
      BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.CLICKED;
      String[] arrayOfString2 = new String[5];
      arrayOfString2[0] = "-";
      arrayOfString2[1] = "-";
      arrayOfString2[2] = "-";
      arrayOfString2[3] = "-";
      arrayOfString2[4] = SecurityExaminationActivity.b(this.a).getLastTagId();
      AlipayLogAgent.writeLog(localSecurityExaminationActivity2, localBehaviourIdEnum2, "-", "-", "20000043", "-", "bindingMobileBox", "securityCheckUpIndex", "checkUp", "-", "u", "c", arrayOfString2);
      this.a.alert(null, this.a.getResources().getString(R.string.cA), this.a.getResources().getString(R.string.aF), new SecurityExaminationActivity.9.1(this), this.a.getResources().getString(R.string.aI), new SecurityExaminationActivity.9.2(this));
      return;
    }
    SecurityExaminationActivity.a(this.a, (SchemeService)SecurityExaminationActivity.x(this.a).getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
    SecurityExaminationActivity localSecurityExaminationActivity1 = this.a;
    BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.CLICKED;
    String[] arrayOfString1 = new String[5];
    arrayOfString1[0] = "-";
    arrayOfString1[1] = "-";
    arrayOfString1[2] = "-";
    arrayOfString1[3] = "-";
    arrayOfString1[4] = SecurityExaminationActivity.b(this.a).getLastTagId();
    AlipayLogAgent.writeLog(localSecurityExaminationActivity1, localBehaviourIdEnum1, "-", "-", "20000043", "-", "checkDeviceView", "securityCheckUpIndex", "checkUp", "-", "u", "c", arrayOfString1);
    PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
    localPhoneCashierOrder.setBizType("prepay_initial");
    localPhoneCashierOrder.setBizSubType("");
    localPhoneCashierOrder.setOrderNo("");
    ((PhoneCashierServcie)SecurityExaminationActivity.y(this.a).getMicroApplicationContext().getExtServiceByInterface(PhoneCashierServcie.class.getName())).bootToCertification(localPhoneCashierOrder, new SecurityExaminationActivity.9.3(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.9
 * JD-Core Version:    0.6.2
 */