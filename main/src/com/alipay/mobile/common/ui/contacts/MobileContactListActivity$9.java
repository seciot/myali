package com.alipay.mobile.common.ui.contacts;

import android.os.AsyncTask;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO;
import com.alipay.mobileinno.common.service.facade.sns.SNSApiService;
import com.alipay.mobileinno.common.service.facade.sns.model.MessageRPCRequest;

class MobileContactListActivity$9 extends AsyncTask<Void, Void, Void>
{
  MobileContactListActivity$9(MobileContactListActivity paramMobileContactListActivity, String paramString)
  {
  }

  protected Void doInBackground(Void[] paramArrayOfVoid)
  {
    MessageRPCRequest localMessageRPCRequest = new MessageRPCRequest();
    localMessageRPCRequest.userId = MobileContactListActivity.access$000(this.this$0).getUserId();
    localMessageRPCRequest.mobileNo = this.val$sendto;
    if (MobileContactListActivity.access$200(this.this$0) != null)
      localMessageRPCRequest.extInfo = MobileContactListActivity.access$200(this.this$0).getExtData();
    MobileContactListActivity.access$000(this.this$0).getSNSService().createSNSByMessage(localMessageRPCRequest);
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.9
 * JD-Core Version:    0.6.2
 */