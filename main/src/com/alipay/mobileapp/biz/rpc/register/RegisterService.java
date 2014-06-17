package com.alipay.mobileapp.biz.rpc.register;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.register.vo.RegisterPcToMobileReq;
import com.alipay.mobileapp.biz.rpc.register.vo.RegisterPcToMobileRes;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeReq;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeRes;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdReq;
import com.alipay.mobileapp.biz.rpc.register.vo.SetMobilePayPwdRes;
import com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckReq;
import com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckRes;

public abstract interface RegisterService
{
  @OperationType("alipay.client.register.getMemerProdSyncStatus")
  public abstract RegisterPcToMobileRes getMemerProdSyncStatus(RegisterPcToMobileReq paramRegisterPcToMobileReq);

  @OperationType("alipay.client.register.sendSmsCheckCode")
  public abstract SendSmsCodeRes sendSmsRegistCode(SendSmsCodeReq paramSendSmsCodeReq);

  @OperationType("alipay.client.register.setMobilePayPwd")
  public abstract SetMobilePayPwdRes setMobilePayPwd(SetMobilePayPwdReq paramSetMobilePayPwdReq);

  @OperationType("alipay.client.register.verifyCheckCode")
  public abstract VerifyCheckRes verifyRegistCode(VerifyCheckReq paramVerifyCheckReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.register.RegisterService
 * JD-Core Version:    0.6.2
 */