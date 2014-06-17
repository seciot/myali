package com.alipay.android.phone.nfd.nfdbiz.biz;

import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;
import com.alipay.mobile.common.logging.LogCatLog;

final class h
  implements Runnable
{
  h(WifiSnifferServiceImpl.InShopByWifiReceiver paramInShopByWifiReceiver, TopBoardInfo paramTopBoardInfo)
  {
  }

  public final void run()
  {
    LogCatLog.i(WifiSnifferServiceImpl.TAG, "onReceive: updateUI");
    this.b.a.setTopBoardInfo(this.a);
    this.b.a.updateUI();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.h
 * JD-Core Version:    0.6.2
 */