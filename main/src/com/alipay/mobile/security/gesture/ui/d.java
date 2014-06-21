package com.alipay.mobile.security.gesture.ui;

import android.content.res.Resources;
import com.alipay.mobile.a.f;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.security.gesture.service.GestureServiceImpl;

final class d
  implements Runnable
{
  d(GestureActivity paramGestureActivity)
  {
  }

  public final void run()
  {
    if ((GestureActivity.getBundle(this.a) != null) && (GestureActivity.h(this.a) != null))
    {
      GestureActivity.a(GestureActivity.getBundle(this.a), "", "true", "0");
      GestureActivity.i(this.a).updateUserGesture(GestureActivity.getBundle(this.a));
      GestureActivity.b(this.a, this.a.getResources().getString(f.d));
    }
    GestureActivity.a(this.a, BehaviourIdEnum.CLICKED, "setGestureView", "skipButton");
    GestureActivity.c(this.a).callback(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.d
 * JD-Core Version:    0.6.2
 */