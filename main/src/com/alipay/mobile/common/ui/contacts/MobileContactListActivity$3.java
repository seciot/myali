package com.alipay.mobile.common.ui.contacts;

import com.alipay.mobile.commonui.widget.APBladeView.OnItemClickListener;
import com.alipay.mobile.commonui.widget.APContactSectionIndexer;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;

class MobileContactListActivity$3
  implements APBladeView.OnItemClickListener
{
  MobileContactListActivity$3(MobileContactListActivity paramMobileContactListActivity)
  {
  }

  public void onItemClick(String paramString)
  {
    if (paramString != null)
    {
      int i = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#".indexOf(paramString);
      int j = MobileContactListActivity.access$100(this.this$0).getPositionForSection(i);
      if (j != -1)
        this.this$0.mContactsListView.setSelection(j);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.3
 * JD-Core Version:    0.6.2
 */