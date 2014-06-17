package com.alipay.android.app.display.event;

public abstract class AllowBackChangedEventArgs extends MspEventArgs
{
  public static final String MESSAGE = "message";
  public static final String VALUE = "value";

  public AllowBackChangedEventArgs()
  {
    super(EventType.x);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.event.AllowBackChangedEventArgs
 * JD-Core Version:    0.6.2
 */