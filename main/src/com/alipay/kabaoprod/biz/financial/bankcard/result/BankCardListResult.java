package com.alipay.kabaoprod.biz.financial.bankcard.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.BankCard;
import java.util.List;
import java.util.Map;

public class BankCardListResult extends KabaoCommonResult
{
  public List<BankCard> bankCardList;
  public Map<String, String> extraInfo;

  public List<BankCard> getBankCardList()
  {
    return this.bankCardList;
  }

  public Map<String, String> getExtraInfo()
  {
    return this.extraInfo;
  }

  public void setBankCardList(List<BankCard> paramList)
  {
    this.bankCardList = paramList;
  }

  public void setExtraInfo(Map<String, String> paramMap)
  {
    this.extraInfo = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.result.BankCardListResult
 * JD-Core Version:    0.6.2
 */