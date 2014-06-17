package com.alipay.mobile.common.ui.contacts.dao;

import android.widget.Toast;

class MobileContactDAO$MatchMobileRequest$1
  implements Runnable
{
  MobileContactDAO$MatchMobileRequest$1(MobileContactDAO.MatchMobileRequest paramMatchMobileRequest, String paramString)
  {
  }

  public void run()
  {
    Toast localToast = Toast.makeText(MobileContactDAO.access$1000(this.this$1.this$0), this.val$message, 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO.MatchMobileRequest.1
 * JD-Core Version:    0.6.2
 */