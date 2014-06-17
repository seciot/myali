package com.alipay.mobilebill.biz.shared.contact.model;

import java.util.HashMap;
import java.util.Map;

public class RecordModel
{
  public String bizStateDesc;
  public String consumeFee;
  public String consumeTitle;
  public Map<String, String> extInfo = new HashMap();
  public String gmtCreateDesc;
  public String inOut = "none";
  public String logo;
  public String voiceMemoUrl;

  public String getBizStateDesc()
  {
    return this.bizStateDesc;
  }

  public String getConsumeFee()
  {
    return this.consumeFee;
  }

  public String getConsumeTitle()
  {
    return this.consumeTitle;
  }

  public Map<String, String> getExtInfo()
  {
    return this.extInfo;
  }

  public String getGmtCreateDesc()
  {
    return this.gmtCreateDesc;
  }

  public String getInOut()
  {
    return this.inOut;
  }

  public String getLogo()
  {
    return this.logo;
  }

  public String getVoiceMemoUrl()
  {
    return this.voiceMemoUrl;
  }

  public void setBizStateDesc(String paramString)
  {
    this.bizStateDesc = paramString;
  }

  public void setConsumeFee(String paramString)
  {
    this.consumeFee = paramString;
  }

  public void setConsumeTitle(String paramString)
  {
    this.consumeTitle = paramString;
  }

  public void setExtInfo(Map<String, String> paramMap)
  {
    this.extInfo = paramMap;
  }

  public void setGmtCreateDesc(String paramString)
  {
    this.gmtCreateDesc = paramString;
  }

  public void setInOut(String paramString)
  {
    this.inOut = paramString;
  }

  public void setLogo(String paramString)
  {
    this.logo = paramString;
  }

  public void setVoiceMemoUrl(String paramString)
  {
    this.voiceMemoUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.RecordModel
 * JD-Core Version:    0.6.2
 */