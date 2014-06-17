package com.alipay.android.phone.home.widget;

import com.alipay.android.phone.home.util.SyncAnimatingHelper.AnimationListener;
import com.nineoldandroids.view.ViewHelper;

final class a
  implements SyncAnimatingHelper.AnimationListener
{
  a(ActiveTopBoardContainer paramActiveTopBoardContainer)
  {
  }

  public final void a()
  {
    ViewHelper.setAlpha(ActiveTopBoardContainer.access$000(this.a), 1.0F);
    if ((ActiveTopBoardContainer.access$100()) && (ActiveTopBoardContainer.access$200(this.a, "下拉可展开")))
      ActiveTopBoardContainer.access$102(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.a
 * JD-Core Version:    0.6.2
 */