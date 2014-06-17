package com.alipay.mobile.common.lbs;

import android.content.Context;
import com.amap.api.location.LocationManagerProxy;

class LBSLocationManagerProxy$1
  implements Runnable
{
  LBSLocationManagerProxy$1(LBSLocationManagerProxy paramLBSLocationManagerProxy, Context paramContext, boolean paramBoolean)
  {
  }

  public void run()
  {
    if (!LBSLocationManagerProxy.access$000(this.this$0))
    {
      LBSLocationManagerProxy.access$002(this.this$0, true);
      if (LBSLocationManagerProxy.access$100(this.this$0))
        LBSLocationManagerProxy.access$200();
    }
    try
    {
      LocationManagerProxy.getInstance(this.val$context).setGpsEnable(this.val$gpsEnable);
      LocationManagerProxy.getInstance(this.val$context).requestLocationUpdates("lbs", 1000L, 10.0F, this.this$0);
      return;
    }
    catch (Exception localException)
    {
      if (LBSLocationManagerProxy.access$100(this.this$0))
        LBSLocationManagerProxy.access$200();
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.lbs.LBSLocationManagerProxy.1
 * JD-Core Version:    0.6.2
 */