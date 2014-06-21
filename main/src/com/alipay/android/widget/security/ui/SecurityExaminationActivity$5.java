package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.common.SchemeService;

class SecurityExaminationActivity$5
  implements View.OnClickListener
{
  SecurityExaminationActivity$5(SecurityExaminationActivity paramSecurityExaminationActivity)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      SecurityExaminationActivity.a(this.a, (SchemeService)SecurityExaminationActivity.d(this.a).getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
      SecurityExaminationActivity localSecurityExaminationActivity = this.a;
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[5];
      arrayOfString[0] = "-";
      arrayOfString[1] = "-";
      arrayOfString[2] = "-";
      arrayOfString[3] = "-";
      arrayOfString[4] = SecurityExaminationActivity.b(this.a).getLastTagId();
      AlipayLogAgent.writeLog(localSecurityExaminationActivity, localBehaviourIdEnum, "-", "-", "20000043", "-", "realNameCheckView", "securityCheckUpIndex", "checkUp", "-", "u", "c", arrayOfString);
      if (!SecurityExaminationActivity.removeBundle(this.a))
      {
        this.a.b("com.alipay.security.namecertified");
        SecurityExaminationActivity.f(this.a);
      }
      SecurityExaminationActivity.h(this.a).getMicroApplicationContext().startApp(SecurityExaminationActivity.g(this.a).getAppId(), "20000038", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=doNameCertified],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
      this.a.getBundle(localAppLoadException.getMessage());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.5
 * JD-Core Version:    0.6.2
 */