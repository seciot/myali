package com.alipay.mobilesecurity.biz.gw.service.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilesecurity.core.model.account.certify.DoRealNameReq;
import com.alipay.mobilesecurity.core.model.account.certify.DoRealNameResult;

public abstract interface RealNameFacade
{
  @OperationType("alipay.mobile.security.realName.doRealName")
  public abstract DoRealNameResult doRealName(DoRealNameReq paramDoRealNameReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.biz.gw.service.account.RealNameFacade
 * JD-Core Version:    0.6.2
 */