package com.alipay.mobile.android.mvp;

import android.os.Handler;
import android.os.Looper;
import com.alipay.mobile.android.mvp.model.MvpResult;

public abstract class MvpBaseController
  implements DataObservable
{
  private DataObservable a;
  private Handler b = new Handler(Looper.getMainLooper());

  public void addDataObserver(DataObserver paramDataObserver)
  {
    this.a.addDataObserver(paramDataObserver);
  }

  public int countDataObservers()
  {
    return this.a.countDataObservers();
  }

  public void deleteDataObserver(DataObserver paramDataObserver)
  {
    this.a.deleteDataObserver(paramDataObserver);
  }

  public DataObservable getDataObservable()
  {
    return this.a;
  }

  public <T> void notifyDataObservers(DataEvent<MvpResult<T>> paramDataEvent)
  {
    this.b.post(new MvpBaseController.2(this, paramDataEvent));
  }

  public <T> void notifyDataObservers(DataEvent<MvpResult<T>> paramDataEvent, int paramInt)
  {
    this.b.post(new MvpBaseController.1(this, paramDataEvent, paramInt));
  }

  public <T> void notifyDataObserversException(DataEvent<MvpResult<T>> paramDataEvent)
  {
    this.b.post(new MvpBaseController.3(this, paramDataEvent));
  }

  public void setDataObservable(DataObservable paramDataObservable)
  {
    this.a = paramDataObservable;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.MvpBaseController
 * JD-Core Version:    0.6.2
 */