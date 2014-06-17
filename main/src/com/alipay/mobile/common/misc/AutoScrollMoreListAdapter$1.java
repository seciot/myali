package com.alipay.mobile.common.misc;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class AutoScrollMoreListAdapter$1
  implements AbsListView.OnScrollListener
{
  private boolean a;
  private boolean b = false;

  AutoScrollMoreListAdapter$1(AutoScrollMoreListAdapter paramAutoScrollMoreListAdapter)
  {
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = true;
    if ((paramInt1 + paramInt2 >= paramInt3) && (paramInt3 > 2))
      this.a = true;
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((this.b) && (this.a) && (paramInt == 0))
    {
      this.a = false;
      if (!this.this$0.mIsLoading);
    }
    else
    {
      return;
    }
    this.this$0.mIsLoading = true;
    this.b = false;
    this.this$0.showFooter();
    this.this$0.onAutoLoadMore();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.AutoScrollMoreListAdapter.1
 * JD-Core Version:    0.6.2
 */