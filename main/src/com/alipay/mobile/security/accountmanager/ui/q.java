package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.alibaba.fastjson.JSON;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyRes;

final class q extends Handler
{
  q(BindPhoneActivity paramBindPhoneActivity)
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
      MobileBindQueryRes localMobileBindQueryRes2 = (MobileBindQueryRes)JSON.parseObject(localBundle.get("rs").toString(), MobileBindQueryRes.class);
      BindPhoneActivity.a(this.a, localMobileBindQueryRes2);
      return;
    case 1:
      MobileBindVerifyRes localMobileBindVerifyRes2 = (MobileBindVerifyRes)JSON.parseObject(localBundle.get("rs").toString(), MobileBindVerifyRes.class);
      BindPhoneActivity.a(this.a, localMobileBindVerifyRes2);
      return;
    case 4:
      this.a.dismissProgressDialog();
      MobileBindQueryRes localMobileBindQueryRes1 = (MobileBindQueryRes)JSON.parseObject(localBundle.get("rs").toString(), MobileBindQueryRes.class);
      BindPhoneActivity.b(this.a, localMobileBindQueryRes1);
      return;
    case 2:
      this.a.dismissProgressDialog();
      MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)JSON.parseObject(localBundle.get("rs").toString(), MobileSecurityResult.class);
      BindPhoneActivity.a(this.a, localMobileSecurityResult);
      return;
    case 3:
    }
    this.a.dismissProgressDialog();
    MobileBindVerifyRes localMobileBindVerifyRes1 = (MobileBindVerifyRes)JSON.parseObject(localBundle.get("rs").toString(), MobileBindVerifyRes.class);
    BindPhoneActivity.b(this.a, localMobileBindVerifyRes1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.q
 * JD-Core Version:    0.6.2
 */