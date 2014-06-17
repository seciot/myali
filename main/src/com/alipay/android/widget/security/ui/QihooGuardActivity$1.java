package com.alipay.android.widget.security.ui;

import android.view.View;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.framework.service.ext.security.QihooGuardService;

class QihooGuardActivity$1
  implements APAbsTableView.OnSwitchListener
{
  QihooGuardActivity$1(QihooGuardActivity paramQihooGuardActivity)
  {
  }

  public void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (QihooGuardService.isSupportSmsGuard())
    {
      this.a.showProgressDialog("");
      QihooGuardService.openQihooApp();
      this.a.dismissProgressDialog();
      return;
    }
    if (QihooGuardService.isQihooInstalled())
      this.a.toast("你的360手机卫士版本过低，请重装", 0);
    while (true)
    {
      QihooGuardService.openQihooDownload();
      return;
      if (QihooGuardService.isOtherVersionQihoo360Installed())
        this.a.toast("需安装通用版360手机卫士", 0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.QihooGuardActivity.1
 * JD-Core Version:    0.6.2
 */