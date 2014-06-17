package com.alipay.aggrbillinfo.biz.mgnt.task.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;

public class TaskInfoResult extends Result
{
  public TaskInfo task = new TaskInfo();

  public TaskInfo getTask()
  {
    return this.task;
  }

  public void setTask(TaskInfo paramTaskInfo)
  {
    this.task = paramTaskInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.task.info.TaskInfoResult
 * JD-Core Version:    0.6.2
 */