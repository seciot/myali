package com.alipay.mobileprod.biz.recharge;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderReq;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderRes;
import com.alipay.mobileprod.biz.recharge.dto.QueryEcardReq;
import com.alipay.mobileprod.biz.recharge.dto.QueryEcardRes;

public abstract interface MobileRechargeService
{
  @OperationType("alipay.virtual.recharge.mobile.createOrder")
  public abstract CreateOrderRes create(CreateOrderReq paramCreateOrderReq);

  @OperationType("alipay.virtual.recharge.mobile.queryEcard")
  public abstract QueryEcardRes queryEcard(QueryEcardReq paramQueryEcardReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.MobileRechargeService
 * JD-Core Version:    0.6.2
 */