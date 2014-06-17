package com.alipay.mobile.command.model;

import java.io.Serializable;

public class RuntimeTaskMeta
  implements Serializable
{
  private static final long serialVersionUID = 6784692273520601018L;
  private String status;
  private String taskUuid;

  public String getStatus()
  {
    return this.status;
  }

  public String getTaskUuid()
  {
    return this.taskUuid;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public void setTaskUuid(String paramString)
  {
    this.taskUuid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.RuntimeTaskMeta
 * JD-Core Version:    0.6.2
 */