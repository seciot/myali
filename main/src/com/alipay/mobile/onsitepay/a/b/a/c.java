package com.alipay.mobile.onsitepay.a.b.a;

import com.alipay.mobile.framework.lbsinfo.LBSInfoGather;
import com.alipay.mobile.framework.lbsinfo.LBSInfoListener;
import com.alipay.mobilelbs.common.service.facade.vo.Location;
import com.googlecode.androidannotations.api.BackgroundExecutor;

final class c
  implements LBSInfoListener
{
  String a = null;

  public c(AppBundle parama, String paramString)
  {
    this.a = paramString;
  }

  public final void onLBSInfoChanged(Location paramLocation, boolean paramBoolean)
  {
    if ((paramBoolean) && (paramLocation.longitude != 0.0D) && (paramLocation.latitude != 0.0D))
    {
      BackgroundExecutor.execute(new BundlesManager(this.b, this.a, paramLocation));
      LBSInfoGather.getInstance(this.b.b).removeUpdates(this.b.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.c
 * JD-Core Version:    0.6.2
 */