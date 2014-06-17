package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class UploadVoiceReq extends BaseReqVO
{
  public String bizNo;
  public String format;
  public String voiceInfo;

  public String getBizNo()
  {
    return this.bizNo;
  }

  public String getFormat()
  {
    return this.format;
  }

  public String getVoiceInfo()
  {
    return this.voiceInfo;
  }

  public void setBizNo(String paramString)
  {
    this.bizNo = paramString;
  }

  public void setFormat(String paramString)
  {
    this.format = paramString;
  }

  public void setVoiceInfo(String paramString)
  {
    this.voiceInfo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.UploadVoiceReq
 * JD-Core Version:    0.6.2
 */