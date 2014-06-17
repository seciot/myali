package com.alipay.kabaoprod.biz.financial.account.api;

import com.alipay.kabaoprod.biz.financial.account.request.AssetAccountInfoReq;
import com.alipay.kabaoprod.biz.financial.account.request.AssetFinanceInfoReq;
import com.alipay.kabaoprod.biz.financial.account.request.AssetSignReq;
import com.alipay.kabaoprod.biz.financial.account.request.UserAccountInfoReq;
import com.alipay.kabaoprod.biz.financial.account.request.UserCouponListReq;
import com.alipay.kabaoprod.biz.financial.account.request.UserPointListReq;
import com.alipay.kabaoprod.biz.financial.account.result.AssetAccountInfoResult;
import com.alipay.kabaoprod.biz.financial.account.result.AssetFinanceInfoResult;
import com.alipay.kabaoprod.biz.financial.account.result.AssetSignResult;
import com.alipay.kabaoprod.biz.financial.account.result.UserAccountInfoResult;
import com.alipay.kabaoprod.biz.financial.account.result.UserCouponListResult;
import com.alipay.kabaoprod.biz.financial.account.result.UserPointListResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface AccountManager
{
  @OperationType("alipay.kabao.asset.account.getAssetAccountInfo")
  @CheckLogin
  public abstract AssetAccountInfoResult getAssetAccountInfo(AssetAccountInfoReq paramAssetAccountInfoReq);

  @OperationType("alipay.kabao.asset.account.getAssetFinanceInfo")
  @CheckLogin
  public abstract AssetFinanceInfoResult getAssetFinanceInfo(AssetFinanceInfoReq paramAssetFinanceInfoReq);

  @OperationType("alipay.kabao.asset.account.getAssetRemindSign")
  @CheckLogin
  public abstract AssetSignResult getAssetRemindSign(AssetSignReq paramAssetSignReq);

  @OperationType("alipay.kabao.asset.account.getUserAccountInfo")
  @CheckLogin
  public abstract UserAccountInfoResult getUserAccountInfo(UserAccountInfoReq paramUserAccountInfoReq);

  @OperationType("alipay.kabao.asset.account.getUserCouponList")
  @CheckLogin
  public abstract UserCouponListResult getUserCouponList(UserCouponListReq paramUserCouponListReq);

  @OperationType("alipay.kabao.asset.account.getUserPointList")
  @CheckLogin
  public abstract UserPointListResult getUserPointList(UserPointListReq paramUserPointListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.api.AccountManager
 * JD-Core Version:    0.6.2
 */