package com.alipay.mobile.about.ui;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class ah
  implements AbsListView.OnScrollListener
{
  ah(MultiPictureSelectorActivity paramMultiPictureSelectorActivity)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    MultiPictureSelectorActivity.a(this.a, paramInt1);
    MultiPictureSelectorActivity.b(this.a, paramInt2);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.ah
 * JD-Core Version:    0.6.2
 */