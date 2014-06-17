package com.alipay.android.app.data;

import android.util.Pair;
import com.alipay.mobile.aspect.Advice;

final class a
  implements Advice
{
  a(BizDataSource paramBizDataSource)
  {
  }

  public final void onCallAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final Pair onCallAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    return null;
  }

  public final void onCallBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final void onExecutionAfter(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }

  public final Pair onExecutionAround(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
    BizDataSource.a(this.a);
    return null;
  }

  public final void onExecutionBefore(String paramString, Object paramObject, Object[] paramArrayOfObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.a
 * JD-Core Version:    0.6.2
 */