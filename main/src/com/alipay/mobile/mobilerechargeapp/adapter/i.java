package com.alipay.mobile.mobilerechargeapp.adapter;

import android.view.View;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;

final class i
  implements APAbsTableView.OnSwitchListener
{
  i(WarnManagerListAdapter paramWarnManagerListAdapter, int paramInt)
  {
  }

  public final void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (WarnManagerListAdapter.a(this.b) != null)
      WarnManagerListAdapter.a(this.b).a(this.a, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.i
 * JD-Core Version:    0.6.2
 */