package com.alipay.mobile.mobilerechargeapp.adapter;

import android.view.View;
import android.view.View.OnClickListener;

final class h
  implements View.OnClickListener
{
  h(WarnManagerListAdapter paramWarnManagerListAdapter)
  {
  }

  public final void onClick(View paramView)
  {
    if (WarnManagerListAdapter.getBundle(this.a) != null)
      WarnManagerListAdapter.getBundle(this.a).getInstance();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.h
 * JD-Core Version:    0.6.2
 */