package com.alipay.mobile.command.listener;

public abstract class AbstractListener<T>
  implements NotifyListener<T>
{
  public int compareTo(NotifyListener<T> paramNotifyListener)
  {
    return priority() - paramNotifyListener.priority();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.listener.AbstractListener
 * JD-Core Version:    0.6.2
 */