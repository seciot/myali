package com.alipay.mobile.android.mvp;

import com.alipay.mobile.android.mvp.model.MvpResult;

public abstract interface DataObserver
{
  public abstract <T> void onChanged(DataEvent<MvpResult<T>> paramDataEvent);

  public abstract <T> void onException(DataEvent<MvpResult<T>> paramDataEvent);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.DataObserver
 * JD-Core Version:    0.6.2
 */