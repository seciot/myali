package com.alipay.mobile.commonbiz.biz;

import android.net.Uri;
import android.os.Handler;
import com.alipay.mobile.framework.service.ext.security.GestureCallBack;

class LaunchRouter$4
  implements GestureCallBack
{
  LaunchRouter$4(LaunchRouter paramLaunchRouter, Uri paramUri)
  {
  }

  public void onGestureResult(boolean paramBoolean)
  {
    LaunchRouter.e(this.b).postDelayed(new LaunchRouter.4.1(this), 50L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.LaunchRouter.4
 * JD-Core Version:    0.6.2
 */