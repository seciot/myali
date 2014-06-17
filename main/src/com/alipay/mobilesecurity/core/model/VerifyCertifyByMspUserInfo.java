package com.alipay.mobilesecurity.core.model;

public class VerifyCertifyByMspUserInfo
{
  public boolean certified;
  public String code;
  public String headImgUrl;
  public String logonId;

  public String getCode()
  {
    return this.code;
  }

  public String getHeadImgUrl()
  {
    return this.headImgUrl;
  }

  public String getLogonId()
  {
    return this.logonId;
  }

  public boolean isCertified()
  {
    return this.certified;
  }

  public void setCertified(boolean paramBoolean)
  {
    this.certified = paramBoolean;
  }

  public void setCode(String paramString)
  {
    this.code = paramString;
  }

  public void setHeadImgUrl(String paramString)
  {
    this.headImgUrl = paramString;
  }

  public void setLogonId(String paramString)
  {
    this.logonId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.VerifyCertifyByMspUserInfo
 * JD-Core Version:    0.6.2
 */