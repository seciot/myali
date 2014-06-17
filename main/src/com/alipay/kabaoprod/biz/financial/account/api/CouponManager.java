package com.alipay.kabaoprod.biz.financial.account.api;

import com.alipay.kabaoprod.biz.financial.account.request.UserCouponListReq;
import com.alipay.kabaoprod.biz.financial.account.result.CouponDetailResult;
import com.alipay.kabaoprod.biz.financial.account.result.UserCouponListResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface CouponManager
{
  @OperationType("alipay.kabao.asset.coupon.query.list")
  @CheckLogin
  public abstract UserCouponListResult getUserCouponList(UserCouponListReq paramUserCouponListReq);

  @OperationType("alipay.kabao.asset.coupon.query.detail")
  @CheckLogin
  public abstract CouponDetailResult queryCouponDetailById(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.api.CouponManager
 * JD-Core Version:    0.6.2
 */