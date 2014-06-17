package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class QueryReceiverInfoReq extends BaseReqVO
{
  public String userAccount;

  public String getUserAccount()
  {
    return this.userAccount;
  }

  public void setUserAccount(String paramString)
  {
    this.userAccount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryReceiverInfoReq
 * JD-Core Version:    0.6.2
 */