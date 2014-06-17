package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class CreditCardInitReqVO extends BaseReqVO
{
  public String bankAndCardBinVersion;
  public int pageNum;
  public int pageSize;

  public String getBankAndCardBinVersion()
  {
    return this.bankAndCardBinVersion;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public void setBankAndCardBinVersion(String paramString)
  {
    this.bankAndCardBinVersion = paramString;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.CreditCardInitReqVO
 * JD-Core Version:    0.6.2
 */