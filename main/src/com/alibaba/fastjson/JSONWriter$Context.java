package com.alibaba.fastjson;

public class JSONWriter$Context
{
  private final Context parent;
  private JSONWriter.State state;

  public JSONWriter$Context(Context paramContext, JSONWriter.State paramState)
  {
    this.parent = paramContext;
    this.state = paramState;
  }

  public Context getParent()
  {
    return this.parent;
  }

  public JSONWriter.State getState()
  {
    return this.state;
  }

  public void setState(JSONWriter.State paramState)
  {
    this.state = paramState;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.JSONWriter.Context
 * JD-Core Version:    0.6.2
 */