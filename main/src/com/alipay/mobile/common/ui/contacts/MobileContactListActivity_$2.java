package com.alipay.mobile.common.ui.contacts;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;

class MobileContactListActivity_$2
  implements AdapterView.OnItemClickListener
{
  MobileContactListActivity_$2(MobileContactListActivity_ paramMobileContactListActivity_)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.this$0.mobileContactsList((ContactPerson)paramAdapterView.getAdapter().getItem(paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity_.2
 * JD-Core Version:    0.6.2
 */