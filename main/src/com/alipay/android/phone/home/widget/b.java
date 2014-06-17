package com.alipay.android.phone.home.widget;

import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import com.alipay.android.phone.home.util.SyncAnimatingHelper.AnimationListener;
import com.alipay.mobile.nfd.nfdbiz.ITopBoardStateCallBack;

final class b
  implements SyncAnimatingHelper.AnimationListener
{
  b(ActiveTopBoardContainer paramActiveTopBoardContainer, View paramView, int paramInt)
  {
  }

  public final void a()
  {
    if ((ActiveTopBoardContainer.access$300()) && (ActiveTopBoardContainer.access$200(this.c, "成功载入魔力场，上滑可收缩")))
      ActiveTopBoardContainer.access$302(false);
    if (ActiveTopBoardContainer.access$400(this.c) != null)
      ActiveTopBoardContainer.access$400(this.c).onShowFinish();
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    localLayoutParams.height = (this.a.getMeasuredHeight() - this.b);
    ActiveTopBoardContainer.access$502(this.c, (FrameLayout.LayoutParams)this.a.getLayoutParams());
    this.a.setLayoutParams(localLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.b
 * JD-Core Version:    0.6.2
 */