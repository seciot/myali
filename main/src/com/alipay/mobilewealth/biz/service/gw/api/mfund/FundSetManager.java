package com.alipay.mobilewealth.biz.service.gw.api.mfund;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundAmoutChangeNoticeSetReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundTotalAmoutHiddenSetReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundSetQueryResult;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;

public abstract interface FundSetManager
{
  @OperationType("alipay.wealth.mfund.fundAssetChangeNoticeSet")
  @CheckLogin
  public abstract CommonResult fundAssetChangeNoticeSet(FundAmoutChangeNoticeSetReq paramFundAmoutChangeNoticeSetReq);

  @OperationType("alipay.wealth.mfund.modifyFundTotalAmoutHiddenSet")
  @CheckLogin
  public abstract CommonResult modifyFundTotalAmoutHiddenSet(FundTotalAmoutHiddenSetReq paramFundTotalAmoutHiddenSetReq);

  @OperationType("alipay.wealth.mfund.query.fundset")
  @CheckLogin
  public abstract FundSetQueryResult queryFundSetInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.mfund.FundSetManager
 * JD-Core Version:    0.6.2
 */