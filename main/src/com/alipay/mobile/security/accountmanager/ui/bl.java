package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.alibaba.fastjson.JSON;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.FoundPasswordResult;

final class bl extends Handler
{
  bl(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    switch (paramMessage.what)
    {
    default:
      return;
    case 0:
      this.a.dismissProgressDialog();
      FoundPasswordResult localFoundPasswordResult2 = (FoundPasswordResult)JSON.parseObject(localBundle.get("rs").toString(), FoundPasswordResult.class);
      this.a.a(localFoundPasswordResult2);
      return;
    case 1:
      this.a.dismissProgressDialog();
      FoundPasswordResult localFoundPasswordResult1 = (FoundPasswordResult)JSON.parseObject(localBundle.get("rs").toString(), FoundPasswordResult.class);
      ForgotPayPwdActivity.a(this.a, localFoundPasswordResult1);
      return;
    case 21:
      this.a.dismissProgressDialog();
      MobileSecurityResult localMobileSecurityResult2 = (MobileSecurityResult)JSON.parseObject(localBundle.get("rs").toString(), MobileSecurityResult.class);
      this.a.a(localMobileSecurityResult2);
      return;
    case 22:
      this.a.dismissProgressDialog();
      ApplyModifyPwdResult localApplyModifyPwdResult = (ApplyModifyPwdResult)JSON.parseObject(localBundle.get("rs").toString(), ApplyModifyPwdResult.class);
      ForgotPayPwdActivity.a(this.a, localApplyModifyPwdResult);
      return;
    case 3:
    }
    this.a.dismissProgressDialog();
    MobileSecurityResult localMobileSecurityResult1 = (MobileSecurityResult)JSON.parseObject(localBundle.get("rs").toString(), MobileSecurityResult.class);
    ForgotPayPwdActivity.a(this.a, localMobileSecurityResult1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bl
 * JD-Core Version:    0.6.2
 */