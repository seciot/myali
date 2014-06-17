package com.alipay.mobile.lib.model;

import com.alipay.mobile.pubsvc.ui.component.Pull2RefreshListView.OnRefreshListener;

class PubBaseFragment$6
  implements Pull2RefreshListView.OnRefreshListener
{
  PubBaseFragment$6(PubBaseFragment paramPubBaseFragment)
  {
  }

  public void onRefresh()
  {
    if (this.this$0.topRequestStatus == 0)
      this.this$0.requestNewMessage();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.PubBaseFragment.6
 * JD-Core Version:    0.6.2
 */