package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.util.List;

public class PassTimelineInfo extends ToString
{
  public String passDate;
  public List<PassBaseInfo> passList;

  public String getPassDate()
  {
    return this.passDate;
  }

  public List<PassBaseInfo> getPassList()
  {
    return this.passList;
  }

  public void setPassDate(String paramString)
  {
    this.passDate = paramString;
  }

  public void setPassList(List<PassBaseInfo> paramList)
  {
    this.passList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.PassTimelineInfo
 * JD-Core Version:    0.6.2
 */