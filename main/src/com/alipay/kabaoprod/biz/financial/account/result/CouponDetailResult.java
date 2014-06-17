package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.CouponInfo;
import java.util.Map;

public class CouponDetailResult extends KabaoCommonResult
{
  public Map<String, String> contextMap;
  public CouponInfo couponInfo;

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
  }

  public CouponInfo getCouponInfo()
  {
    return this.couponInfo;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
  }

  public void setCouponInfo(CouponInfo paramCouponInfo)
  {
    this.couponInfo = paramCouponInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.CouponDetailResult
 * JD-Core Version:    0.6.2
 */