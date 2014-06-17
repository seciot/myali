package com.alipay.mobile.common.promotion.intercept.interceptor;

import com.alipay.mobile.common.promotion.intercept.desc.InterceptorDesc;

public class ClickInterceptor extends BaseInterceptor
{
  public ClickInterceptor(InterceptorDesc paramInterceptorDesc)
  {
    super(paramInterceptorDesc);
  }

  public boolean isSwallow()
  {
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.interceptor.ClickInterceptor
 * JD-Core Version:    0.6.2
 */