package com.alipay.mobile.command.api.model;

import java.io.Serializable;
import java.util.List;

public class SyncTaskMetaRes
  implements Serializable
{
  private static final long serialVersionUID = -716095409883393465L;
  private List<String> inValidTaskUUID;
  private List<TaskMeta> taskList;

  public List<String> getInValidTaskUUID()
  {
    return this.inValidTaskUUID;
  }

  public List<TaskMeta> getTaskList()
  {
    return this.taskList;
  }

  public void setInValidTaskUUID(List<String> paramList)
  {
    this.inValidTaskUUID = paramList;
  }

  public void setTaskList(List<TaskMeta> paramList)
  {
    this.taskList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.SyncTaskMetaRes
 * JD-Core Version:    0.6.2
 */