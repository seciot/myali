package com.alipay.mobile.lib.model;

import java.util.List;

public abstract interface BaseHomeAdapter$OnDataChangedListener<T>
{
  public abstract void onDataAdd(List<T> paramList);

  public abstract void onDataChanged(T paramT);

  public abstract void onDataDelete(T paramT);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.BaseHomeAdapter.OnDataChangedListener
 * JD-Core Version:    0.6.2
 */