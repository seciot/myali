package com.alipay.mobile.lib.model;

import android.widget.AbsListView;
import com.alipay.mobile.pubsvc.ui.component.MoreListItem.IMoreDataListener;

class PubBaseFragment$2
  implements MoreListItem.IMoreDataListener
{
  PubBaseFragment$2(PubBaseFragment paramPubBaseFragment)
  {
  }

  public void getMoreData(AbsListView paramAbsListView, int paramInt)
  {
    this.this$0.requestBottomMessage();
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.PubBaseFragment.2
 * JD-Core Version:    0.6.2
 */