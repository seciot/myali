package com.alipay.mobile.command.api.model;

import java.io.Serializable;

public class TaskExecuteResultReq
  implements Serializable
{
  private static final long serialVersionUID = -8077144261718268963L;
  private String state;
  private String uuid;

  public String getState()
  {
    return this.state;
  }

  public String getUuid()
  {
    return this.uuid;
  }

  public void setState(String paramString)
  {
    this.state = paramString;
  }

  public void setUuid(String paramString)
  {
    this.uuid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.api.model.TaskExecuteResultReq
 * JD-Core Version:    0.6.2
 */