package com.alipay.publiccore.client.model;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public class OfficialTypeInfo extends PublicResult
{
  private String actionCode;
  private String avatar;
  private String categoryDesc;
  private String desc;
  private String name;
  private String officialTypeId;
  private String secondOfficialType;

  public String getActionCode()
  {
    return this.actionCode;
  }

  public String getAvatar()
  {
    return this.avatar;
  }

  public String getCategoryDesc()
  {
    return this.categoryDesc;
  }

  public String getDesc()
  {
    return this.desc;
  }

  public String getName()
  {
    return this.name;
  }

  public String getOfficialTypeId()
  {
    return this.officialTypeId;
  }

  public String getSecondOfficialType()
  {
    return this.secondOfficialType;
  }

  public void setActionCode(String paramString)
  {
    this.actionCode = paramString;
  }

  public void setAvatar(String paramString)
  {
    this.avatar = paramString;
  }

  public void setCategoryDesc(String paramString)
  {
    this.categoryDesc = paramString;
  }

  public void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }

  public void setOfficialTypeId(String paramString)
  {
    this.officialTypeId = paramString;
  }

  public void setSecondOfficialType(String paramString)
  {
    this.secondOfficialType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.model.OfficialTypeInfo
 * JD-Core Version:    0.6.2
 */