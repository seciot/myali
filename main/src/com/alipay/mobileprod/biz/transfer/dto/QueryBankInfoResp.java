package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class QueryBankInfoResp extends BaseRespVO
{
  public String bankName;
  public String bankNotice;
  public String bankShortName;
  public String serivceFlag;

  public String getBankName()
  {
    return this.bankName;
  }

  public String getBankNotice()
  {
    return this.bankNotice;
  }

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setBankNotice(String paramString)
  {
    this.bankNotice = paramString;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryBankInfoResp
 * JD-Core Version:    0.6.2
 */