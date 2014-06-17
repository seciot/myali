package com.alipay.mobile.commonui.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class SwipeListViewTouchListener$7
  implements AbsListView.OnScrollListener
{
  private boolean a = false;
  private boolean b = false;

  SwipeListViewTouchListener$7(SwipeListViewTouchListener paramSwipeListViewTouchListener)
  {
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 1;
    int n;
    if (this.a)
      if (paramInt1 == i)
      {
        n = i;
        if (n != 0)
          this.a = false;
        label30: if (!this.b)
          break label108;
        if (paramInt1 + paramInt2 != paramInt3 - 1)
          break label102;
        label47: if (i != 0)
          this.b = false;
      }
    label100: label102: label108: int m;
    do
    {
      return;
      n = 0;
      break;
      if (paramInt1 == 0);
      for (int j = i; ; j = 0)
      {
        if (j == 0)
          break label100;
        this.a = i;
        SwipeListViewTouchListener.access$100(this.this$0).onFirstListItem();
        break;
      }
      break label30;
      i = 0;
      break label47;
      int k = paramInt1 + paramInt2;
      m = 0;
      if (k >= paramInt3)
        m = i;
    }
    while (m == 0);
    this.b = i;
    SwipeListViewTouchListener.access$100(this.this$0).onLastListItem();
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    SwipeListViewTouchListener localSwipeListViewTouchListener = this.this$0;
    if (paramInt != 1);
    for (boolean bool = true; ; bool = false)
    {
      localSwipeListViewTouchListener.setEnabled(bool);
      if ((SwipeListViewTouchListener.access$500(this.this$0)) && (paramInt == 1))
        this.this$0.closeOpenedItems();
      if (paramInt == 1)
      {
        SwipeListViewTouchListener.access$602(this.this$0, true);
        this.this$0.setEnabled(false);
      }
      if ((paramInt != 2) && (paramInt != 1))
      {
        SwipeListViewTouchListener.access$602(this.this$0, false);
        SwipeListViewTouchListener.access$002(this.this$0, -1);
        SwipeListViewTouchListener.access$100(this.this$0).resetScrolling();
        new Handler().postDelayed(new SwipeListViewTouchListener.7.1(this), 500L);
      }
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.7
 * JD-Core Version:    0.6.2
 */