package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonPageResult;
import com.alipay.kabaoprod.core.model.model.CouponInfo;
import java.util.List;
import java.util.Map;

public class UserCouponListResult extends KabaoCommonPageResult
{
  public Map<String, String> contextMap;
  public List<CouponInfo> couponInfoList;

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
  }

  public List<CouponInfo> getCouponInfoList()
  {
    return this.couponInfoList;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
  }

  public void setCouponInfoList(List<CouponInfo> paramList)
  {
    this.couponInfoList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.UserCouponListResult
 * JD-Core Version:    0.6.2
 */