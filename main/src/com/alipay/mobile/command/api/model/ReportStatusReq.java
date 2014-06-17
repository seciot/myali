package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class ReportStatusReq
  implements Serializable
{
  private static final long serialVersionUID = -1087460542791669037L;
  private List<TaskExecuteResultReq> executeResults;
  private List<MapConstructor> extend;

  public List<TaskExecuteResultReq> getExecuteResults()
  {
    return this.executeResults;
  }

  public List<MapConstructor> getExtend()
  {
    return this.extend;
  }

  public void setExecuteResults(List<TaskExecuteResultReq> paramList)
  {
    this.executeResults = paramList;
  }

  public void setExtend(List<MapConstructor> paramList)
  {
    this.extend = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.ReportStatusReq
 * JD-Core Version:    0.6.2
 */