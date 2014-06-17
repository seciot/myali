package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.publiccore.client.req.ApplyThirdAccountReq;
import com.alipay.publiccore.client.req.ThirdAccountMemoNameReq;
import com.alipay.publiccore.client.result.ApplyThirdAccountRes;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public abstract interface ThirdPartyAccountRpcFacade
{
  @OperationType("alipay.publicplatform.account.applyThirdAccount")
  @CheckLogin
  public abstract ApplyThirdAccountRes applyThirdAccount(ApplyThirdAccountReq paramApplyThirdAccountReq);

  @OperationType("alipay.publicplatform.account.thirdAccount.remove.byAgreementId")
  @CheckLogin
  public abstract PublicResult removeThirdAccount(String paramString);

  @OperationType("alipay.publicplatform.account.thirdAccount.update.memoName")
  @CheckLogin
  public abstract PublicResult updateThirdAccount(ThirdAccountMemoNameReq paramThirdAccountMemoNameReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.ThirdPartyAccountRpcFacade
 * JD-Core Version:    0.6.2
 */