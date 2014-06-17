package com.alipay.mobilesecurity.biz.gw.service.account.mobilebind;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryUpSmsReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindSmsReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindVerifyRes;

public abstract interface MobileBindManagerFacade
{
  @OperationType("alipay.mobile.security.mobilebind.query")
  public abstract MobileBindQueryRes queryBindMobile(MobileBindQueryReq paramMobileBindQueryReq);

  @OperationType("alipay.mobile.security.mobilebind.queryUpSms")
  public abstract MobileBindQueryRes queryUpSms(MobileBindQueryUpSmsReq paramMobileBindQueryUpSmsReq);

  @OperationType("alipay.mobile.security.mobilebind.sms")
  public abstract MobileSecurityResult sendSms(MobileBindSmsReq paramMobileBindSmsReq);

  @OperationType("alipay.mobile.security.mobilebind.verify.password.authcode")
  public abstract MobileBindVerifyRes verifyPwdAndAuthCode(MobileBindVerifyReq paramMobileBindVerifyReq);

  @OperationType("alipay.mobile.security.mobilebind.verify.password")
  public abstract MobileBindVerifyRes verifyPwdAndResSms(MobileBindVerifyReq paramMobileBindVerifyReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.mobilebind.MobileBindManagerFacade
 * JD-Core Version:    0.6.2
 */