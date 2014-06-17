package com.alipay.mobilebill.biz.rpc.ebill;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.biz.rpc.ebill.request.AnnualEbillRequest;
import com.alipay.mobilebill.biz.rpc.ebill.request.CanEnterAnnualEbillRequest;
import com.alipay.mobilebill.biz.rpc.ebill.request.PositionRequest;
import com.alipay.mobilebill.biz.rpc.ebill.result.AnnualEbillResult;
import com.alipay.mobilebill.biz.rpc.ebill.result.RankingResult;
import com.alipay.mobilebill.biz.rpc.ebill.result.ShakingResult;

public abstract interface AnnualEbillRPCService
{
  @OperationType("alipay.mobile.bill.bundingUserLocation")
  public abstract Boolean bundingUserLocation(PositionRequest paramPositionRequest);

  @OperationType("alipay.mobile.bill.canEnterAnnualEbill")
  public abstract Boolean canEnterAnnualEbill(CanEnterAnnualEbillRequest paramCanEnterAnnualEbillRequest);

  @OperationType("alipay.mobile.bill.pkWithNearby")
  public abstract ShakingResult pkWithNearby(PositionRequest paramPositionRequest);

  @OperationType("alipay.mobile.bill.queryAnnualEbill")
  public abstract AnnualEbillResult queryAnnualEbill(AnnualEbillRequest paramAnnualEbillRequest);

  @OperationType("alipay.mobile.bill.queryRankingWithNearby")
  public abstract RankingResult queryRankingWithNearby(PositionRequest paramPositionRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.ebill.AnnualEbillRPCService
 * JD-Core Version:    0.6.2
 */