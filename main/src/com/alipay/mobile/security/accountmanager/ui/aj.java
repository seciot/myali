package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.alibaba.fastjson.JSON;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusResp;

final class aj extends Handler
{
  aj(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    switch (paramMessage.what)
    {
    case 6:
    default:
      return;
    case 1:
      this.a.dismissProgressDialog();
      ApplyModifyPwdResult localApplyModifyPwdResult2 = (ApplyModifyPwdResult)JSON.parseObject(localBundle.get("rs").toString(), ApplyModifyPwdResult.class);
      ForgotLoginPwdActivity.a(this.a, localApplyModifyPwdResult2);
      return;
    case 5:
      this.a.dismissProgressDialog();
      PreCheckAndSendSmsResp localPreCheckAndSendSmsResp = (PreCheckAndSendSmsResp)JSON.parseObject(localBundle.get("rs").toString(), PreCheckAndSendSmsResp.class);
      ForgotLoginPwdActivity.a(this.a, localPreCheckAndSendSmsResp);
      return;
    case 2:
      this.a.dismissProgressDialog();
      ApplyModifyPwdResult localApplyModifyPwdResult1 = (ApplyModifyPwdResult)JSON.parseObject(localBundle.get("rs").toString(), ApplyModifyPwdResult.class);
      this.a.getBundle(localApplyModifyPwdResult1);
      return;
    case 7:
      this.a.dismissProgressDialog();
      VerifySmsAndUserStatusResp localVerifySmsAndUserStatusResp = (VerifySmsAndUserStatusResp)JSON.parseObject(localBundle.get("rs").toString(), VerifySmsAndUserStatusResp.class);
      this.a.getBundle(localVerifySmsAndUserStatusResp);
      return;
    case 3:
      this.a.dismissProgressDialog();
      MobileSecurityResult localMobileSecurityResult2 = (MobileSecurityResult)JSON.parseObject(localBundle.get("rs").toString(), MobileSecurityResult.class);
      ForgotLoginPwdActivity.a(this.a, localMobileSecurityResult2);
      return;
    case 4:
    }
    this.a.dismissProgressDialog();
    MobileSecurityResult localMobileSecurityResult1 = (MobileSecurityResult)JSON.parseObject(localBundle.get("rs").toString(), MobileSecurityResult.class);
    ForgotLoginPwdActivity.b(this.a, localMobileSecurityResult1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.aj
 * JD-Core Version:    0.6.2
 */