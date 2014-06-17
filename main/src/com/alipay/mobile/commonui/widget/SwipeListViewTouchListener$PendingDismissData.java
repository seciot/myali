package com.alipay.mobile.commonui.widget;

import android.view.View;

class SwipeListViewTouchListener$PendingDismissData
  implements Comparable
{
  public int position;
  public View view;

  public SwipeListViewTouchListener$PendingDismissData(SwipeListViewTouchListener paramSwipeListViewTouchListener, int paramInt, View paramView)
  {
    this.position = paramInt;
    this.view = paramView;
  }

  public int compareTo(PendingDismissData paramPendingDismissData)
  {
    return paramPendingDismissData.position - this.position;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewTouchListener.PendingDismissData
 * JD-Core Version:    0.6.2
 */