package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.alibaba.fastjson.JSON;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;

final class ce extends Handler
{
  ce(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
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
      MobileBindQueryRes localMobileBindQueryRes = (MobileBindQueryRes)JSON.parseObject(localBundle.get("rs").toString(), MobileBindQueryRes.class);
      ModifyLoginPwdActivity.a(this.a, localMobileBindQueryRes);
      return;
    case 1:
      this.a.dismissProgressDialog();
      ApplyModifyPwdResult localApplyModifyPwdResult2 = (ApplyModifyPwdResult)JSON.parseObject(localBundle.get("rs").toString(), ApplyModifyPwdResult.class);
      ModifyLoginPwdActivity.a(this.a, localApplyModifyPwdResult2);
      return;
    case 2:
    }
    this.a.dismissProgressDialog();
    ApplyModifyPwdResult localApplyModifyPwdResult1 = (ApplyModifyPwdResult)JSON.parseObject(localBundle.get("rs").toString(), ApplyModifyPwdResult.class);
    ModifyLoginPwdActivity.b(this.a, localApplyModifyPwdResult1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ce
 * JD-Core Version:    0.6.2
 */