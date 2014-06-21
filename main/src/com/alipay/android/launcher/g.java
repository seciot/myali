package com.alipay.android.launcher;

import android.net.Uri;
import com.alipay.mobile.framework.service.ext.security.GestureCallBack;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;

final class g
  implements GestureCallBack
{
  g(TabLauncher paramTabLauncher, boolean paramBoolean, Uri paramUri)
  {
  }

  public final void onGestureResult(boolean paramBoolean)
  {
    if (this.a)
    {
      GestureDataCenter.getInstance().setNeedNotifyCallBack(false);
      TabLauncher.v(this.c, this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.g
 * JD-Core Version:    0.6.2
 */