package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.financial.account.model.BankAssetInfo;
import com.alipay.kabaoprod.biz.financial.account.model.FundAssetInfo;
import com.alipay.kabaoprod.biz.financial.account.model.PcreditAssetInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.Map;

public class AssetFinanceInfoResult extends KabaoCommonResult
{
  public BankAssetInfo bankAssetInfo;
  public int cardCount;
  public Map<String, String> contextMap;
  public boolean freezeBank;
  public boolean freezeCredit;
  public FundAssetInfo fundAssetInfo;
  public boolean hiddenBank;
  public boolean hiddenCredit;
  public boolean hiddenFund;
  public boolean markBank;
  public boolean markCredit;
  public boolean markFund;
  public PcreditAssetInfo pcreditAssetInfo;

  public BankAssetInfo getBankAssetInfo()
  {
    return this.bankAssetInfo;
  }

  public int getCardCount()
  {
    return this.cardCount;
  }

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
  }

  public FundAssetInfo getFundAssetInfo()
  {
    return this.fundAssetInfo;
  }

  public PcreditAssetInfo getPcreditAssetInfo()
  {
    return this.pcreditAssetInfo;
  }

  public boolean isFreezeBank()
  {
    return this.freezeBank;
  }

  public boolean isFreezeCredit()
  {
    return this.freezeCredit;
  }

  public boolean isHiddenBank()
  {
    return this.hiddenBank;
  }

  public boolean isHiddenCredit()
  {
    return this.hiddenCredit;
  }

  public boolean isHiddenFund()
  {
    return this.hiddenFund;
  }

  public boolean isMarkBank()
  {
    return this.markBank;
  }

  public boolean isMarkCredit()
  {
    return this.markCredit;
  }

  public boolean isMarkFund()
  {
    return this.markFund;
  }

  public void setBankAssetInfo(BankAssetInfo paramBankAssetInfo)
  {
    this.bankAssetInfo = paramBankAssetInfo;
  }

  public void setCardCount(int paramInt)
  {
    this.cardCount = paramInt;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
  }

  public void setFreezeBank(boolean paramBoolean)
  {
    this.freezeBank = paramBoolean;
  }

  public void setFreezeCredit(boolean paramBoolean)
  {
    this.freezeCredit = paramBoolean;
  }

  public void setFundAssetInfo(FundAssetInfo paramFundAssetInfo)
  {
    this.fundAssetInfo = paramFundAssetInfo;
  }

  public void setHiddenBank(boolean paramBoolean)
  {
    this.hiddenBank = paramBoolean;
  }

  public void setHiddenCredit(boolean paramBoolean)
  {
    this.hiddenCredit = paramBoolean;
  }

  public void setHiddenFund(boolean paramBoolean)
  {
    this.hiddenFund = paramBoolean;
  }

  public void setMarkBank(boolean paramBoolean)
  {
    this.markBank = paramBoolean;
  }

  public void setMarkCredit(boolean paramBoolean)
  {
    this.markCredit = paramBoolean;
  }

  public void setMarkFund(boolean paramBoolean)
  {
    this.markFund = paramBoolean;
  }

  public void setPcreditAssetInfo(PcreditAssetInfo paramPcreditAssetInfo)
  {
    this.pcreditAssetInfo = paramPcreditAssetInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.AssetFinanceInfoResult
 * JD-Core Version:    0.6.2
 */