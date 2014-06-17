package com.alipay.mobile.common.promotion.intercept;

import android.view.View;
import android.view.View.OnClickListener;

public abstract interface IPromotionInterceptorManager
{
  public abstract boolean addInterceptorByGroupKey(String paramString, IPromotionInterceptor paramIPromotionInterceptor);

  public abstract boolean addInterceptorWithRpc(String paramString, Object paramObject);

  public abstract void clear();

  public abstract boolean currentActivityHasInterceptor();

  public abstract View.OnClickListener getOnClickListenerProxy(View.OnClickListener paramOnClickListener);

  public abstract View getTriggerView();

  public abstract boolean isEnable();

  public abstract IPromotionInterceptor match(Object[] paramArrayOfObject, String paramString);

  public abstract void removeInterceptor(IPromotionInterceptor paramIPromotionInterceptor);

  public abstract void removeInterceptorWithRpc(String paramString);

  public abstract void setEnable(boolean paramBoolean);

  public abstract void setTriggerView(View paramView);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.IPromotionInterceptorManager
 * JD-Core Version:    0.6.2
 */