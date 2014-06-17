package com.alipay.mobile.common.ui.contacts;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO;
import com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploader;

class MobileContactListActivity$5
  implements DialogInterface.OnClickListener
{
  MobileContactListActivity$5(MobileContactListActivity paramMobileContactListActivity)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MobileContactListActivity.access$000(this.this$0).getContactsUploader().permitContactsUpload();
    MobileContactListActivity.access$000(this.this$0).tryToUploadMobileContacts();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.5
 * JD-Core Version:    0.6.2
 */