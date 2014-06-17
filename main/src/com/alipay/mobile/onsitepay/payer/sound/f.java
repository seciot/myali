package com.alipay.mobile.onsitepay.payer.sound;

import com.alipay.mobile.framework.lbsinfo.LBSInfoGather;
import com.alipay.mobile.framework.lbsinfo.LBSInfoListener;
import com.alipay.mobilelbs.common.service.facade.vo.Location;

final class f
  implements LBSInfoListener
{
  f(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void onLBSInfoChanged(Location paramLocation, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramLocation.longitude != 0.0D) && (paramLocation.latitude != 0.0D))
    {
      SendSoundViewActivity.a(this.a, paramLocation);
      LBSInfoGather.getInstance(this.a).removeUpdates(this);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.f
 * JD-Core Version:    0.6.2
 */