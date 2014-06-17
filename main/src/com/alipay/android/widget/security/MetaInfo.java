package com.alipay.android.widget.security;

import com.alipay.mobile.framework.BaseMetaInfo;
import com.alipay.mobile.framework.MicroDescription;
import com.alipay.mobile.framework.app.ApplicationDescription;
import java.util.List;

public class MetaInfo extends BaseMetaInfo
{
  public MetaInfo()
  {
    ApplicationDescription localApplicationDescription1 = new ApplicationDescription();
    localApplicationDescription1.setName("SecurityWidgetGroupApp").setClassName("com.alipay.android.security.app.SecurityWidgetGroupApp").setAppId("20000113");
    this.applications.add(localApplicationDescription1);
    ApplicationDescription localApplicationDescription2 = new ApplicationDescription();
    localApplicationDescription2.setName("RobotXiaoBaoApp").setClassName("com.alipay.android.widget.security.app.RobotXiaoBaoApp").setAppId("20000011");
    this.applications.add(localApplicationDescription2);
    ApplicationDescription localApplicationDescription3 = new ApplicationDescription();
    localApplicationDescription3.setName("PushSettingApp").setClassName("com.alipay.android.widget.security.app.PushSettingApp").setAppId("20000023");
    this.applications.add(localApplicationDescription3);
    ApplicationDescription localApplicationDescription4 = new ApplicationDescription();
    localApplicationDescription4.setName("PasswordManagerApp").setClassName("com.alipay.android.widget.security.app.PasswordManagerApp").setAppId("20000028");
    this.applications.add(localApplicationDescription4);
    ApplicationDescription localApplicationDescription5 = new ApplicationDescription();
    localApplicationDescription5.setName("SecurityGradeApp").setClassName("com.alipay.android.widget.security.app.SecurityGradeApp").setAppId("20000043");
    this.applications.add(localApplicationDescription5);
    ApplicationDescription localApplicationDescription6 = new ApplicationDescription();
    localApplicationDescription6.setName("SecurityCertified").setClassName("com.alipay.android.widget.security.app.SecurityCertifiedApp").setAppId("20000038");
    this.applications.add(localApplicationDescription6);
    ApplicationDescription localApplicationDescription7 = new ApplicationDescription();
    localApplicationDescription7.setName("SecurityOperateRecordsApp").setClassName("com.alipay.android.widget.security.app.SecurityOperateRecordsApp").setAppId("20000026");
    this.applications.add(localApplicationDescription7);
    ApplicationDescription localApplicationDescription8 = new ApplicationDescription();
    localApplicationDescription8.setName("AccountSecurityApp").setClassName("com.alipay.android.widget.security.app.AccountSecurityApp").setAppId("20000057");
    this.applications.add(localApplicationDescription8);
    ApplicationDescription localApplicationDescription9 = new ApplicationDescription();
    localApplicationDescription9.setName("independentPwdApp").setClassName("com.alipay.android.widget.security.app.IndependentPwdApp").setAppId("20000051");
    this.applications.add(localApplicationDescription9);
    ApplicationDescription localApplicationDescription10 = new ApplicationDescription();
    localApplicationDescription10.setName("modifySimplePwdApp").setClassName("com.alipay.android.widget.security.app.ModifySimplePwdApp").setAppId("20000058");
    this.applications.add(localApplicationDescription10);
    ApplicationDescription localApplicationDescription11 = new ApplicationDescription();
    localApplicationDescription11.setName("forgotMobilePwdApp").setClassName("com.alipay.android.widget.security.app.ForgotMobilePwdApp").setAppId("20000060");
    this.applications.add(localApplicationDescription11);
    ApplicationDescription localApplicationDescription12 = new ApplicationDescription();
    localApplicationDescription12.setName("reportLossApp").setClassName("com.alipay.android.widget.security.app.ReportLossApp").setAppId("20000068");
    this.applications.add(localApplicationDescription12);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.MetaInfo
 * JD-Core Version:    0.6.2
 */