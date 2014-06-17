package com.alipay.mobile.common.ui.contacts;

import com.alipay.mobile.commonui.widget.APInputBox;

class MobileContactListActivity$7
  implements Runnable
{
  private Object a = new Boolean(true);

  MobileContactListActivity$7(MobileContactListActivity paramMobileContactListActivity)
  {
  }

  public void run()
  {
    synchronized (this.a)
    {
      new StringBuilder("search:").append(this.this$0.mSearchInput.getInputedText()).toString();
      this.this$0.getContactSerched(this.this$0.mSearchInput.getInputedText());
      new StringBuilder("search done:").append(this.this$0.mSearchInput.getInputedText()).toString();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.7
 * JD-Core Version:    0.6.2
 */