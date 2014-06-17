package com.alipay.mobilewealth.biz.service.gw.api.mfund;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundBillQueryReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundFreezeDetailQueryReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundBillQueryResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundFreezeDetailQueryResult;

public abstract interface FundBillQueryManager
{
  @OperationType("alipay.kabao.asset.fund.trade.record.query")
  @CheckLogin
  public abstract FundBillQueryResult queryFundBill(FundBillQueryReq paramFundBillQueryReq);

  @OperationType("alipay.wealth.mfund.query.fundfreeze.details")
  @CheckLogin
  public abstract FundFreezeDetailQueryResult queryFundFreezeDetails(FundFreezeDetailQueryReq paramFundFreezeDetailQueryReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.mfund.FundBillQueryManager
 * JD-Core Version:    0.6.2
 */