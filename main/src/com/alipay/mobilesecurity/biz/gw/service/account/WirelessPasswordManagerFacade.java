package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.common.service.model.req.ValidatePasswordRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.IsWirelessUserReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.OpenSimplePwdReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.PreCheckAndSendSmsResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsAndUserStatusResp;

public abstract interface WirelessPasswordManagerFacade
{
  @OperationType("alipay.mobile.security.wirelesspassword.isWirelessUser")
  public abstract MobileSecurityResult isWirelessUser(IsWirelessUserReq paramIsWirelessUserReq);

  @OperationType("alipay.mobile.security.wirelesspassword.openSimplePwd")
  public abstract MobileSecurityResult openSimplePwd(OpenSimplePwdReq paramOpenSimplePwdReq);

  @OperationType("alipay.mobile.security.wirelesspassword.openSimplePwdNotLogin")
  public abstract MobileSecurityResult openSimplePwdNotLogin(OpenSimplePwdReq paramOpenSimplePwdReq);

  @OperationType("alipay.mobile.security.wirelesspassword.preCheckAndSendSms")
  public abstract PreCheckAndSendSmsResp preCheckAndSendSms(PreCheckAndSendSmsReq paramPreCheckAndSendSmsReq);

  @OperationType("alipay.mobile.security.wirelesspassword.preCheckAndSendSmsNotLogin")
  public abstract PreCheckAndSendSmsResp preCheckAndSendSmsNotLogin(PreCheckAndSendSmsReq paramPreCheckAndSendSmsReq);

  @OperationType("alipay.mobile.security.wirelesspassword.validateSimplePassword")
  public abstract MobileSecurityResult validateSimplePassword(ValidatePasswordRequest paramValidatePasswordRequest);

  @OperationType("alipay.mobile.security.wirelesspassword.verifySmsAndUserStatus")
  public abstract VerifySmsAndUserStatusResp verifySmsAndUserStatus(VerifySmsAndUserStatusReq paramVerifySmsAndUserStatusReq);

  @OperationType("alipay.mobile.security.wirelesspassword.verifySmsAndUserStatusNotLogin")
  public abstract VerifySmsAndUserStatusResp verifySmsAndUserStatusNotLogin(VerifySmsAndUserStatusReq paramVerifySmsAndUserStatusReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.WirelessPasswordManagerFacade
 * JD-Core Version:    0.6.2
 */