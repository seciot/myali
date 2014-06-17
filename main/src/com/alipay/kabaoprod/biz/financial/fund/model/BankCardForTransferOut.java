package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.core.model.model.BaseBankCard;
import java.io.Serializable;
import java.util.List;

public class BankCardForTransferOut extends BaseBankCard
  implements Serializable
{
  public List<ArrivingType> arrivingTypes;
  public String perTimeAmountString;
  public String quotaAmount;
  public String quotaContent;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.BankCardForTransferOut
 * JD-Core Version:    0.6.2
 */