package com.alipay.kabaoprod.biz.financial.withdraw.api;

import com.alipay.kabaoprod.biz.financial.withdraw.request.WithdrawReq;
import com.alipay.kabaoprod.biz.financial.withdraw.result.PreWithdrawResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface WithdrawAssetManager
{
  @OperationType("alipay.kabao.asset.withdrawReq.doWithdrawInfo")
  @CheckLogin
  public abstract KabaoCommonResult doWithdrawInfo(WithdrawReq paramWithdrawReq);

  @OperationType("alipay.kabao.asset.withdrawReq.getPreWithdrawInfo")
  @CheckLogin
  public abstract PreWithdrawResult getPreWithdrawInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.withdraw.api.WithdrawAssetManager
 * JD-Core Version:    0.6.2
 */