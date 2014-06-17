package com.alipay.android.phone.publicplatform.main.model;

public class MsgCountModelItem
{
  private int a;
  private String b;
  private int c;

  public MsgCountModelItem(int paramInt1, String paramString, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramString;
    this.c = paramInt2;
  }

  public int getCount()
  {
    return this.c;
  }

  public String getId()
  {
    return this.b;
  }

  public int getType()
  {
    return this.a;
  }

  public void setCount(int paramInt)
  {
    this.c = paramInt;
  }

  public void setId(String paramString)
  {
    this.b = paramString;
  }

  public void setType(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.model.MsgCountModelItem
 * JD-Core Version:    0.6.2
 */