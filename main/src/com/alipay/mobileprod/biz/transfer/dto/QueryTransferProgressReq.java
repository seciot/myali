package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class QueryTransferProgressReq extends BaseReqVO
{
  public String transferNo;

  public String getTransferNo()
  {
    return this.transferNo;
  }

  public void setTransferNo(String paramString)
  {
    this.transferNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryTransferProgressReq
 * JD-Core Version:    0.6.2
 */