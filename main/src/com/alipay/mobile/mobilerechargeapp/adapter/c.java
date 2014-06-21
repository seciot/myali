package com.alipay.mobile.mobilerechargeapp.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.mobilerechargeapp.data.AutoInterface;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;

final class c
  implements View.OnClickListener
{
  c(AutoComlieteListAdapter paramAutoComlieteListAdapter, ItemData paramItemData)
  {
  }

  public final void onClick(View paramView)
  {
    if (AutoComlieteListAdapter.getBundle(this.b) != null)
      AutoComlieteListAdapter.getBundle(this.b).a(this.a, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.c
 * JD-Core Version:    0.6.2
 */