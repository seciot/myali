package com.alipay.mobile.about.a;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileapp.biz.rpc.img.UploadImgResult;
import com.alipay.mobileapp.biz.rpc.img.UploadImgService;
import com.alipay.mobileapp.common.service.facade.about.UserProposalFacade;
import com.alipay.mobileapp.common.service.facade.about.UserProposalReq;
import com.alipay.mobileapp.common.service.facade.about.UserProposalRes;

public final class b
{
  RpcService a = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());

  public final UploadImgResult a(String paramString)
  {
    return ((UploadImgService)this.a.getRpcProxy(UploadImgService.class)).upload(paramString);
  }

  public final UserProposalRes a(UserProposalReq paramUserProposalReq)
  {
    return ((UserProposalFacade)this.a.getRpcProxy(UserProposalFacade.class)).saveUserProposalInfo(paramUserProposalReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.a.b
 * JD-Core Version:    0.6.2
 */