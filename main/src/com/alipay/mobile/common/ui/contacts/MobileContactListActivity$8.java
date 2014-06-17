package com.alipay.mobile.common.ui.contacts;

import android.os.AsyncTask;
import android.os.Handler;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO;
import com.alipay.mobileinno.common.service.facade.sns.SNSApiService;
import com.alipay.mobileinno.common.service.facade.sns.model.MessageRPCRequest;
import com.alipay.mobileinno.common.service.facade.sns.model.ShortLinkOperationResult;

class MobileContactListActivity$8 extends AsyncTask<Void, Void, Void>
{
  MobileContactListActivity$8(MobileContactListActivity paramMobileContactListActivity, String paramString)
  {
  }

  protected Void doInBackground(Void[] paramArrayOfVoid)
  {
    MessageRPCRequest localMessageRPCRequest = new MessageRPCRequest();
    localMessageRPCRequest.userId = MobileContactListActivity.access$000(this.this$0).getUserId();
    localMessageRPCRequest.mobileNo = this.val$mobileNo;
    if (MobileContactListActivity.access$200(this.this$0) != null)
      localMessageRPCRequest.extInfo = MobileContactListActivity.access$200(this.this$0).getExtData();
    ShortLinkOperationResult localShortLinkOperationResult = MobileContactListActivity.access$000(this.this$0).getSNSService().createShortLinkByMessage(localMessageRPCRequest);
    MobileContactListActivity.access$300(this.this$0).post(new MobileContactListActivity.8.1(this));
    if ((localShortLinkOperationResult != null) && (localShortLinkOperationResult.success))
      MobileContactListActivity.access$300(this.this$0).post(new MobileContactListActivity.8.2(this, localShortLinkOperationResult));
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity.8
 * JD-Core Version:    0.6.2
 */