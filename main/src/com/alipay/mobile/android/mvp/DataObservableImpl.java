package com.alipay.mobile.android.mvp;

import android.app.Activity;
import com.alipay.mobile.android.mvp.model.MvpResult;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class DataObservableImpl
  implements DataObservable
{
  private List<DataObserver> a;
  private final ReentrantReadWriteLock b = new ReentrantReadWriteLock();
  private final ReentrantReadWriteLock.ReadLock c = this.b.readLock();
  private final ReentrantReadWriteLock.WriteLock d = this.b.writeLock();

  private List<DataObserver> a()
  {
    if (this.a == null)
      this.a = new ArrayList();
    return this.a;
  }

  private List<DataObserver> b()
  {
    this.c.lock();
    try
    {
      List localList = a();
      boolean bool = localList.isEmpty();
      if (bool)
        return null;
      ArrayList localArrayList = new ArrayList(localList.size());
      localArrayList.addAll(localList);
      return localArrayList;
    }
    finally
    {
      this.c.unlock();
    }
  }

  public void addDataObserver(DataObserver paramDataObserver)
  {
    if (paramDataObserver == null)
      throw new NullPointerException();
    if (a().contains(paramDataObserver))
      return;
    this.d.lock();
    try
    {
      if (!a().contains(paramDataObserver))
        a().add(paramDataObserver);
      return;
    }
    finally
    {
      this.d.unlock();
    }
  }

  public int countDataObservers()
  {
    this.c.lock();
    try
    {
      int i = a().size();
      return i;
    }
    finally
    {
      this.c.unlock();
    }
  }

  public void deleteDataObserver(DataObserver paramDataObserver)
  {
    try
    {
      this.d.lock();
      try
      {
        a().remove(paramDataObserver);
        this.d.unlock();
        return;
      }
      finally
      {
        localObject2 = finally;
        this.d.unlock();
        throw localObject2;
      }
    }
    finally
    {
    }
  }

  public <T> void notifyDataObservers(DataEvent<MvpResult<T>> paramDataEvent, int paramInt)
  {
    List localList = b();
    if (localList == null);
    while (true)
    {
      return;
      for (int i = -1 + localList.size(); i >= 0; i--)
      {
        DataObserver localDataObserver2 = (DataObserver)localList.get(i);
        if (((!localDataObserver2.getClass().isAssignableFrom(Activity.class)) || (!((Activity)localDataObserver2).isFinishing())) && (paramInt == 0))
        {
          localDataObserver2.onChanged(paramDataEvent);
          localList.remove(i);
        }
      }
      for (int j = -1 + localList.size(); j >= 0; j--)
      {
        DataObserver localDataObserver1 = (DataObserver)localList.get(j);
        if (((!localDataObserver1.getClass().isAssignableFrom(Activity.class)) || (!((Activity)localDataObserver1).isFinishing())) && (paramInt == 1))
        {
          localDataObserver1.onException(paramDataEvent);
          localList.remove(j);
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.DataObservableImpl
 * JD-Core Version:    0.6.2
 */