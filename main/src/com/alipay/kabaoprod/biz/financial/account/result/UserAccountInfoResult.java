package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.financial.account.model.UserAssetInfo;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.Map;

public class UserAccountInfoResult extends KabaoCommonResult
{
  public double availableBalance;
  public String bindingMobileNo;
  public Map<String, String> contextMap;
  public int couponNums;
  public int pointNums;
  public boolean queryCoupon = false;
  public boolean showCreditScore = false;
  public UserAssetInfo userAssetInfo;

  public double getAvailableBalance()
  {
    return this.availableBalance;
  }

  public String getBindingMobileNo()
  {
    return this.bindingMobileNo;
  }

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
  }

  public int getCouponNums()
  {
    return this.couponNums;
  }

  public int getPointNums()
  {
    return this.pointNums;
  }

  public UserAssetInfo getUserAssetInfo()
  {
    return this.userAssetInfo;
  }

  public boolean isQueryCoupon()
  {
    return this.queryCoupon;
  }

  public boolean isShowCreditScore()
  {
    return this.showCreditScore;
  }

  public void setAvailableBalance(double paramDouble)
  {
    this.availableBalance = paramDouble;
  }

  public void setBindingMobileNo(String paramString)
  {
    this.bindingMobileNo = paramString;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
  }

  public void setCouponNums(int paramInt)
  {
    this.couponNums = paramInt;
  }

  public void setPointNums(int paramInt)
  {
    this.pointNums = paramInt;
  }

  public void setQueryCoupon(boolean paramBoolean)
  {
    this.queryCoupon = paramBoolean;
  }

  public void setShowCreditScore(boolean paramBoolean)
  {
    this.showCreditScore = paramBoolean;
  }

  public void setUserAssetInfo(UserAssetInfo paramUserAssetInfo)
  {
    this.userAssetInfo = paramUserAssetInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.UserAccountInfoResult
 * JD-Core Version:    0.6.2
 */