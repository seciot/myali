package com.alipay.publiccore.core.model;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;
import java.util.Date;

public class ThirdPartyAccount extends ToString
  implements Serializable
{
  public String agreementId;
  public Date authTime;
  public String displayName;
  public String extValue;
  public String last4CardNo;
  public String memoName;
  public String publicId;
  public String realName;
  public String showName;
  public String showNameDescribe;
  public String thirdAccountId;
  public String userId;

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public Date getAuthTime()
  {
    return this.authTime;
  }

  public String getDisplayName()
  {
    return this.displayName;
  }

  public String getLast4CardNo()
  {
    return this.last4CardNo;
  }

  public String getMemoName()
  {
    return this.memoName;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getRealName()
  {
    return this.realName;
  }

  public String getThirdAccountId()
  {
    return this.thirdAccountId;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setAuthTime(Date paramDate)
  {
    this.authTime = paramDate;
  }

  public void setDisplayName(String paramString)
  {
    this.displayName = paramString;
  }

  public void setLast4CardNo(String paramString)
  {
    this.last4CardNo = paramString;
  }

  public void setMemoName(String paramString)
  {
    this.memoName = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setRealName(String paramString)
  {
    this.realName = paramString;
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
 * Qualified Name:     com.alipay.publiccore.core.model.ThirdPartyAccount
 * JD-Core Version:    0.6.2
 */