package com.alipay.mobileprod.biz.transfer.vo;

public class BankVO
{
  public String bankName;
  public String bankShortName;
  public boolean hotBank;
  public boolean nextDay;
  public boolean quickSupported;

  public String getBankName()
  {
    return this.bankName;
  }

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public boolean isHotBank()
  {
    return this.hotBank;
  }

  public boolean isNextDay()
  {
    return this.nextDay;
  }

  public boolean isQuickSupported()
  {
    return this.quickSupported;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }

  public void setHotBank(boolean paramBoolean)
  {
    this.hotBank = paramBoolean;
  }

  public void setNextDay(boolean paramBoolean)
  {
    this.nextDay = paramBoolean;
  }

  public void setQuickSupported(boolean paramBoolean)
  {
    this.quickSupported = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.vo.BankVO
 * JD-Core Version:    0.6.2
 */