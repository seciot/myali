package com.alipay.mobilegw.biz.shared.processer.register;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.common.service.facade.register.model.CommonRes;
import com.alipay.mobileapp.common.service.facade.register.model.GetSmsInMobileNoRes;
import com.alipay.mobileapp.common.service.facade.register.model.GetSmsInNoRes;
import com.alipay.mobilegw.biz.shared.processer.register.getSmsInMobileNo.GetSmsInMobileNoReq;
import com.alipay.mobilegw.biz.shared.processer.register.getSmsInNo.GetSmsInNoReq;
import com.alipay.mobilegw.biz.shared.processer.register.smsOut.SendSmsCheckCodeReq;
import com.alipay.mobilegw.biz.shared.processer.register.smsOut.VerifySmsCheckCodeReq;

public abstract interface UserRegisterService
{
  @OperationType("alipay.user.register.getSmsInMobileNo")
  public abstract GetSmsInMobileNoRes getSmsInMobileNo(GetSmsInMobileNoReq paramGetSmsInMobileNoReq);

  @OperationType("alipay.user.register.getSmsIn")
  public abstract GetSmsInNoRes getSmsInNo(GetSmsInNoReq paramGetSmsInNoReq);

  @OperationType("alipay.user.register")
  public abstract CommonRes register(UserRegisterReq paramUserRegisterReq);

  @OperationType("alipay.user.register.sendSmsCheckCode")
  public abstract CommonRes sendSmsCheckCode(SendSmsCheckCodeReq paramSendSmsCheckCodeReq);

  @OperationType("alipay.user.register.verifySmsCheckCode")
  public abstract CommonRes verifyCheckCode(VerifySmsCheckCodeReq paramVerifySmsCheckCodeReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilegw.biz.shared.processer.register.UserRegisterService
 * JD-Core Version:    0.6.2
 */