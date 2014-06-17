package com.alipay.mobile.common.ui.contacts.dao;

import android.content.SharedPreferences;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobileprod.biz.contact.dto.ContactMatchRequest;

class MobileContactDAO$3
  implements Runnable
{
  MobileContactDAO$3(MobileContactDAO paramMobileContactDAO)
  {
  }

  public void run()
  {
    if (MobileContactDAO.access$200(this.this$0) != null)
    {
      ContactMatchRequest localContactMatchRequest = new ContactMatchRequest();
      if ((MobileContactDAO.access$300(this.this$0) != null) && (MobileContactDAO.access$300(this.this$0).getLong(MobileContactDAO.access$400(this.this$0), 0L) != 0L))
        MobileContactDAO.access$502(this.this$0, MobileContactDAO.access$300(this.this$0).getLong(MobileContactDAO.access$400(this.this$0), 0L));
      localContactMatchRequest.latestMatchTime = MobileContactDAO.access$500(this.this$0);
      localContactMatchRequest.tid = DeviceInfo.getInstance().getmDid();
      MobileContactDAO.access$200(this.this$0).executeBackground(localContactMatchRequest);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO.3
 * JD-Core Version:    0.6.2
 */