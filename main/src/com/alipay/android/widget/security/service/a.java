package com.alipay.android.widget.security.service;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.account.ACertifyFacade;
import com.alipay.mobilesecurity.biz.gw.service.account.RealNameCertifyFacade;
import com.alipay.mobilesecurity.biz.gw.service.account.RealNameFacade;
import com.alipay.mobilesecurity.core.model.account.UserReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.alipay.mobilesecurity.core.model.account.certify.DoRealNameReq;
import com.alipay.mobilesecurity.core.model.account.certify.DoRealNameResult;
import com.alipay.mobilesecurity.core.model.account.certify.RealNameCertifyResult;
import com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyReq;
import com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyResult;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspRes;

public final class a
{
  private RpcService a = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());

  public final CheckCertifyByMspRes a(CheckCertifyByMspReq paramCheckCertifyByMspReq)
  {
    return ((RealNameCertifyFacade)this.a.getRpcProxy(RealNameCertifyFacade.class)).checkCertifyByMsp(paramCheckCertifyByMspReq);
  }

  public final DoRealNameResult a(String paramString1, String paramString2, String paramString3)
  {
    DoRealNameReq localDoRealNameReq = new DoRealNameReq();
    localDoRealNameReq.logonId = paramString1;
    localDoRealNameReq.name = paramString2;
    localDoRealNameReq.certNo = paramString3;
    return ((RealNameFacade)this.a.getRpcProxy(RealNameFacade.class)).doRealName(localDoRealNameReq);
  }

  public final RealNameCertifyResult a(String paramString)
  {
    UserReq localUserReq = new UserReq();
    localUserReq.logonId = paramString;
    return ((RealNameCertifyFacade)this.a.getRpcProxy(RealNameCertifyFacade.class)).queryRealNameCertifyStatus(localUserReq);
  }

  public final SubmitACertifyResult a(SubmitACertifyReq paramSubmitACertifyReq)
  {
    return ((ACertifyFacade)this.a.getRpcProxy(ACertifyFacade.class)).submitACertifyInfo(paramSubmitACertifyReq);
  }

  public final VerifyCertifyByMspRes a(VerifyCertifyByMspReq paramVerifyCertifyByMspReq)
  {
    return ((RealNameCertifyFacade)this.a.getRpcProxy(RealNameCertifyFacade.class)).verifyCertifyByMsp(paramVerifyCertifyByMspReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.a
 * JD-Core Version:    0.6.2
 */