package com.alipay.android.mini.event;

public class MiniGuideEventArgs extends MiniEventArgs
{
  private String a;

  public MiniGuideEventArgs(String paramString)
  {
    super(ActionType.p);
    this.a = paramString;
  }

  public String getDataByKey(String paramString)
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.event.MiniGuideEventArgs
 * JD-Core Version:    0.6.2
 */