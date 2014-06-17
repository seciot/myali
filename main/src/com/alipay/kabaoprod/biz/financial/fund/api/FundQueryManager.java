package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundAssetAccountInfoReq;
import com.alipay.kabaoprod.biz.financial.fund.request.ProfitQueryReq;
import com.alipay.kabaoprod.biz.financial.fund.request.ProfitRateQueryReq;
import com.alipay.kabaoprod.biz.financial.fund.request.TenThousandIncomeQueryReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundAssetAccountInfoForV8Result;
import com.alipay.kabaoprod.biz.financial.fund.result.FundAssetAccountInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.ProfitQueryResult;
import com.alipay.kabaoprod.biz.financial.fund.result.ProfitRateQueryResult;
import com.alipay.kabaoprod.biz.financial.fund.result.TenThousandIncomeQueryResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundQueryManager
{
  @OperationType("alipay.kabao.asset.fund.query.getFundAssetAccountInfoForV8")
  @CheckLogin
  public abstract FundAssetAccountInfoForV8Result getFundAssetAccountInfoForV8(FundAssetAccountInfoReq paramFundAssetAccountInfoReq);

  @OperationType("alipay.kabao.asset.fund.query.getFundAssetAccountInfoV1024")
  @CheckLogin
  public abstract FundAssetAccountInfoResult getFundAssetAccountInfoV1024(FundAssetAccountInfoReq paramFundAssetAccountInfoReq);

  @OperationType("alipay.kabao.asset.fund.query.profit")
  @CheckLogin
  public abstract ProfitQueryResult getFundProfit(ProfitQueryReq paramProfitQueryReq);

  @OperationType("alipay.kabao.asset.fund.query.profit.rate")
  @CheckLogin
  public abstract ProfitRateQueryResult getFundProfitRate(ProfitRateQueryReq paramProfitRateQueryReq);

  @OperationType("alipay.kabao.asset.fund.query.tenthousandincome")
  @CheckLogin
  public abstract TenThousandIncomeQueryResult getFundTenThousandIncome(TenThousandIncomeQueryReq paramTenThousandIncomeQueryReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundQueryManager
 * JD-Core Version:    0.6.2
 */