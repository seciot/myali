package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.task.TaskManager;
import com.alipay.mobile.framework.service.common.TaskScheduleService;

public class TaskScheduleServiceImpl extends TaskScheduleService
{
  private TaskManager a = TaskManager.getInstance();

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void parallelExecute(Runnable paramRunnable)
  {
    this.a.parallelExecute(paramRunnable);
  }

  public void serialExecute(Runnable paramRunnable)
  {
    this.a.serialExecute(paramRunnable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.TaskScheduleServiceImpl
 * JD-Core Version:    0.6.2
 */