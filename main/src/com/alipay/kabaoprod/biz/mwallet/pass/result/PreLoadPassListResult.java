package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import java.util.List;

public class PreLoadPassListResult extends KabaoCommonResult
{
  public List<PassTimelineInfo> couponList;
  public String couponUpdateFlag;
  public Long passListPreLoaderInterval;
  public List<PassTimelineInfo> travelList;
  public String travelUpdateFlag;

  public List<PassTimelineInfo> getCouponList()
  {
    return this.couponList;
  }

  public String getCouponUpdateFlag()
  {
    return this.couponUpdateFlag;
  }

  public Long getPassListPreLoaderInterval()
  {
    return this.passListPreLoaderInterval;
  }

  public List<PassTimelineInfo> getTravelList()
  {
    return this.travelList;
  }

  public String getTravelUpdateFlag()
  {
    return this.travelUpdateFlag;
  }

  public void setCouponList(List<PassTimelineInfo> paramList)
  {
    this.couponList = paramList;
  }

  public void setCouponUpdateFlag(String paramString)
  {
    this.couponUpdateFlag = paramString;
  }

  public void setPassListPreLoaderInterval(Long paramLong)
  {
    this.passListPreLoaderInterval = paramLong;
  }

  public void setTravelList(List<PassTimelineInfo> paramList)
  {
    this.travelList = paramList;
  }

  public void setTravelUpdateFlag(String paramString)
  {
    this.travelUpdateFlag = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.PreLoadPassListResult
 * JD-Core Version:    0.6.2
 */