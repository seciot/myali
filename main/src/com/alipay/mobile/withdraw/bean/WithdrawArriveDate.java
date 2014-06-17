package com.alipay.mobile.withdraw.bean;

import com.alipay.kabaoprod.biz.financial.withdraw.pre.ArriveDateInfo;

public class WithdrawArriveDate
{
  protected ArriveDateInfo a;
  protected boolean b = false;

  public final String a()
  {
    if (this.a != null)
      return this.a.title;
    return null;
  }

  public final void a(ArriveDateInfo paramArriveDateInfo)
  {
    this.a = paramArriveDateInfo;
  }

  public final void a(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final String b()
  {
    if (this.a != null)
      return this.a.arriveDateType;
    return null;
  }

  public final boolean c()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.bean.WithdrawArriveDate
 * JD-Core Version:    0.6.2
 */