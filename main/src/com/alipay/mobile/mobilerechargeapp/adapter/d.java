package com.alipay.mobile.mobilerechargeapp.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.mobilerechargeapp.data.AutoInterface;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;

final class d
  implements View.OnClickListener
{
  d(AutoComlieteListAdapter paramAutoComlieteListAdapter, ItemData paramItemData)
  {
  }

  public final void onClick(View paramView)
  {
    if (AutoComlieteListAdapter.a(this.b) != null)
      AutoComlieteListAdapter.a(this.b).a(this.a, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.d
 * JD-Core Version:    0.6.2
 */