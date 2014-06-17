package com.alipay.android.phone.nfd.nfdbiz.biz;

import com.alipay.mobile.nfd.nfdbiz.IOnActiveBoardVisibleChange;

final class a
  implements IOnActiveBoardVisibleChange
{
  a(WifiSniffer paramWifiSniffer)
  {
  }

  public final void onVisibleChange(boolean paramBoolean)
  {
    if (paramBoolean)
      WifiSniffer.access$000(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.a
 * JD-Core Version:    0.6.2
 */