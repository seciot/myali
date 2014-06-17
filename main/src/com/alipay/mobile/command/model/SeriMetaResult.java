package com.alipay.mobile.command.model;

public class SeriMetaResult<T>
{
  private boolean a;
  private boolean b;
  private T c;

  public T getMeta()
  {
    return this.c;
  }

  public boolean isHasMetaFile()
  {
    return this.b;
  }

  public boolean isReadSuccess()
  {
    return this.a;
  }

  public void setHasMetaFile(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public void setMeta(T paramT)
  {
    this.c = paramT;
  }

  public void setReadSuccess(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.SeriMetaResult
 * JD-Core Version:    0.6.2
 */