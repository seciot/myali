package com.alipay.mobile.android.mvp;

import com.alipay.mobile.android.mvp.model.MvpResult;

public abstract interface DataObservable
{
  public static final int NOTIFY_CHANGE = 0;
  public static final int NOTIFY_EXCEPTION = 1;

  public abstract void addDataObserver(DataObserver paramDataObserver);

  public abstract int countDataObservers();

  public abstract void deleteDataObserver(DataObserver paramDataObserver);

  public abstract <T> void notifyDataObservers(DataEvent<MvpResult<T>> paramDataEvent, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.DataObservable
 * JD-Core Version:    0.6.2
 */