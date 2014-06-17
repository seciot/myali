package com.alipay.mobile.mobilerechargeapp.adapter;

import com.alipay.mobileprod.biz.recharge.vo.EcardVO;

public class EcardVOWrapper
{
  private EcardVO a;
  private boolean b;

  public EcardVOWrapper(EcardVO paramEcardVO)
  {
    this.a = paramEcardVO;
    this.b = true;
  }

  public EcardVOWrapper(String paramString)
  {
    this.a = new EcardVO();
    this.a.setAbsence(true);
    this.a.setFacePrice(paramString);
    this.b = false;
  }

  public final String a()
  {
    return this.a.getFacePrice();
  }

  public final String b()
  {
    return this.a.getItemId();
  }

  public final String c()
  {
    return this.a.getPromotionPrice();
  }

  public final String d()
  {
    return this.a.getShowedPrice();
  }

  public final String e()
  {
    return this.a.getChannelType();
  }

  public final boolean f()
  {
    return this.a.isAbsence();
  }

  public final boolean g()
  {
    return this.b;
  }

  public final String h()
  {
    if (!this.b)
      return this.a.getFacePrice() + "元";
    if (!this.a.isAbsence())
      try
      {
        if (Float.valueOf(this.a.getShowedPrice()).floatValue() < Float.valueOf(this.a.getFacePrice()).floatValue())
          return this.a.getFacePrice() + "元（优惠价：" + this.a.getShowedPrice() + "元）";
        String str = this.a.getFacePrice() + "元（售价：" + this.a.getShowedPrice() + "元）";
        return str;
      }
      catch (Exception localException)
      {
        return this.a.getFacePrice() + "元（售价：" + this.a.getShowedPrice() + "元）";
      }
    return this.a.getFacePrice() + "元（缺货）";
  }

  public final String i()
  {
    return this.a.getFacePrice() + "元";
  }

  public final String j()
  {
    if (!this.b)
      return "售价获取失败";
    if (!this.a.isAbsence())
      return this.a.getShowedPrice() + "元";
    return "缺货";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.EcardVOWrapper
 * JD-Core Version:    0.6.2
 */