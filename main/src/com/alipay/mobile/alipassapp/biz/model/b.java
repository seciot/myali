package com.alipay.mobile.alipassapp.biz.model;

import com.alipay.kabaoprod.biz.mwallet.card.model.CardModel;

public final class b
{
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;

  public b(CardModel paramCardModel)
  {
    this.d = paramCardModel.partnerId;
    this.b = paramCardModel.logoText;
    this.c = paramCardModel.secondLogoText;
    this.a = paramCardModel.logo;
    this.e = paramCardModel.cardType;
    this.f = paramCardModel.tid;
  }

  public final String a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.b;
  }

  public final String c()
  {
    return this.c;
  }

  public final String d()
  {
    return this.d;
  }

  public final String e()
  {
    return this.e;
  }

  public final String f()
  {
    return this.f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.b
 * JD-Core Version:    0.6.2
 */