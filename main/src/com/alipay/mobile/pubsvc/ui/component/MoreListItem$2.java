package com.alipay.mobile.pubsvc.ui.component;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class MoreListItem$2
  implements AbsListView.OnScrollListener
{
  MoreListItem$2(MoreListItem paramMoreListItem)
  {
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 == paramInt3 - paramInt2) || ((paramInt3 == 1) && (paramInt2 == 0)))
    {
      if (!MoreListItem.access$200(this.this$0))
      {
        this.this$0.setWaittingFooterView(this.this$0.mFooterView);
        MoreListItem.access$202(this.this$0, true);
      }
      if (this.this$0.loadState == 0)
      {
        this.this$0.loadState = 1;
        this.this$0.startTimeOutChecking();
        paramAbsListView.setSelection(paramInt1);
        MoreListItem.access$300(this.this$0).post(new MoreListItem.2.1(this, paramAbsListView));
      }
    }
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    MoreListItem.access$000(this.this$0).onScrollStateChanged(paramAbsListView, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.ui.component.MoreListItem.2
 * JD-Core Version:    0.6.2
 */