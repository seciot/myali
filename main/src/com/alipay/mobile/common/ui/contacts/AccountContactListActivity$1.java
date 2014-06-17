package com.alipay.mobile.common.ui.contacts;

import com.alipay.mobile.commonui.widget.APBladeView.OnItemClickListener;
import com.alipay.mobile.commonui.widget.APContactSectionIndexer;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;

class AccountContactListActivity$1
  implements APBladeView.OnItemClickListener
{
  AccountContactListActivity$1(AccountContactListActivity paramAccountContactListActivity)
  {
  }

  public void onItemClick(String paramString)
  {
    if ((paramString != null) && (AccountContactListActivity.access$100(this.this$0) != null))
    {
      int i = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#".indexOf(paramString);
      int j = AccountContactListActivity.access$100(this.this$0).getPositionForSection(i);
      if (j != -1)
        this.this$0.mAccountsListView.setSelection(j);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountContactListActivity.1
 * JD-Core Version:    0.6.2
 */