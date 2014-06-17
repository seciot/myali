package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.account.UserReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.alipay.mobilesecurity.core.model.account.certify.RealNameCertifyResult;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspReq;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspRes;

public abstract interface RealNameCertifyFacade
{
  @OperationType("alipay.mobile.security.realName.checkCertifyByMsp")
  public abstract CheckCertifyByMspRes checkCertifyByMsp(CheckCertifyByMspReq paramCheckCertifyByMspReq);

  @OperationType("alipay.mobile.security.realName.queryRealNameCertifyStatus")
  public abstract RealNameCertifyResult queryRealNameCertifyStatus(UserReq paramUserReq);

  @OperationType("alipay.mobile.security.realName.verifyCertifyByMsp")
  public abstract VerifyCertifyByMspRes verifyCertifyByMsp(VerifyCertifyByMspReq paramVerifyCertifyByMspReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.RealNameCertifyFacade
 * JD-Core Version:    0.6.2
 */