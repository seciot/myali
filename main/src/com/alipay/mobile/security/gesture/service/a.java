package com.alipay.mobile.security.gesture.service;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;

final class a
  implements Advice
{
  a(GestureServiceImpl paramGestureServiceImpl)
  {
  }

  public final void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final Pair<Boolean, Object> onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public final void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    this.a.sycnStartGestureIfNecessary();
  }

  public final void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final Pair<Boolean, Object> onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public final void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.service.a
 * JD-Core Version:    0.6.2
 */