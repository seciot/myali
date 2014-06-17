package com.alipay.aggrbillinfo.biz.mgnt.task.info;

import com.alipay.aggrbillinfo.common.service.facade.model.ToString;

public class ActionCompleteInfo extends ToString
{
  public String actionId;
  public String input;
  public boolean isSkip;
  public String taskId;

  public String getActionId()
  {
    return this.actionId;
  }

  public String getInput()
  {
    return this.input;
  }

  public String getTaskId()
  {
    return this.taskId;
  }

  public boolean isSkip()
  {
    return this.isSkip;
  }

  public void setActionId(String paramString)
  {
    this.actionId = paramString;
  }

  public void setInput(String paramString)
  {
    this.input = paramString;
  }

  public void setSkip(boolean paramBoolean)
  {
    this.isSkip = paramBoolean;
  }

  public void setTaskId(String paramString)
  {
    this.taskId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.task.info.ActionCompleteInfo
 * JD-Core Version:    0.6.2
 */