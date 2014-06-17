package com.alipay.mobile.command.model;

import java.io.Serializable;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class TaskMetaCollect
  implements Serializable
{
  private static final long serialVersionUID = -7783768345967535374L;
  private Map<String, TaskMetaWrap> taskWrapMap = new ConcurrentHashMap();

  public Map<String, TaskMetaWrap> getTaskWrapMap()
  {
    return this.taskWrapMap;
  }

  public void setTaskWrapMap(Map<String, TaskMetaWrap> paramMap)
  {
    this.taskWrapMap = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.TaskMetaCollect
 * JD-Core Version:    0.6.2
 */