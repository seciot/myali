package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.common.service.model.req.ValidatePasswordRequest;
import com.alipay.mobilesecurity.common.service.model.resp.ValidatePasswordResult;
import com.alipay.mobilesecurity.core.model.login.ShowTiaoGuoBtnReq;
import com.alipay.mobilesecurity.core.model.login.ShowTiaoGuoBtnRes;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyModifyPwdResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.ApplyPwdModificationRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckSmsCodeForResetPwdRequst;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserAccountRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.CheckUserCertRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.CloseSimplePwdReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.FoundPasswordResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.OpenSimplePwdReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.ResetPasswordRequest;
import com.alipay.mobilesecurity.core.model.mainpage.password.SimplePwdPreCheckReq;
import com.alipay.mobilesecurity.core.model.mainpage.password.SimplePwdPreCheckResp;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifySmsCodeRequest;

public abstract interface PasswordManagerFacade
{
  @OperationType("alipay.mobile.security.password.applyPwdModification")
  public abstract ApplyModifyPwdResult applyPwdModification(ApplyPwdModificationRequest paramApplyPwdModificationRequest);

  @OperationType("alipay.mobile.security.password.checkIdentification")
  public abstract MobileSecurityResult checkIdentification(CheckUserCertRequest paramCheckUserCertRequest);

  @OperationType("alipay.mobile.security.password.checkSmsCodeForResetPwd")
  public abstract MobileSecurityResult checkSmsCodeForResetPwd(CheckSmsCodeForResetPwdRequst paramCheckSmsCodeForResetPwdRequst);

  @OperationType("alipay.mobile.security.password.checkUserAccountAndSendSms")
  public abstract ApplyModifyPwdResult checkUserAccountAndSendSms(CheckUserAccountRequest paramCheckUserAccountRequest);

  @OperationType("alipay.mobile.security.password.checkUserCert")
  public abstract MobileSecurityResult checkUserCert(CheckUserCertRequest paramCheckUserCertRequest);

  @OperationType("alipay.mobile.security.password.checkUserCertAndSendSMS")
  public abstract FoundPasswordResult checkUserCertAndSendSMS(CheckUserCertRequest paramCheckUserCertRequest);

  @OperationType("alipay.mobile.security.password.checkUserInfo")
  public abstract FoundPasswordResult checkUserInfo(String paramString);

  @OperationType("alipay.mobile.security.password.closeSimplePwd")
  public abstract MobileSecurityResult closeSimplePwd(CloseSimplePwdReq paramCloseSimplePwdReq);

  @OperationType("alipay.mobile.security.password.showTiaoGuoBtn")
  public abstract ShowTiaoGuoBtnRes getShowTiaoGuoBtn(ShowTiaoGuoBtnReq paramShowTiaoGuoBtnReq);

  @OperationType("alipay.mobile.security.password.openSimplePwd")
  public abstract MobileSecurityResult openSimplePwd(OpenSimplePwdReq paramOpenSimplePwdReq);

  @OperationType("alipay.mobile.security.password.preOpenSimplePwd")
  public abstract SimplePwdPreCheckResp preOpenSimplePwd(SimplePwdPreCheckReq paramSimplePwdPreCheckReq);

  @OperationType("alipay.mobile.security.password.querySimplePwdStatus")
  public abstract QuerySimplePwdStatusResp querySimplePwdStatus(QuerySimplePwdStatusReq paramQuerySimplePwdStatusReq);

  @OperationType("alipay.mobile.security.password.resetPassword")
  public abstract MobileSecurityResult resetPassword(ResetPasswordRequest paramResetPasswordRequest);

  @OperationType("alipay.mobile.security.password.resetPasswordForFoundLogin")
  public abstract MobileSecurityResult resetPasswordForFoundLogin(ResetPasswordRequest paramResetPasswordRequest);

  @OperationType("alipay.mobile.security.password.validatePassword")
  public abstract ValidatePasswordResult validatePassword(ValidatePasswordRequest paramValidatePasswordRequest);

  @OperationType("alipay.mobile.security.password.verifySmsCode")
  public abstract ApplyModifyPwdResult verifySmsCode(VerifySmsCodeRequest paramVerifySmsCodeRequest);

  @OperationType("alipay.mobile.security.password.verifySmsCodeForFoundLogin")
  public abstract ApplyModifyPwdResult verifySmsCodeForFoundLogin(VerifySmsCodeRequest paramVerifySmsCodeRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.PasswordManagerFacade
 * JD-Core Version:    0.6.2
 */