package com.alipay.mobile.common.ui.contacts.dao;

import com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploader;
import com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploaderStrategy;

class MobileContactDAO$2
  implements Runnable
{
  MobileContactDAO$2(MobileContactDAO paramMobileContactDAO)
  {
  }

  public void run()
  {
    try
    {
      this.this$0.loadMatchInfoFromCache();
      if (MobileContactDAO.access$100(this.this$0) != null)
      {
        ContactsUploaderStrategy localContactsUploaderStrategy = new ContactsUploaderStrategy();
        localContactsUploaderStrategy.setAppend(true);
        localContactsUploaderStrategy.setUploadAllTimeInterval(30);
        MobileContactDAO.access$100(this.this$0).uploadContactsWithStrategy(localContactsUploaderStrategy, this.this$0);
        if (MobileContactDAO.access$200(this.this$0) != null)
          MobileContactDAO.access$200(this.this$0).resetShowedError();
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO.2
 * JD-Core Version:    0.6.2
 */