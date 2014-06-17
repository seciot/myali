package com.alipay.publiccore.core.model.account;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class EventOperationReq extends ToString
{
  public String actionParam;
  public String actionType;
  public String agreementId;
  public String appVersion;
  public String publicId;
  public String thirdAccountId;
  public String userId;

  public String getActionParam()
  {
    return this.actionParam;
  }

  public String getActionType()
  {
    return this.actionType;
  }

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public String getAppVersion()
  {
    return this.appVersion;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getThirdAccountId()
  {
    return this.thirdAccountId;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setActionParam(String paramString)
  {
    this.actionParam = paramString;
  }

  public void setActionType(String paramString)
  {
    this.actionType = paramString;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setAppVersion(String paramString)
  {
    this.appVersion = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setThirdAccountId(String paramString)
  {
    this.thirdAccountId = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.core.model.account.EventOperationReq
 * JD-Core Version:    0.6.2
 */