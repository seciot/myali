package com.alipay.mobile.onsitepay.payer;

import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;

final class d
  implements Runnable
{
  d(AutoPaySuccessActivity paramAutoPaySuccessActivity, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      AutoPaySuccessActivity.a().payResultAck(this.a);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.d
 * JD-Core Version:    0.6.2
 */