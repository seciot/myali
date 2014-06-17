package com.alipay.mobile.withdraw.rpc;

import com.alipay.kabaoprod.biz.financial.withdraw.api.WithdrawAssetManager;
import com.alipay.kabaoprod.biz.financial.withdraw.request.WithdrawReq;
import com.alipay.kabaoprod.biz.financial.withdraw.result.PreWithdrawResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;

public class WithdrawRpcBiz
{
  RpcService a;
  private ActivityApplication b;

  public WithdrawRpcBiz(ActivityApplication paramActivityApplication)
  {
    this.b = paramActivityApplication;
    this.a = ((RpcService)this.b.getServiceByInterface(RpcService.class.getName()));
  }

  public final PreWithdrawResult a()
  {
    return ((WithdrawAssetManager)this.a.getRpcProxy(WithdrawAssetManager.class)).getPreWithdrawInfo();
  }

  public final KabaoCommonResult a(WithdrawReq paramWithdrawReq)
  {
    return ((WithdrawAssetManager)this.a.getRpcProxy(WithdrawAssetManager.class)).doWithdrawInfo(paramWithdrawReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.rpc.WithdrawRpcBiz
 * JD-Core Version:    0.6.2
 */