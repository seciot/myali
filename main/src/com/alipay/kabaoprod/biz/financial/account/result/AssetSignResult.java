package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.Map;

public class AssetSignResult extends KabaoCommonResult
{
  public Map<String, String> contextMap;
  public boolean markBank = false;
  public boolean markCredit = false;
  public boolean markFund = false;
  public boolean markMobile = false;
  public boolean markTravel = false;
  public boolean markVoucher = false;

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
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

  public boolean isMarkMobile()
  {
    return this.markMobile;
  }

  public boolean isMarkTravel()
  {
    return this.markTravel;
  }

  public boolean isMarkVoucher()
  {
    return this.markVoucher;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
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

  public void setMarkMobile(boolean paramBoolean)
  {
    this.markMobile = paramBoolean;
  }

  public void setMarkTravel(boolean paramBoolean)
  {
    this.markTravel = paramBoolean;
  }

  public void setMarkVoucher(boolean paramBoolean)
  {
    this.markVoucher = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.AssetSignResult
 * JD-Core Version:    0.6.2
 */