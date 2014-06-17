package com.alipay.android.mini.event;

public abstract class MiniReadSmsArgs extends MiniEventArgs
{
  public MiniReadSmsArgs()
  {
    super(ActionType.m);
  }

  public abstract void reSendSuccess();

  public abstract void readSuccess(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.event.MiniReadSmsArgs
 * JD-Core Version:    0.6.2
 */