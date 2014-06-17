package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundAssetAccountInfoReq;
import com.alipay.kabaoprod.biz.financial.fund.request.QueryFundTradeRecordReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundAssetAccountInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.QueryFundTradeRecordResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundCommonManager
{
  @OperationType("alipay.kabao.asset.fund.account.detail.query")
  @CheckLogin
  public abstract FundAssetAccountInfoResult getFundAssetAccountInfo(String paramString);

  @OperationType("alipay.kabao.asset.fund.account.detail.getFundAssetAccountInfoV0912")
  @CheckLogin
  public abstract FundAssetAccountInfoResult getFundAssetAccountInfoV0912(FundAssetAccountInfoReq paramFundAssetAccountInfoReq);

  @OperationType("alipay.kabao.asset.fund.trade.record.query")
  @CheckLogin
  public abstract QueryFundTradeRecordResult queryFundTradeRecord(QueryFundTradeRecordReq paramQueryFundTradeRecordReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundCommonManager
 * JD-Core Version:    0.6.2
 */