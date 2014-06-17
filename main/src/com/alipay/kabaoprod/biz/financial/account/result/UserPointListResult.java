package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonPageResult;
import com.alipay.kabaoprod.core.model.model.PointInfo;
import java.util.List;
import java.util.Map;

public class UserPointListResult extends KabaoCommonPageResult
{
  public Map<String, String> contextMap;
  public List<PointInfo> pointInfoList;
  public int pointNums;

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
  }

  public List<PointInfo> getPointInfoList()
  {
    return this.pointInfoList;
  }

  public int getPointNums()
  {
    return this.pointNums;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
  }

  public void setPointInfoList(List<PointInfo> paramList)
  {
    this.pointInfoList = paramList;
  }

  public void setPointNums(int paramInt)
  {
    this.pointNums = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.UserPointListResult
 * JD-Core Version:    0.6.2
 */