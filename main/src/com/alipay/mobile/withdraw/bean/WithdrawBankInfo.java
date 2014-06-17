package com.alipay.mobile.withdraw.bean;

import com.alipay.kabaoprod.biz.financial.withdraw.pre.ArriveDateInfo;
import com.alipay.kabaoprod.biz.financial.withdraw.pre.BankInfo;
import java.util.List;

public class WithdrawBankInfo
{
  private BankInfo a;
  private String b;
  private boolean c = false;

  public final WithdrawBankInfo a(BankInfo paramBankInfo)
  {
    this.a = paramBankInfo;
    String str = paramBankInfo.type;
    if (str.equalsIgnoreCase("katong"))
      this.b = "快捷（含卡通）";
    while (!str.equalsIgnoreCase("common"))
      return this;
    this.b = "储蓄卡";
    return this;
  }

  public final String a()
  {
    if (this.a != null)
      return this.a.bankAccountNo;
    return null;
  }

  public final void a(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }

  public final String b()
  {
    if (this.a != null)
      return this.a.bankName;
    return null;
  }

  public final String c()
  {
    if (this.a != null)
      return this.a.bankMark;
    return null;
  }

  public final String d()
  {
    if (this.a != null)
      return this.a.type;
    return null;
  }

  public final String e()
  {
    if (this.a != null)
      return this.a.desc;
    return null;
  }

  public final List<ArriveDateInfo> f()
  {
    if (this.a != null)
      return this.a.arriveDateList;
    return null;
  }

  public final String g()
  {
    return this.b;
  }

  public final boolean h()
  {
    return this.c;
  }

  public final String i()
  {
    if (this.a != null)
      return this.a.cardNoLast4;
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.bean.WithdrawBankInfo
 * JD-Core Version:    0.6.2
 */