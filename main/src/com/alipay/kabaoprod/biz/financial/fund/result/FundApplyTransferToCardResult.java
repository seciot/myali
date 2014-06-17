package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.financial.fund.model.BankCardForTransferOut;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public class FundApplyTransferToCardResult extends KabaoCommonResult
  implements Serializable
{
  public List<BankCardForTransferOut> bankCards;
  public String canTransferTimeString;
  public Map<String, String> extraInfo;
  public String passwordType;
  public String quotaContent;
  public String totalAmount;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferToCardResult
 * JD-Core Version:    0.6.2
 */