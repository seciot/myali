package com.alipay.mobile.security.accountmanager.AccountInfo.bean;

import com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult;
import java.io.Serializable;

public class SecurityQrCodeShowResult
  implements Serializable
{
  private static final long serialVersionUID = 7233538275711521110L;
  private SecurityAccountQrCodeInfoResult accountQrCodeInfoResult;
  private byte[] qrCodeImgByteArr;

  public SecurityAccountQrCodeInfoResult getAccountQrCodeInfoResult()
  {
    return this.accountQrCodeInfoResult;
  }

  public byte[] getQrCodeImgByteArr()
  {
    return this.qrCodeImgByteArr;
  }

  public void setAccountQrCodeInfoResult(SecurityAccountQrCodeInfoResult paramSecurityAccountQrCodeInfoResult)
  {
    this.accountQrCodeInfoResult = paramSecurityAccountQrCodeInfoResult;
  }

  public void setQrCodeImgByteArr(byte[] paramArrayOfByte)
  {
    this.qrCodeImgByteArr = paramArrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult
 * JD-Core Version:    0.6.2
 */