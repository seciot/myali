package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class QueryReceiverInfoResp extends BaseRespVO
{
  public String headUrl;
  public String limitAmount;
  public String userAccount;
  public String userID;
  public String userName;

  public String getUserAccount()
  {
    return this.userAccount;
  }

  public String getUserName()
  {
    return this.userName;
  }

  public void setUserAccount(String paramString)
  {
    this.userAccount = paramString;
  }

  public void setUserName(String paramString)
  {
    this.userName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryReceiverInfoResp
 * JD-Core Version:    0.6.2
 */