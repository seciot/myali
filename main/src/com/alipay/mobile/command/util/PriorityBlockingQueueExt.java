package com.alipay.mobile.command.util;

import java.util.Comparator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.PriorityBlockingQueue;

public class PriorityBlockingQueueExt<TaskMetaWrap> extends PriorityBlockingQueue<TaskMetaWrap>
{
  private static final long serialVersionUID = -8275086323375143286L;
  private Map<String, PriorityBlockingQueueExt<TaskMetaWrap>.ElementDesc> addedElement = new ConcurrentHashMap();

  public PriorityBlockingQueueExt(int paramInt, Comparator<? super TaskMetaWrap> paramComparator)
  {
    super(paramInt, paramComparator);
  }

  public boolean add(TaskMetaWrap paramTaskMetaWrap)
  {
    if (!this.addedElement.containsKey(paramTaskMetaWrap.toString()))
    {
      this.addedElement.put(paramTaskMetaWrap.toString(), new PriorityBlockingQueueExt.ElementDesc(this));
      return offer(paramTaskMetaWrap);
    }
    if ((((PriorityBlockingQueueExt.ElementDesc)this.addedElement.get(paramTaskMetaWrap.toString())).isOutExpire()) && (((PriorityBlockingQueueExt.ElementDesc)this.addedElement.get(paramTaskMetaWrap.toString())).isDone()))
    {
      ((PriorityBlockingQueueExt.ElementDesc)this.addedElement.get(paramTaskMetaWrap.toString())).reSet();
      return offer(paramTaskMetaWrap);
    }
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = "当前任务被丢弃,任务是否超时:";
    arrayOfObject[1] = Boolean.valueOf(((PriorityBlockingQueueExt.ElementDesc)this.addedElement.get(paramTaskMetaWrap.toString())).isOutExpire());
    arrayOfObject[2] = ",任务是否完成:";
    arrayOfObject[3] = Boolean.valueOf(((PriorityBlockingQueueExt.ElementDesc)this.addedElement.get(paramTaskMetaWrap.toString())).isDone());
    return true;
  }

  public void completeElement(TaskMetaWrap paramTaskMetaWrap)
  {
    if (paramTaskMetaWrap == null);
    PriorityBlockingQueueExt.ElementDesc localElementDesc;
    do
    {
      return;
      localElementDesc = (PriorityBlockingQueueExt.ElementDesc)this.addedElement.get(paramTaskMetaWrap.toString());
    }
    while (localElementDesc == null);
    localElementDesc.setDone(true);
  }

  public void removeElement(TaskMetaWrap paramTaskMetaWrap)
  {
    if (paramTaskMetaWrap == null)
      return;
    this.addedElement.removeBundle(paramTaskMetaWrap.toString());
  }

  public TaskMetaWrap take()
  {
    Object localObject = super.take();
    if (this.addedElement.size() > 1000)
      this.addedElement.removeBundle(localObject.toString());
    return localObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.PriorityBlockingQueueExt
 * JD-Core Version:    0.6.2
 */