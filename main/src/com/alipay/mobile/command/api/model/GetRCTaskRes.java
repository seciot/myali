package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class GetRCTaskRes
  implements Serializable
{
  private static final long serialVersionUID = 179311493887380676L;
  private List<TaskMeta> taskMetaList;

  public List<TaskMeta> getTaskMetaList()
  {
    return this.taskMetaList;
  }

  public void setTaskMetaList(List<TaskMeta> paramList)
  {
    this.taskMetaList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.GetRCTaskRes
 * JD-Core Version:    0.6.2
 */