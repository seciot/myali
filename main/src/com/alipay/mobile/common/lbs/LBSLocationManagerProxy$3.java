package com.alipay.mobile.common.lbs;

import android.content.Context;

class LBSLocationManagerProxy$3
  implements LBSLocationListener
{
  LBSLocationManagerProxy$3(LBSLocationManagerProxy paramLBSLocationManagerProxy, Context paramContext)
  {
  }

  public void onLocationUpdate(LBSLocation paramLBSLocation)
  {
    this.this$0.removeUpdates(this.val$context, LBSLocationManagerProxy.access$300(this.this$0));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.lbs.LBSLocationManagerProxy.3
 * JD-Core Version:    0.6.2
 */