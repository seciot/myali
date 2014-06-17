package com.alipay.mobile.common.ui.contacts;

import android.os.Handler;
import android.os.Message;

class MobileContactListActivity$1 extends Handler
{
  MobileContactListActivity$1(MobileContactListActivity paramMobileContactListActivity)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    new StringBuilder("message:").append(paramMessage.what).toString();
    this.this$0.updateFromDao(paramMessage);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.1
 * JD-Core Version:    0.6.2
 */