package com.alipay.livetradeprod.core.model.rpc;

import com.alipay.livetradeprod.core.model.base.SoundWaveBaseRes;
import java.io.Serializable;

public class SoundWavePayRes extends SoundWaveBaseRes
  implements Serializable
{
  public String attachAction;
  public String bizSubType;
  public String dynamicId;
  public boolean isBasedOtp = false;
  public boolean isOtpVerifySuccess = false;
  public String payType;
  public String promoUrl;
  public String realAmount;
  public String tradeNo;

  public String toString()
  {
    return "SoundWavePayRes [dynamicId=" + this.dynamicId + ", tradeNo=" + this.tradeNo + ", bizSubType=" + this.bizSubType + ", payType=" + this.payType + ", attachAction=" + this.attachAction + ", isBasedOtp=" + this.isBasedOtp + ", isOtpVerifySuccess=" + this.isOtpVerifySuccess + ", actionType=" + this.actionType + ", success=" + this.success + ", resultCode=" + this.resultCode + ", resultDes=" + this.resultDes + ", queryOrNo=" + this.queryOrNo + ", promoUrl=" + this.promoUrl + ", realAmount=" + this.realAmount + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes
 * JD-Core Version:    0.6.2
 */