package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyReq;
import com.alipay.mobilesecurity.core.model.account.certify.SubmitACertifyResult;

public abstract interface ACertifyFacade
{
  @OperationType("alipay.mobile.security.aCertify.submitACertifyInfo")
  public abstract SubmitACertifyResult submitACertifyInfo(SubmitACertifyReq paramSubmitACertifyReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.ACertifyFacade
 * JD-Core Version:    0.6.2
 */