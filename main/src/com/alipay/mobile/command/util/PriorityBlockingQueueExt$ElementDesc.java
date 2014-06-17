package com.alipay.mobile.command.util;

class PriorityBlockingQueueExt$ElementDesc
{
  private long b = System.currentTimeMillis();
  private boolean c = false;

  PriorityBlockingQueueExt$ElementDesc(PriorityBlockingQueueExt paramPriorityBlockingQueueExt)
  {
  }

  public long getStartTime()
  {
    return this.b;
  }

  public boolean isDone()
  {
    return this.c;
  }

  public boolean isOutExpire()
  {
    return System.currentTimeMillis() - this.b > 480000L;
  }

  public void reSet()
  {
    this.b = System.currentTimeMillis();
    this.c = false;
  }

  public void setDone(boolean paramBoolean)
  {
    this.c = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.PriorityBlockingQueueExt.ElementDesc
 * JD-Core Version:    0.6.2
 */