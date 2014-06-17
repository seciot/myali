package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.common.SchemeService;

class SecurityExaminationActivity$7
  implements View.OnClickListener
{
  SecurityExaminationActivity$7(SecurityExaminationActivity paramSecurityExaminationActivity)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      SecurityExaminationActivity.a(this.a, (SchemeService)SecurityExaminationActivity.n(this.a).getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
      SecurityExaminationActivity localSecurityExaminationActivity = this.a;
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[5];
      arrayOfString[0] = "-";
      arrayOfString[1] = "-";
      arrayOfString[2] = "-";
      arrayOfString[3] = "-";
      arrayOfString[4] = SecurityExaminationActivity.b(this.a).getLastTagId();
      AlipayLogAgent.writeLog(localSecurityExaminationActivity, localBehaviourIdEnum, "-", "-", "20000043", "-", "-", "securityCheckUpIndex", "setGesture", "-", "u", "c", arrayOfString);
      SecurityExaminationActivity.p(this.a).getMicroApplicationContext().startApp(SecurityExaminationActivity.o(this.a).getAppId(), "20000028", null);
      SecurityExaminationActivity.q(this.a);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=doGestureSet],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
      this.a.a(localAppLoadException.getMessage());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.7
 * JD-Core Version:    0.6.2
 */