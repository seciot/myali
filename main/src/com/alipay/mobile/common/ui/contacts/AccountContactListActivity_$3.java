package com.alipay.mobile.common.ui.contacts;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.common.ui.contacts.model.HistoryTransferAccount;

class AccountContactListActivity_$3
  implements AdapterView.OnItemClickListener
{
  AccountContactListActivity_$3(AccountContactListActivity_ paramAccountContactListActivity_)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.this$0.accountContactsList((HistoryTransferAccount)paramAdapterView.getAdapter().getItem(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountContactListActivity_.3
 * JD-Core Version:    0.6.2
 */