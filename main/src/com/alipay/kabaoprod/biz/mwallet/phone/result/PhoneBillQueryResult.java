package com.alipay.kabaoprod.biz.mwallet.phone.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.BizItem;
import com.alipay.kabaoprod.core.model.model.MobilePhoneInfo;
import java.util.List;

public class PhoneBillQueryResult extends KabaoCommonResult
{
  public List<BizItem> consumeBizItems;
  public MobilePhoneInfo mobilePhoneInfo;
  public List<BizItem> providerBizItems;
  public String refreshTime;

  public List<BizItem> getConsumeBizItems()
  {
    return this.consumeBizItems;
  }

  public MobilePhoneInfo getMobilePhoneInfo()
  {
    return this.mobilePhoneInfo;
  }

  public List<BizItem> getProviderBizItems()
  {
    return this.providerBizItems;
  }

  public String getRefreshTime()
  {
    return this.refreshTime;
  }

  public void setConsumeBizItems(List<BizItem> paramList)
  {
    this.consumeBizItems = paramList;
  }

  public void setMobilePhoneInfo(MobilePhoneInfo paramMobilePhoneInfo)
  {
    this.mobilePhoneInfo = paramMobilePhoneInfo;
  }

  public void setProviderBizItems(List<BizItem> paramList)
  {
    this.providerBizItems = paramList;
  }

  public void setRefreshTime(String paramString)
  {
    this.refreshTime = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.phone.result.PhoneBillQueryResult
 * JD-Core Version:    0.6.2
 */