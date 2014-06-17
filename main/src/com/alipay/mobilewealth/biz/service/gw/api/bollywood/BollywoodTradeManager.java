package com.alipay.mobilewealth.biz.service.gw.api.bollywood;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.bollywood.BollywoodTradeOrderReq;
import com.alipay.mobilewealth.biz.service.gw.request.bollywood.BollywoodTradeReq;
import com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodTradeOrderResult;
import com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodTradeResult;

public abstract interface BollywoodTradeManager
{
  @OperationType("alipay.wealth.fund.bollywood.trade.query")
  @CheckLogin
  public abstract BollywoodTradeOrderResult queryOrderDetail(BollywoodTradeOrderReq paramBollywoodTradeOrderReq);

  @OperationType("alipay.wealth.fund.bollywood.trade.create")
  @CheckLogin
  public abstract BollywoodTradeResult tradeBuy(BollywoodTradeReq paramBollywoodTradeReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.bollywood.BollywoodTradeManager
 * JD-Core Version:    0.6.2
 */