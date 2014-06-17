package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class CheckCardBinReq extends BaseReqVO
{
  public String cardNo;

  public String getCardNo()
  {
    return this.cardNo;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CheckCardBinReq
 * JD-Core Version:    0.6.2
 */