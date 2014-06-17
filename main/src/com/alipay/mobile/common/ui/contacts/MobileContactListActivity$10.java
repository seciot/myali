package com.alipay.mobile.common.ui.contacts;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

class MobileContactListActivity$10 extends BroadcastReceiver
{
  MobileContactListActivity$10(MobileContactListActivity paramMobileContactListActivity, String paramString)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    switch (getResultCode())
    {
    default:
      return;
    case -1:
    }
    Toast.makeText(this.this$0, "短信发送成功", 0).show();
    this.this$0.testSNSService(this.val$sendto);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.10
 * JD-Core Version:    0.6.2
 */