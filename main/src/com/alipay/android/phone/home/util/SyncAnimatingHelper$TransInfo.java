package com.alipay.android.phone.home.util;

import android.view.View;
import com.alipay.mobile.common.logging.LogCatLog;

public class SyncAnimatingHelper$TransInfo
{
  private View b;
  private SyncAnimatingHelper.TYPE c = SyncAnimatingHelper.TYPE.a;
  private int d;
  private float e;
  private float f;

  public SyncAnimatingHelper$TransInfo(SyncAnimatingHelper paramSyncAnimatingHelper, View paramView, int paramInt)
  {
    this.b = paramView;
    this.d = paramInt;
  }

  public final SyncAnimatingHelper.TYPE initExecutor()
  {
    return this.c;
  }

  public final void a(float paramFloat)
  {
    if (SyncAnimatingHelper.f(this.a))
    {
      this.f = this.d;
      return;
    }
    this.f = (this.e + Math.round(1.0F * paramFloat * (this.d - this.e)));
    LogCatLog.e(SyncAnimatingHelper.g(this.a), "oldData:" + this.e + " ,curData:" + this.f + " ,change2Data:" + this.d);
  }

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final View b()
  {
    return this.b;
  }

  public final float c()
  {
    return this.f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.SyncAnimatingHelper.TransInfo
 * JD-Core Version:    0.6.2
 */