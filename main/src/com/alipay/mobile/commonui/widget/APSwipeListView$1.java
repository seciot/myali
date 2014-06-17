package com.alipay.mobile.commonui.widget;

import android.database.DataSetObserver;

class APSwipeListView$1 extends DataSetObserver
{
  APSwipeListView$1(APSwipeListView paramAPSwipeListView)
  {
  }

  public void onChanged()
  {
    super.onChanged();
    this.this$0.onListChanged();
    APSwipeListView.access$000(this.this$0).resetItems();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSwipeListView.1
 * JD-Core Version:    0.6.2
 */