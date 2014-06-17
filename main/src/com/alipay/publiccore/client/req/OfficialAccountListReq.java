package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.request.PagingReq;

public class OfficialAccountListReq extends PagingReq
{
  public String fuzzyName;
  private String officialType;
  private String secondOfficialType;

  public String getFuzzyName()
  {
    return this.fuzzyName;
  }

  public String getOfficialType()
  {
    return this.officialType;
  }

  public String getSecondOfficialType()
  {
    return this.secondOfficialType;
  }

  public void setFuzzyName(String paramString)
  {
    this.fuzzyName = paramString;
  }

  public void setOfficialType(String paramString)
  {
    this.officialType = paramString;
  }

  public void setSecondOfficialType(String paramString)
  {
    this.secondOfficialType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.OfficialAccountListReq
 * JD-Core Version:    0.6.2
 */