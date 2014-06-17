package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class PassInfo extends ToString
{
  public String appInfo;
  public String auxiliaryFields;
  public String backFields;
  public String operations;
  public PassBaseInfo passBaseInfo;
  public String passFrom;
  public String passName;
  public String primaryFields;
  public String remindSupport = "0";
  public String secondaryFields;
  public String shareSuport = "0";
  public String trendFlag;
  public String trendUrl;

  public String getAppInfo()
  {
    return this.appInfo;
  }

  public String getAuxiliaryFields()
  {
    return this.auxiliaryFields;
  }

  public String getBackFields()
  {
    return this.backFields;
  }

  public String getOperations()
  {
    return this.operations;
  }

  public PassBaseInfo getPassBaseInfo()
  {
    return this.passBaseInfo;
  }

  public String getPassFrom()
  {
    return this.passFrom;
  }

  public String getPassName()
  {
    return this.passName;
  }

  public String getPrimaryFields()
  {
    return this.primaryFields;
  }

  public String getRemindSupport()
  {
    return this.remindSupport;
  }

  public String getSecondaryFields()
  {
    return this.secondaryFields;
  }

  public String getShareSuport()
  {
    return this.shareSuport;
  }

  public String getTrendFlag()
  {
    return this.trendFlag;
  }

  public String getTrendUrl()
  {
    return this.trendUrl;
  }

  public void setAppInfo(String paramString)
  {
    this.appInfo = paramString;
  }

  public void setAuxiliaryFields(String paramString)
  {
    this.auxiliaryFields = paramString;
  }

  public void setBackFields(String paramString)
  {
    this.backFields = paramString;
  }

  public void setOperations(String paramString)
  {
    this.operations = paramString;
  }

  public void setPassBaseInfo(PassBaseInfo paramPassBaseInfo)
  {
    this.passBaseInfo = paramPassBaseInfo;
  }

  public void setPassFrom(String paramString)
  {
    this.passFrom = paramString;
  }

  public void setPassName(String paramString)
  {
    this.passName = paramString;
  }

  public void setPrimaryFields(String paramString)
  {
    this.primaryFields = paramString;
  }

  public void setRemindSupport(String paramString)
  {
    this.remindSupport = paramString;
  }

  public void setSecondaryFields(String paramString)
  {
    this.secondaryFields = paramString;
  }

  public void setShareSuport(String paramString)
  {
    this.shareSuport = paramString;
  }

  public void setTrendFlag(String paramString)
  {
    this.trendFlag = paramString;
  }

  public void setTrendUrl(String paramString)
  {
    this.trendUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.PassInfo
 * JD-Core Version:    0.6.2
 */