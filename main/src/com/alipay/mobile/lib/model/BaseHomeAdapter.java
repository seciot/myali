package com.alipay.mobile.lib.model;

import android.text.TextUtils;
import android.widget.BaseAdapter;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class BaseHomeAdapter<T extends ResponseBaseMessage> extends BaseAdapter
{
  private List<T> a = new ArrayList();
  private BaseHomeAdapter.OnDataChangedListener<T> b;

  private void a(List<T> paramList)
  {
    BackgroundExecutor.execute(new BaseHomeAdapter.3(this, paramList));
  }

  public final void addBottomSourceData(List<T> paramList)
  {
    this.a.addAll(paramList);
    notifyDataSetChanged();
    a(paramList);
  }

  public final void addTopSourceData(List<T> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty()));
    do
    {
      return;
      for (int i = -1 + paramList.size(); i >= 0; i--)
      {
        ResponseBaseMessage localResponseBaseMessage = (ResponseBaseMessage)paramList.get(i);
        Iterator localIterator = this.a.iterator();
        while (localIterator.hasNext())
          if (isDuplicateMessage(localResponseBaseMessage, (ResponseBaseMessage)localIterator.next()))
            paramList.remove(i);
      }
    }
    while (paramList.isEmpty());
    this.a.addAll(0, paramList);
    notifyDataSetChanged();
    a(paramList);
  }

  public void clearData()
  {
    this.a.clear();
    notifyDataSetInvalidated();
  }

  public final void deleteItem(String paramString1, String paramString2)
  {
    if ((this.a == null) || (this.a.size() == 0));
    label117: 
    while (true)
    {
      return;
      int i = 0;
      if (i < this.a.size())
      {
        ResponseBaseMessage localResponseBaseMessage = (ResponseBaseMessage)this.a.get(i);
        if ((!TextUtils.equals(localResponseBaseMessage.mMsgType, paramString1)) || (!TextUtils.equals(paramString2, localResponseBaseMessage.mMsgId)));
      }
      while (true)
      {
        if (i == -1)
          break label117;
        BackgroundExecutor.execute(new BaseHomeAdapter.2(this, (ResponseBaseMessage)this.a.remove(i)));
        notifyDataSetChanged();
        return;
        i++;
        break;
        i = -1;
      }
    }
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final T getItem(int paramInt)
  {
    if ((paramInt < getCount()) && (paramInt >= 0))
      return (ResponseBaseMessage)this.a.get(paramInt);
    return null;
  }

  public BaseHomeAdapter.OnDataChangedListener<T> getOnDataChangedListener()
  {
    return this.b;
  }

  protected abstract boolean isDuplicateMessage(T paramT1, T paramT2);

  public void setOnDataChangedListener(BaseHomeAdapter.OnDataChangedListener<T> paramOnDataChangedListener)
  {
    this.b = paramOnDataChangedListener;
  }

  public final void syncBeanStatus(List<T> paramList)
  {
    if ((this.a != null) && (paramList != null))
      for (int i = 0; i < paramList.size(); i++)
        for (int j = 0; j < getCount(); j++)
        {
          ResponseBaseMessage localResponseBaseMessage1 = (ResponseBaseMessage)paramList.get(i);
          ResponseBaseMessage localResponseBaseMessage2 = (ResponseBaseMessage)this.a.get(j);
          if ((localResponseBaseMessage1 != null) && (localResponseBaseMessage2 != null) && (TextUtils.equals(localResponseBaseMessage1.mMsgId, localResponseBaseMessage2.mMsgId)))
          {
            this.a.remove(j);
            this.a.add(j, localResponseBaseMessage1);
            BackgroundExecutor.execute(new BaseHomeAdapter.1(this, localResponseBaseMessage1));
          }
        }
    notifyDataSetChanged();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.BaseHomeAdapter
 * JD-Core Version:    0.6.2
 */