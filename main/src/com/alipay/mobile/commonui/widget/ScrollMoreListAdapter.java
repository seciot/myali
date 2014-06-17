package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.List;

public abstract class ScrollMoreListAdapter extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  private String a = "ScrollMoreListAdapter";
  private View.OnClickListener b = new ScrollMoreListAdapter.1(this);
  private AbsListView.OnScrollListener c = new ScrollMoreListAdapter.2(this);
  protected Context mContext;
  protected View mFootView;
  protected boolean mIsLoading;
  protected List mListDatas;
  protected ListView mListView;

  public ScrollMoreListAdapter(Context paramContext, ListView paramListView)
  {
    this.mContext = paramContext;
    a(paramListView);
  }

  public ScrollMoreListAdapter(ListView paramListView)
  {
    a(paramListView);
  }

  private void a(ListView paramListView)
  {
    this.mListView = paramListView;
    this.mListDatas = new ArrayList();
    this.mIsLoading = false;
    this.mListView.setOnScrollListener(this.c);
    this.mFootView = getLoadingView();
    if (this.mFootView == null)
      throw new RuntimeException(getClass().getName() + "Loading View must be set");
    addFooterView();
  }

  public void addAllData(List paramList)
  {
    this.mListDatas.addAll(paramList);
  }

  public void addData(Object paramObject)
  {
    this.mListDatas.add(paramObject);
  }

  public void addFooterView()
  {
    if ((this.mListView.getFooterViewsCount() == 0) && (this.mFootView != null))
      this.mListView.addFooterView(this.mFootView);
  }

  public void clear()
  {
    this.mListDatas.clear();
  }

  public int getCount()
  {
    if (this.mListDatas == null)
      return 0;
    return this.mListDatas.size();
  }

  protected abstract View getFailView();

  public Object getItem(int paramInt)
  {
    return this.mListDatas.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  protected abstract View getItemView(int paramInt, View paramView, ViewGroup paramViewGroup);

  public int getItemViewType(int paramInt)
  {
    return 0;
  }

  protected abstract View getLoadingView();

  public void getMoreFinish(boolean paramBoolean)
  {
    this.mIsLoading = false;
    removeFooterView();
    if (paramBoolean)
    {
      if (hasMore())
      {
        this.mFootView = getLoadingView();
        if (this.mFootView == null)
          throw new RuntimeException(getClass().getName() + "Loading View must be set");
        addFooterView();
      }
      notifyDataSetChanged();
    }
    do
    {
      return;
      this.mFootView = getFailView();
    }
    while (this.mFootView == null);
    this.mFootView.setOnClickListener(this.b);
    addFooterView();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getItemView(paramInt, paramView, paramViewGroup);
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  protected abstract boolean hasMore();

  protected abstract void itemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong);

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    itemClick(paramAdapterView, paramView, paramInt, paramLong);
  }

  protected abstract void onMore();

  protected abstract void onRetry();

  public void removeFooterView()
  {
    if ((this.mFootView != null) && (this.mListView != null))
    {
      this.mListView.removeFooterView(this.mFootView);
      this.mFootView = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.ScrollMoreListAdapter
 * JD-Core Version:    0.6.2
 */