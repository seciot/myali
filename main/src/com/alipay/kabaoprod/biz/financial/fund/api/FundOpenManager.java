package com.alipay.kabaoprod.biz.financial.fund.api;

import com.alipay.kabaoprod.biz.financial.fund.request.FundOpenAccountReq;
import com.alipay.kabaoprod.biz.financial.fund.request.UserRealNameAndOpenAccountReq;
import com.alipay.kabaoprod.biz.financial.fund.result.FundOpenInfoResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface FundOpenManager
{
  @OperationType("alipay.kabao.asset.fund.open.account")
  @CheckLogin
  public abstract KabaoCommonResult fundOpenAccount(FundOpenAccountReq paramFundOpenAccountReq);

  @OperationType("alipay.kabao.asset.fund.open.account.query")
  @CheckLogin
  public abstract FundOpenInfoResult queryFundOpenInfo();

  @OperationType("alipay.kabao.asset.fund.realname.open.account")
  @CheckLogin
  public abstract KabaoCommonResult userRealNameAndOpenAccount(UserRealNameAndOpenAccountReq paramUserRealNameAndOpenAccountReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.api.FundOpenManager
 * JD-Core Version:    0.6.2
 */