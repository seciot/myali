package com.alipay.mobile.common.lbs;

import android.content.Context;
import com.amap.api.location.LocationManagerProxy;

class LBSLocationManagerProxy$2
  implements Runnable
{
  LBSLocationManagerProxy$2(LBSLocationManagerProxy paramLBSLocationManagerProxy, Context paramContext)
  {
  }

  public void run()
  {
    if (LBSLocationManagerProxy.access$000(this.this$0))
    {
      LBSLocationManagerProxy.access$002(this.this$0, false);
      if (LBSLocationManagerProxy.access$100(this.this$0))
        LBSLocationManagerProxy.access$200();
    }
    try
    {
      LocationManagerProxy.getInstance(this.val$context).removeUpdates(this.this$0);
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
 * Qualified Name:     com.alipay.mobile.common.lbs.LBSLocationManagerProxy.2
 * JD-Core Version:    0.6.2
 */