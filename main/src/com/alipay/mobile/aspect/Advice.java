package com.alipay.mobile.aspect;

import android.util.Pair;

public abstract interface Advice
{
  public abstract void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject);

  public abstract Pair<Boolean, Object> onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject);

  public abstract void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject);

  public abstract void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject);

  public abstract Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject);

  public abstract void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.aspect.Advice
 * JD-Core Version:    0.6.2
 */