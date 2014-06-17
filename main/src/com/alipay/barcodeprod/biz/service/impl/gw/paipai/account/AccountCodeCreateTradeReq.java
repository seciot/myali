package com.alipay.barcodeprod.biz.service.impl.gw.paipai.account;

import com.alipay.barcodeprod.common.domain.result.ToString;
import java.util.Map;

public class AccountCodeCreateTradeReq extends ToString
{
  public String accountCode;
  public String payAmount;
  public Map<String, String> productContext;

  public String getAccountCode()
  {
    return this.accountCode;
  }

  public String getPayAmount()
  {
    return this.payAmount;
  }

  public Map<String, String> getProductContext()
  {
    return this.productContext;
  }

  public void setAccountCode(String paramString)
  {
    this.accountCode = paramString;
  }

  public void setPayAmount(String paramString)
  {
    this.payAmount = paramString;
  }

  public void setProductContext(Map<String, String> paramMap)
  {
    this.productContext = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.barcodeprod.biz.service.impl.gw.paipai.account.AccountCodeCreateTradeReq
 * JD-Core Version:    0.6.2
 */