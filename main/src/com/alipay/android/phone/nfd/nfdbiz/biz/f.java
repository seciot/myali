package com.alipay.android.phone.nfd.nfdbiz.biz;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.nfd.nfdbiz.IOnActiveBoardVisibleChange;

final class f
  implements IOnActiveBoardVisibleChange
{
  f(WifiSnifferServiceImpl paramWifiSnifferServiceImpl)
  {
  }

  public final void onVisibleChange(boolean paramBoolean)
  {
    LogCatLog.i(WifiSnifferServiceImpl.TAG, "onVisibleChange enter: " + String.valueOf(paramBoolean));
    if (paramBoolean)
      WifiSnifferServiceImpl.access$400(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.f
 * JD-Core Version:    0.6.2
 */