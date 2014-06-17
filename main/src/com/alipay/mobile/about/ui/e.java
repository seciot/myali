package com.alipay.mobile.about.ui;

import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileapp.common.service.facade.about.UserProposalFacade;
import com.alipay.mobileapp.common.service.facade.about.UserProposalReq;
import com.alipay.mobileapp.common.service.facade.about.UserProposalRes;

final class e
  implements Runnable
{
  e(AboutFeedbackActivity paramAboutFeedbackActivity)
  {
  }

  public final void run()
  {
    UserProposalFacade localUserProposalFacade = (UserProposalFacade)((RpcService)AboutFeedbackActivity.a(this.a, RpcService.class.getName())).getRpcProxy(UserProposalFacade.class);
    UserProposalReq localUserProposalReq = AboutFeedbackActivity.f(this.a);
    try
    {
      UserProposalRes localUserProposalRes = localUserProposalFacade.saveUserProposalInfo(localUserProposalReq);
      if ((localUserProposalRes != null) && ((localUserProposalRes.resultStatus == 1000) || (localUserProposalRes.resultStatus == 5002)))
      {
        this.a.alert(null, this.a.getText(R.string.V).toString(), this.a.getText(R.string.e).toString(), new f(this), null, null);
        return;
      }
      this.a.toast("提交失败，请稍候再试", 1);
      return;
    }
    catch (RpcException localRpcException)
    {
      localRpcException.getLocalizedMessage();
      throw localRpcException;
    }
    catch (Exception localException)
    {
      localException.getLocalizedMessage();
      this.a.toast("提交失败，请稍候再试", 1);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.e
 * JD-Core Version:    0.6.2
 */