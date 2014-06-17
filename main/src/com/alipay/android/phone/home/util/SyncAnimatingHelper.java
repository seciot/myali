package com.alipay.android.phone.home.util;

import android.os.Handler;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.nineoldandroids.view.ViewHelper;
import java.util.ArrayList;
import java.util.List;

public class SyncAnimatingHelper
{
  private Interpolator a;
  private List<SyncAnimatingHelper.TransInfo> b = new ArrayList();
  private boolean c = true;
  private int d = 200;
  private long e;
  private float f = 1.0F / this.d;
  private final String g = SyncAnimatingHelper.class.getName();
  private Handler h = new d(this);
  private SyncAnimatingHelper.AnimationListener i;

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final void a(View paramView, int paramInt, SyncAnimatingHelper.TYPE paramTYPE)
  {
    if (paramView == null)
      return;
    SyncAnimatingHelper.TransInfo localTransInfo = new SyncAnimatingHelper.TransInfo(this, paramView, paramInt);
    localTransInfo.a(paramInt);
    if (SyncAnimatingHelper.TYPE.b == paramTYPE)
      SyncAnimatingHelper.TransInfo.a(localTransInfo, ViewHelper.getAlpha(paramView));
    while (true)
    {
      SyncAnimatingHelper.TransInfo.a(localTransInfo, paramTYPE);
      this.b.add(localTransInfo);
      return;
      if (SyncAnimatingHelper.TYPE.a == paramTYPE)
        SyncAnimatingHelper.TransInfo.a(localTransInfo, paramView.getTop());
    }
  }

  public final void a(SyncAnimatingHelper.AnimationListener paramAnimationListener)
  {
    this.i = paramAnimationListener;
  }

  public final boolean a()
  {
    return this.c;
  }

  public final void b()
  {
    this.b.clear();
    this.i = null;
    this.c = true;
    this.h.removeMessages(4097);
  }

  public final void c()
  {
    if ((this.c) && (this.b.size() > 0))
    {
      this.c = false;
      this.e = AnimationUtils.currentAnimationTimeMillis();
      this.h.sendEmptyMessage(4097);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.SyncAnimatingHelper
 * JD-Core Version:    0.6.2
 */