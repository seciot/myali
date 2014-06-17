package com.alipay.mobile.alipassapp.biz.model;

import com.alipay.kabaoprod.biz.mwallet.card.model.CardPreviewModel;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult;
import java.util.List;

public final class d
{
  private boolean a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private List<String> h;
  private boolean i = false;
  private boolean j = false;

  public d(CardPreviewResult paramCardPreviewResult)
  {
    if ((paramCardPreviewResult == null) || ((!paramCardPreviewResult.success) && (!"ALIPASS_TEMPLATE_NOT_FOUND".equals(paramCardPreviewResult.resultCode))))
      this.j = true;
    do
    {
      return;
      if ((!paramCardPreviewResult.success) && ("ALIPASS_TEMPLATE_NOT_FOUND".equals(paramCardPreviewResult.resultCode)))
      {
        this.i = false;
        return;
      }
      this.a = paramCardPreviewResult.isShowFollow;
      this.c = paramCardPreviewResult.officialAccountId;
      this.b = paramCardPreviewResult.officialAccountName;
    }
    while ((paramCardPreviewResult.cardPreviewList == null) || (paramCardPreviewResult.cardPreviewList.size() <= 0));
    this.i = true;
    CardPreviewModel localCardPreviewModel = (CardPreviewModel)paramCardPreviewResult.cardPreviewList.get(0);
    this.f = localCardPreviewModel.backgroundColor;
    this.e = localCardPreviewModel.backgroundPng;
    this.g = localCardPreviewModel.cardName;
    this.h = localCardPreviewModel.commonPrivilegeList;
    this.d = localCardPreviewModel.merchantName;
  }

  public final boolean a()
  {
    return (this.h != null) && (this.h.size() > 0);
  }

  public final int b()
  {
    if (this.h != null)
      return this.h.size();
    return 0;
  }

  public final boolean c()
  {
    return this.i;
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

  public final String g()
  {
    return this.g;
  }

  public final List<String> h()
  {
    return this.h;
  }

  public final boolean i()
  {
    return this.j;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.d
 * JD-Core Version:    0.6.2
 */