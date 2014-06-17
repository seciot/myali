package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.result.FundGuideInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundLuckDrawInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundLuckEnterInfoResult;
import com.alipay.kabaoprod.biz.financial.fund.result.FundShareInfoResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundOperationManager
{
  @OperationType("alipay.kabao.asset.fund.guide.query")
  @CheckLogin
  public abstract FundGuideInfoResult getFundGuideInfo();

  @OperationType("alipay.kabao.asset.fund.lottery.detail.query")
  @CheckLogin
  public abstract FundLuckDrawInfoResult getFundLuckDrawInfo();

  @OperationType("alipay.kabao.asset.fund.lottery.enter.query")
  @CheckLogin
  public abstract FundLuckEnterInfoResult getFundLuckEnterInfo();

  @OperationType("alipay.kabao.asset.fund.share.detail.query")
  @CheckLogin
  public abstract FundShareInfoResult getFundShareInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundOperationManager
 * JD-Core Version:    0.6.2
 */