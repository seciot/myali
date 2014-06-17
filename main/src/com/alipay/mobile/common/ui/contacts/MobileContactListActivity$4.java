package com.alipay.mobile.common.ui.contacts;

import com.alipay.mobile.common.ui.contacts.adapter.MobileSectionListAdapter.OnShearBtnClickListener;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;

class MobileContactListActivity$4
  implements MobileSectionListAdapter.OnShearBtnClickListener
{
  MobileContactListActivity$4(MobileContactListActivity paramMobileContactListActivity)
  {
  }

  public void onClick(ContactPerson paramContactPerson)
  {
    this.this$0.testShorLinkService(paramContactPerson.mobileNumber);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.4
 * JD-Core Version:    0.6.2
 */