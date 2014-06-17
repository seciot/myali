package com.alipay.mobile.common.promotion.intercept;

public abstract interface IPromotionInterceptor
{
  public abstract boolean isSwallow();

  public abstract void postExec();

  public abstract void preExec();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.IPromotionInterceptor
 * JD-Core Version:    0.6.2
 */