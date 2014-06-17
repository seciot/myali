package com.alipay.publiccore.client.model;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class ThirdPartyAccountInfo extends ToString
{
  private String agreementId;
  private String displayName;
  private String memoName;
  private String realName;
  private String thirdAccountId;

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public String getDisplayName()
  {
    return this.displayName;
  }

  public String getMemoName()
  {
    return this.memoName;
  }

  public String getRealName()
  {
    return this.realName;
  }

  public String getThirdAccountId()
  {
    return this.thirdAccountId;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setDisplayName(String paramString)
  {
    this.displayName = paramString;
  }

  public void setMemoName(String paramString)
  {
    this.memoName = paramString;
  }

  public void setRealName(String paramString)
  {
    this.realName = paramString;
  }

  public void setThirdAccountId(String paramString)
  {
    this.thirdAccountId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.model.ThirdPartyAccountInfo
 * JD-Core Version:    0.6.2
 */