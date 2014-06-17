package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.framework.service.CommonService;

public abstract class TaskScheduleService extends CommonService
{
  public abstract void parallelExecute(Runnable paramRunnable);

  public abstract void serialExecute(Runnable paramRunnable);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.TaskScheduleService
 * JD-Core Version:    0.6.2
 */