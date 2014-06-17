package com.alipay.mobile.commonui.widget;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class ScrollMoreListAdapter$2
  implements AbsListView.OnScrollListener
{
  private boolean a;
  private boolean b = false;

  ScrollMoreListAdapter$2(ScrollMoreListAdapter paramScrollMoreListAdapter)
  {
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = true;
    if ((this.this$0.hasMore()) && (paramInt1 + paramInt2 >= paramInt3) && (paramInt3 > 2))
    {
      this.a = true;
      return;
    }
    this.a = false;
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.b) && (this.a))
    {
      this.a = false;
      if (!this.this$0.mIsLoading);
    }
    while (paramInt != 0)
    {
      return;
      this.this$0.mIsLoading = true;
      this.this$0.onMore();
      this.b = false;
      return;
    }
    this.a = false;
    this.b = false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.ScrollMoreListAdapter.2
 * JD-Core Version:    0.6.2
 */