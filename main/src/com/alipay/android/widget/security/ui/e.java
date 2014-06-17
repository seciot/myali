package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class e
  implements Runnable
{
  private e(SecurityWidgetGroupAcitivity paramSecurityWidgetGroupAcitivity)
  {
  }

  public final void run()
  {
    if ((!this.a.e.isLogin()) && (!this.a.e.auth(new Bundle())))
      return;
    SecurityWidgetGroupAcitivity.d(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.e
 * JD-Core Version:    0.6.2
 */