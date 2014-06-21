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
    if (WarnManagerListAdapter.getBundle(this.b) != null)
      WarnManagerListAdapter.getBundle(this.b).v(this.a, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.i
 * JD-Core Version:    0.6.2
 */