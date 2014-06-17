package com.alipay.aggrbillinfo.biz.dataservice.email;

import com.alipay.aggrbillinfo.biz.mgnt.email.info.UserEmailInfoResult;
import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import com.alipay.aggrbillinfo.biz.mgnt.user.info.AuthEmailAccountResult;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface EmailAccountRegisterService
{
  @OperationType("alipay.mobile.aggrbillinfo.emailRegister.authEmailAccount")
  public abstract AuthEmailAccountResult authEmailAccount(String paramString1, String paramString2);

  @OperationType("alipay.mobile.aggrbillinfo.emailRegister.cancelTask")
  public abstract Result cancelTask(String paramString);

  @OperationType("alipay.mobile.aggrbillinfo.emailRegister.deleteEmailAccount")
  public abstract Result deleteEmailAccount(String paramString);

  @OperationType("alipay.mobile.aggrbillinfo.emailRegister.findUserAllRegistedEmails")
  public abstract UserEmailInfoResult findUserAllRegistedEmails();

  @OperationType("alipay.mobile.aggrbillinfo.emailRegister.reloadBankInfosByEmail")
  public abstract AuthEmailAccountResult reloadBankInfosByEmail(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.dataservice.email.EmailAccountRegisterService
 * JD-Core Version:    0.6.2
 */