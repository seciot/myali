package com.alipay.mobile.command.listener;

import java.util.List;

public abstract interface NotifyListener<T> extends Comparable<NotifyListener<T>>
{
  public abstract String desrc();

  public abstract List<String> focusTask();

  public abstract boolean isMatch(String paramString);

  public abstract boolean notify(T paramT);

  public abstract int priority();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.listener.NotifyListener
 * JD-Core Version:    0.6.2
 */