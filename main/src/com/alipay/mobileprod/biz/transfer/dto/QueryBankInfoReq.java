package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class QueryBankInfoReq extends BaseReqVO
{
  public String bankShortName;

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryBankInfoReq
 * JD-Core Version:    0.6.2
 */