package com.alipay.kabaoprod.biz.financial.account.request;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class AssetSignReq extends ToString
{
  public String traveLDate;

  public String getTraveLDate()
  {
    return this.traveLDate;
  }

  public void setTraveLDate(String paramString)
  {
    this.traveLDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.request.AssetSignReq
 * JD-Core Version:    0.6.2
 */