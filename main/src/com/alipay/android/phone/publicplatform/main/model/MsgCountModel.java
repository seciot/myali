package com.alipay.android.phone.publicplatform.main.model;

import java.util.ArrayList;
import java.util.List;

public class MsgCountModel
{
  public static final int MSG_COUNT_MODEL_TYPE_NUM = 2;
  public static final int MSG_COUNT_MODEL_TYPE_POINT = 1;
  private int a;
  private int b;
  private List<MsgCountModelItem> c = new ArrayList();

  public MsgCountModel(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public void addItem(MsgCountModelItem paramMsgCountModelItem)
  {
    this.c.add(paramMsgCountModelItem);
  }

  public int getCount()
  {
    return this.a;
  }

  public List<MsgCountModelItem> getItems()
  {
    return this.c;
  }

  public int getTyle()
  {
    return this.b;
  }

  public void setCount(int paramInt)
  {
    this.a = paramInt;
  }

  public void setTyle(int paramInt)
  {
    this.b = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.model.MsgCountModel
 * JD-Core Version:    0.6.2
 */