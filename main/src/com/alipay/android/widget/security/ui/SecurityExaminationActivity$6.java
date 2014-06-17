package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.common.SchemeService;

class SecurityExaminationActivity$6
  implements View.OnClickListener
{
  SecurityExaminationActivity$6(SecurityExaminationActivity paramSecurityExaminationActivity)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      SecurityExaminationActivity.a(this.a, (SchemeService)SecurityExaminationActivity.i(this.a).getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
      SecurityExaminationActivity localSecurityExaminationActivity = this.a;
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.CLICKED;
      String[] arrayOfString = new String[5];
      arrayOfString[0] = "-";
      arrayOfString[1] = "-";
      arrayOfString[2] = "-";
      arrayOfString[3] = "-";
      arrayOfString[4] = SecurityExaminationActivity.b(this.a).getLastTagId();
      AlipayLogAgent.writeLog(localSecurityExaminationActivity, localBehaviourIdEnum, "-", "-", "20000043", "-", "-", "securityCheckUpIndex", "setHead", "-", "u", "c", arrayOfString);
      if (!SecurityExaminationActivity.j(this.a))
      {
        this.a.b("com.alipay.mobile.android.main.avatar.action.changed");
        SecurityExaminationActivity.k(this.a);
      }
      SecurityExaminationActivity.m(this.a).getMicroApplicationContext().startApp(SecurityExaminationActivity.l(this.a).getAppId(), "20000031", null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder("{[info=doPortraitSet],[msg=").append(localAppLoadException.getMessage()).append("]}").toString();
      this.a.a(localAppLoadException.getMessage());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.6
 * JD-Core Version:    0.6.2
 */