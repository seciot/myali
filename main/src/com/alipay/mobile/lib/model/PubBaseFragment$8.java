package com.alipay.mobile.lib.model;

import com.alipay.mobile.pubsvc.ui.component.Pull2RefreshListView;

class PubBaseFragment$8
  implements Runnable
{
  PubBaseFragment$8(PubBaseFragment paramPubBaseFragment, boolean paramBoolean)
  {
  }

  public void run()
  {
    if (this.val$needPull)
    {
      if (this.this$0.listViewOld != null)
        this.this$0.listViewOld.redirectToLoad();
      return;
    }
    this.this$0.refreshOnPageResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.PubBaseFragment.8
 * JD-Core Version:    0.6.2
 */