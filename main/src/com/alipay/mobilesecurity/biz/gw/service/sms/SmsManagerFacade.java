package com.alipay.mobilesecurity.biz.gw.service.sms;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.SendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeResp;

public abstract interface SmsManagerFacade
{
  @OperationType("alipay.mobile.security.sms.sendSms")
  public abstract SendSmsResp sendSms(SendSmsReq paramSendSmsReq);

  @OperationType("alipay.mobile.security.sms.verifyAuthCode")
  public abstract VerifyAuthCodeResp verifyAuthCode(VerifyAuthCodeReq paramVerifyAuthCodeReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.sms.SmsManagerFacade
 * JD-Core Version:    0.6.2
 */