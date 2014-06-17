package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundApplyTransferInReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundOpenAccountReq;
import com.alipay.kabaoprod.biz.financial.fund.request.FundTransferOutReq;
import com.alipay.kabaoprod.biz.financial.fund.request.QueryFundTradeRecordReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferInResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundApplyTransferOutResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundAssetsInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundOpenAssetsInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundOperationInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.QueryFundTradeRecordResult;
import com.alipay.kabaoprod.biz.financial.fund.result.QueryFundUserCertifyResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundAssetManager
{
  @OperationType("alipay.kabao.asset.fund.transferin.apply")
  @CheckLogin
  public abstract FundApplyTransferInResult fundApplyTransferIn(FundApplyTransferInReq paramFundApplyTransferInReq);

  @OperationType("alipay.kabao.asset.fund.transferout.apply")
  @CheckLogin
  public abstract FundApplyTransferOutResult fundApplyTransferOut(String paramString);

  @OperationType("alipay.kabao.asset.fund.open")
  @CheckLogin
  public abstract KabaoCommonResult fundOpenAccount(FundOpenAccountReq paramFundOpenAccountReq);

  @OperationType("alipay.kabao.asset.fund.transferout")
  @CheckLogin
  public abstract KabaoCommonResult fundTransferOut(FundTransferOutReq paramFundTransferOutReq);

  @OperationType("alipay.kabao.asset.fund.detail.query")
  @CheckLogin
  public abstract FundAssetsInfoResult getFundAssetsInfo(String paramString);

  @OperationType("alipay.kabao.asset.fund.open.query")
  @CheckLogin
  public abstract FundOpenAssetsInfoResult getFundOpenAssetsInfo();

  @OperationType("alipay.kabao.asset.fund.operation.query")
  @CheckLogin
  public abstract FundOperationInfoResult getFundOperationInfo();

  @OperationType("alipay.kabao.asset.fund.traderecord.query")
  @CheckLogin
  public abstract QueryFundTradeRecordResult queryFundTradeRecord(QueryFundTradeRecordReq paramQueryFundTradeRecordReq);

  @OperationType("alipay.kabao.asset.fund.user.certify")
  @CheckLogin
  public abstract QueryFundUserCertifyResult queryFundUserCertify();

  @OperationType("alipay.kabao.asset.fund.transferin.result")
  @CheckLogin
  public abstract KabaoCommonResult queryTransferInResult(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundAssetManager
 * JD-Core Version:    0.6.2
 */