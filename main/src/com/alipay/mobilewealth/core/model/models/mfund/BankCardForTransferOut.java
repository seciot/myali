package com.alipay.mobilewealth.core.model.models.mfund;

import com.alipay.mobilewealth.core.model.models.bank.BaseBankCard;
import java.io.Serializable;
import java.util.List;

public class BankCardForTransferOut extends BaseBankCard
  implements Serializable
{
  public List<ArrivingTypeInfo> arrivingTypeInfos;
  public List<ArrivingType> arrivingTypes;
  public FundTransferOutTipInfo fundTransferOutTipInfo;
  public String perTimeAmountString;
  public String quotaAmount;
  public String quotaContent;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.core.model.models.mfund.BankCardForTransferOut
 * JD-Core Version:    0.6.2
 */