package com.alipay.mobile.common.promotion.intercept.interceptor;

import com.alipay.mobile.common.promotion.intercept.IPromotionInterceptor;
import com.alipay.mobile.common.promotion.intercept.action.BaseAction;
import com.alipay.mobile.common.promotion.intercept.desc.InterceptorDesc;

public abstract class BaseInterceptor
  implements IPromotionInterceptor
{
  protected InterceptorDesc desc;
  protected BaseAction postAction;
  protected BaseAction preAction;

  public BaseInterceptor(InterceptorDesc paramInterceptorDesc)
  {
    this.desc = paramInterceptorDesc;
  }

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    BaseInterceptor localBaseInterceptor;
    do
    {
      return true;
      if (!(paramObject instanceof BaseInterceptor))
        break;
      localBaseInterceptor = (BaseInterceptor)paramObject;
    }
    while ((getDesc() != null) && (localBaseInterceptor.getDesc() != null) && (getDesc().equals(localBaseInterceptor.getDesc())));
    return false;
  }

  public InterceptorDesc getDesc()
  {
    return this.desc;
  }

  public BaseAction getPostAction()
  {
    return this.postAction;
  }

  public BaseAction getPreAction()
  {
    return this.preAction;
  }

  public boolean isSwallow()
  {
    if (this.desc != null)
      return this.desc.isSwallow;
    return false;
  }

  public void postExec()
  {
    if (this.postAction != null)
      this.postAction.exec();
  }

  public void preExec()
  {
    if (this.preAction != null)
      this.preAction.exec();
  }

  public void setDesc(InterceptorDesc paramInterceptorDesc)
  {
    this.desc = paramInterceptorDesc;
  }

  public void setPostAction(BaseAction paramBaseAction)
  {
    this.postAction = paramBaseAction;
  }

  public void setPreAction(BaseAction paramBaseAction)
  {
    this.preAction = paramBaseAction;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.interceptor.BaseInterceptor
 * JD-Core Version:    0.6.2
 */