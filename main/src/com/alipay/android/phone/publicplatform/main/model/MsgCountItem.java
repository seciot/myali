package com.alipay.android.phone.publicplatform.main.model;

public class MsgCountItem
{
  private String a;
  private String b;
  private String c;
  private int d;

  public MsgCountItem(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramInt;
  }

  public int getCount()
  {
    return this.d;
  }

  public String getMsgNoteType()
  {
    return this.b;
  }

  public String getPublicId()
  {
    return this.a;
  }

  public String getWgtMsgId()
  {
    return this.c;
  }

  public void setCount(int paramInt)
  {
    this.d = paramInt;
  }

  public void setMsgNoteType(String paramString)
  {
    this.b = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.a = paramString;
  }

  public void setWgtMsgId(String paramString)
  {
    this.c = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.model.MsgCountItem
 * JD-Core Version:    0.6.2
 */