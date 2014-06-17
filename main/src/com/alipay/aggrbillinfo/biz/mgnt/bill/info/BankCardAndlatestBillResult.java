package com.alipay.aggrbillinfo.biz.mgnt.bill.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;

public class BankCardAndlatestBillResult extends Result
{
  public String bankCardId;
  public String bankCardLast4No;
  public String bankCode;
  public String bankName;
  public BankBillInfo latestBill = new BankBillInfo();
  public String name;

  public String getBankCardId()
  {
    return this.bankCardId;
  }

  public String getBankCardLast4No()
  {
    return this.bankCardLast4No;
  }

  public String getBankCode()
  {
    return this.bankCode;
  }

  public String getBankName()
  {
    return this.bankName;
  }

  public BankBillInfo getLatestBill()
  {
    return this.latestBill;
  }

  public String getName()
  {
    return this.name;
  }

  public void setBankCardId(String paramString)
  {
    this.bankCardId = paramString;
  }

  public void setBankCardLast4No(String paramString)
  {
    this.bankCardLast4No = paramString;
  }

  public void setBankCode(String paramString)
  {
    this.bankCode = paramString;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setLatestBill(BankBillInfo paramBankBillInfo)
  {
    this.latestBill = paramBankBillInfo;
  }

  public void setName(String paramString)
  {
    this.name = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.bill.info.BankCardAndlatestBillResult
 * JD-Core Version:    0.6.2
 */