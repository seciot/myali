package com.alipay.android.widget.security.ui;

import com.alipay.mobile.framework.service.ext.security.QihooGuardService;

class QihooGuardActivity$4
  implements Runnable
{
  QihooGuardActivity$4(QihooGuardActivity paramQihooGuardActivity)
  {
  }

  public void run()
  {
    QihooGuardService.waitForConnecting(QihooGuardActivity.d(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.QihooGuardActivity.4
 * JD-Core Version:    0.6.2
 */