package com.alipay.mobileapp.biz.rpc.smscode;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileapp.biz.rpc.smscode.vo.VerifySmsAndDeviceReq;
import com.alipay.mobileapp.biz.rpc.smscode.vo.VerifySmsAndDeviceRes;

public abstract interface SmsCodeManageService
{
  @OperationType("alipay.client.mobileapp.sendCheckCode")
  public abstract SmsCodeRes sendCheckCode(String paramString);

  @OperationType("alipay.client.mobileapp.verifyCheckCode")
  public abstract SmsCodeRes verifyCheckCode(String paramString1, String paramString2, String paramString3, String paramString4);

  @OperationType("alipay.client.mobileapp.verifySmsAndDevice")
  public abstract VerifySmsAndDeviceRes verifySmsAndDevice(VerifySmsAndDeviceReq paramVerifySmsAndDeviceReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.smscode.SmsCodeManageService
 * JD-Core Version:    0.6.2
 */