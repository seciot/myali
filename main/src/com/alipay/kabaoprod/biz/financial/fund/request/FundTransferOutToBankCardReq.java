package com.alipay.kabaoprod.biz.financial.fund.request;

import com.alipay.kabaoprod.biz.financial.fund.model.BankCardForTransferOut;
import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class FundTransferOutToBankCardReq extends ToString
  implements Serializable
{
  public BankCardForTransferOut bankCardForTransferOut;
  public String fundCode;
  public String password;
  public String passwordType;
  public String tid;
  public String transferAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutToBankCardReq
 * JD-Core Version:    0.6.2
 */