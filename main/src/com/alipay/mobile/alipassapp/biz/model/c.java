package com.alipay.mobile.alipassapp.biz.model;

import com.alipay.kabaoprod.biz.mwallet.card.result.CardListResult;
import java.util.List;

public final class c
{
  private CardListResult a;
  private boolean b = false;
  private boolean c = false;

  public final void a(CardListResult paramCardListResult)
  {
    this.a = paramCardListResult;
    this.c = false;
  }

  public final boolean a()
  {
    return (this.a != null) && (this.a.success);
  }

  public final CardListResult b()
  {
    return this.a;
  }

  public final boolean c()
  {
    return (this.a != null) && (this.a.cardList != null) && (this.a.cardList.size() > 0);
  }

  public final boolean d()
  {
    return this.b;
  }

  public final void e()
  {
    this.b = true;
  }

  public final boolean f()
  {
    return this.c;
  }

  public final void g()
  {
    this.c = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.c
 * JD-Core Version:    0.6.2
 */