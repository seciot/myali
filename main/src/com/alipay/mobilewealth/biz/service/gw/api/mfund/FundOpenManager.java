package com.alipay.mobilewealth.biz.service.gw.api.mfund;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.FundOpenAccountReq;
import com.alipay.mobilewealth.biz.service.gw.request.mfund.UserRealNameAndOpenAccountReq;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundIntroductionResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundOpenInfoResult;
import com.alipay.mobilewealth.biz.service.gw.result.mfund.FundOpenInfoV0Result;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;

public abstract interface FundOpenManager
{
  @OperationType("alipay.kabao.asset.fund.open.account")
  @CheckLogin
  public abstract CommonResult fundOpenAccount(FundOpenAccountReq paramFundOpenAccountReq);

  @OperationType("alipay.kabao.asset.fund.operation.query")
  @CheckLogin
  public abstract FundIntroductionResult queryFundIntroduction();

  @OperationType("alipay.kabao.asset.fund.open.account.query")
  @CheckLogin
  public abstract FundOpenInfoResult queryFundOpenInfo();

  @OperationType("alipay.kabao.asset.fund.open.query")
  @CheckLogin
  public abstract FundOpenInfoV0Result queryFundOpenInfoV0();

  @OperationType("alipay.kabao.asset.fund.realname.open.account")
  @CheckLogin
  public abstract CommonResult userRealNameAndOpenAccount(UserRealNameAndOpenAccountReq paramUserRealNameAndOpenAccountReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.api.mfund.FundOpenManager
 * JD-Core Version:    0.6.2
 */