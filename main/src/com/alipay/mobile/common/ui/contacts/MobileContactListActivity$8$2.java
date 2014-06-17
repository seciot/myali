package com.alipay.mobile.common.ui.contacts;

import com.alipay.mobileinno.common.service.facade.sns.model.ShortLinkOperationResult;

class MobileContactListActivity$8$2
  implements Runnable
{
  MobileContactListActivity$8$2(MobileContactListActivity.8 param8, ShortLinkOperationResult paramShortLinkOperationResult)
  {
  }

  public void run()
  {
    this.this$1.this$0.sendSMS(this.val$result.content, this.this$1.val$mobileNo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.8.2
 * JD-Core Version:    0.6.2
 */