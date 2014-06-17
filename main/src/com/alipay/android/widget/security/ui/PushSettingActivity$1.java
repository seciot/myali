package com.alipay.android.widget.security.ui;

import android.view.View;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.commonui.widget.APTextView;

class PushSettingActivity$1
  implements APAbsTableView.OnSwitchListener
{
  PushSettingActivity$1(PushSettingActivity paramPushSettingActivity)
  {
  }

  public void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (!paramBoolean)
    {
      this.a.d.setVisibility(0);
      return;
    }
    this.a.d.setVisibility(4);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.PushSettingActivity.1
 * JD-Core Version:    0.6.2
 */