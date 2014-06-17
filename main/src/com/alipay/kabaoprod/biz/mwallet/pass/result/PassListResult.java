package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import java.util.List;

public class PassListResult extends KabaoCommonResult
{
  public int hasCurrent = 1;
  public int hasMore = 1;
  public int hasPast = 1;
  public Long passListPreLoaderInterval;
  public List<PassTimelineInfo> passTimelineList;
  public String updateFlag;

  public int getHasCurrent()
  {
    return this.hasCurrent;
  }

  public int getHasMore()
  {
    return this.hasMore;
  }

  public int getHasPast()
  {
    return this.hasPast;
  }

  public Long getPassListPreLoaderInterval()
  {
    return this.passListPreLoaderInterval;
  }

  public List<PassTimelineInfo> getPassTimelineList()
  {
    return this.passTimelineList;
  }

  public String getUpdateFlag()
  {
    return this.updateFlag;
  }

  public void setHasCurrent(int paramInt)
  {
    this.hasCurrent = paramInt;
  }

  public void setHasMore(int paramInt)
  {
    this.hasMore = paramInt;
  }

  public void setHasPast(int paramInt)
  {
    this.hasPast = paramInt;
  }

  public void setPassListPreLoaderInterval(Long paramLong)
  {
    this.passListPreLoaderInterval = paramLong;
  }

  public void setPassTimelineList(List<PassTimelineInfo> paramList)
  {
    this.passTimelineList = paramList;
  }

  public void setUpdateFlag(String paramString)
  {
    this.updateFlag = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult
 * JD-Core Version:    0.6.2
 */