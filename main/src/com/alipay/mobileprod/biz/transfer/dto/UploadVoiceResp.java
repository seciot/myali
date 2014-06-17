package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class UploadVoiceResp extends BaseRespVO
{
  public String bizNo;
  public String voicePath;

  public String getBizNo()
  {
    return this.bizNo;
  }

  public String getVoicePath()
  {
    return this.voicePath;
  }

  public void setBizNo(String paramString)
  {
    this.bizNo = paramString;
  }

  public void setVoicePath(String paramString)
  {
    this.voicePath = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.UploadVoiceResp
 * JD-Core Version:    0.6.2
 */