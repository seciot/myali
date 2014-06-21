package com.alipay.mobile.nfc.ui;

import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileapp.common.service.facade.about.UserProposalFacade;
import com.alipay.mobileapp.common.service.facade.about.UserProposalRes;

class NFCFeedBackActivity$4
  implements Runnable
{
  NFCFeedBackActivity$4(NFCFeedBackActivity paramNFCFeedBackActivity)
  {
  }

  public void run()
  {
    UserProposalRes localUserProposalRes = ((UserProposalFacade)((RpcService)NFCFeedBackActivity.d(this.a, RpcService.class.getName())).getRpcProxy(UserProposalFacade.class)).saveUserProposalInfo(NFCFeedBackActivity.h(this.a));
    if ((localUserProposalRes != null) && ((localUserProposalRes.resultStatus == 1000) || (localUserProposalRes.resultStatus == 5002)))
    {
      this.a.toast("提交成功，感谢您的反馈", 1);
      this.a.finish();
      return;
    }
    this.a.toast("提交失败，请稍候再试", 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCFeedBackActivity.4
 * JD-Core Version:    0.6.2
 */