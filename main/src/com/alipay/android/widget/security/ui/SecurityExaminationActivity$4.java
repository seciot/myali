package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

class SecurityExaminationActivity$4
  implements View.OnClickListener
{
  SecurityExaminationActivity$4(SecurityExaminationActivity paramSecurityExaminationActivity)
  {
  }

  public void onClick(View paramView)
  {
    SecurityExaminationActivity.v(this.a, (SchemeService)SecurityExaminationActivity.getBundle(this.a).getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
    SecurityExaminationActivity localSecurityExaminationActivity = this.a;
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "-";
    arrayOfString[1] = "-";
    arrayOfString[2] = "-";
    arrayOfString[3] = "-";
    arrayOfString[4] = SecurityExaminationActivity.b(this.a).getLastTagId();
    AlipayLogAgent.writeLog(localSecurityExaminationActivity, localBehaviourIdEnum, "-", "-", "20000043", "-", "bindingMobileView", "securityCheckUpIndex", "bindingMobile", "-", "u", "c", arrayOfString);
    ((BindPhoneService)SecurityExaminationActivity.getBundleByComponentName(this.a).getMicroApplicationContext().getExtServiceByInterface(BindPhoneService.class.getName())).bindPhone(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.4
 * JD-Core Version:    0.6.2
 */