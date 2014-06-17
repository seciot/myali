package com.alipay.mobile.security.gesture.ui;

import com.alipay.mobile.security.gesture.service.GestureServiceImpl;

final class b
  implements Runnable
{
  b(GestureActivity paramGestureActivity)
  {
  }

  public final void run()
  {
    GestureActivity.b(this.a);
    GestureActivity.c(this.a).notifyunLockApp();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.b
 * JD-Core Version:    0.6.2
 */