package com.alipay.mobile.base.resourceclean;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TasksExecutor
  implements Runnable
{
  private static final List<Task> a;

  static
  {
    ArrayList localArrayList = new ArrayList();
    a = localArrayList;
    localArrayList.add(new CleanCampusAppTask());
  }

  public void run()
  {
    try
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
        ((Task)localIterator.next()).a();
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.resourceclean.TasksExecutor
 * JD-Core Version:    0.6.2
 */