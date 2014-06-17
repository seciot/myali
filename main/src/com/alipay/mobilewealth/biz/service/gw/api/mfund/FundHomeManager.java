package com.alipay.mobilewealth.biz.service.gw.api.mfund;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundHomeInfoReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundHomeInfoResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundHomeInfoV0320Result;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundHomeInfoV1226Result;

public abstract interface FundHomeManager
{
  @OperationType("alipay.wealth.mfund.query.queryFundHomeInfoV0320")
  @CheckLogin
  public abstract FundHomeInfoV0320Result queryFundHomeInfoV0320(FundHomeInfoReq paramFundHomeInfoReq);

  @OperationType("alipay.kabao.asset.fund.account.detail.query")
  @CheckLogin
  public abstract FundHomeInfoResult queryFundHomeInfoV0815(String paramString);

  @OperationType("alipay.kabao.asset.fund.account.detail.getFundAssetAccountInfoV0912")
  @CheckLogin
  public abstract FundHomeInfoResult queryFundHomeInfoV0915(FundHomeInfoReq paramFundHomeInfoReq);

  @OperationType("alipay.kabao.asset.fund.query.getFundAssetAccountInfoV1024")
  @CheckLogin
  public abstract FundHomeInfoResult queryFundHomeInfoV1029(FundHomeInfoReq paramFundHomeInfoReq);

  @OperationType("alipay.kabao.asset.fund.query.getFundAssetAccountInfoForV8")
  @CheckLogin
  public abstract FundHomeInfoV1226Result queryFundHomeInfoV1226(FundHomeInfoReq paramFundHomeInfoReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.mfund.FundHomeManager
 * JD-Core Version:    0.6.2
 */