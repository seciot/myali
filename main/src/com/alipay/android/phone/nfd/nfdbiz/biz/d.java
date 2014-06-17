package com.alipay.android.phone.nfd.nfdbiz.biz;

import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;

final class d
  implements Runnable
{
  d(WifiSniffer.InShopByWifiReceiver paramInShopByWifiReceiver, TopBoardInfo paramTopBoardInfo)
  {
  }

  public final void run()
  {
    this.b.a.setTopBoardInfo(this.a);
    this.b.a.updateUI();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.d
 * JD-Core Version:    0.6.2
 */