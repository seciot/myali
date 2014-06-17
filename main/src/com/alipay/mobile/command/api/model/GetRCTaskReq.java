package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class GetRCTaskReq
  implements Serializable
{
  private static final long serialVersionUID = 6807439427638068638L;
  private List<MapConstructor> clientInfo;
  private List<String> taskUUID;

  public List<MapConstructor> getClientInfo()
  {
    return this.clientInfo;
  }

  public List<String> getTaskUUID()
  {
    return this.taskUUID;
  }

  public void setClientInfo(List<MapConstructor> paramList)
  {
    this.clientInfo = paramList;
  }

  public void setTaskUUID(List<String> paramList)
  {
    this.taskUUID = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.GetRCTaskReq
 * JD-Core Version:    0.6.2
 */