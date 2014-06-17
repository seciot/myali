package com.alipay.android.mini.event;

public class MiniToastArgs extends MiniEventArgs
{
  private String a;

  public MiniToastArgs(ActionType paramActionType, String paramString)
  {
    super(paramActionType);
    this.a = paramString;
  }

  public String getDataByKey(String paramString)
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.event.MiniToastArgs
 * JD-Core Version:    0.6.2
 */