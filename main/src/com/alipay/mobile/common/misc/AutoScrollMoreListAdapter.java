package com.alipay.mobile.common.misc;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.List;

public abstract class AutoScrollMoreListAdapter extends BaseAdapter
  implements AdapterView.OnItemClickListener
{
  private AbsListView.OnScrollListener a = new AutoScrollMoreListAdapter.1(this);
  protected Context mContext;
  protected View mFootView;
  protected boolean mFooterViewAdded;
  protected boolean mIsLoading;
  protected List<Object> mListDatas;
  protected ListView mListView;

  public AutoScrollMoreListAdapter(Context paramContext, ListView paramListView)
  {
    this.mContext = paramContext;
    initListAndData(paramListView);
  }

  public AutoScrollMoreListAdapter(ListView paramListView)
  {
    initListAndData(paramListView);
  }

  public void addAllData(List<Object> paramList)
  {
    this.mListDatas.addAll(paramList);
  }

  public void addData(Object paramObject)
  {
    this.mListDatas.add(paramObject);
  }

  protected void addFooter()
  {
    if ((this.mFootView != null) && (!this.mFooterViewAdded))
    {
      this.mListView.addFooterView(this.mFootView);
      this.mFooterViewAdded = true;
    }
  }

  public void clear()
  {
    this.mListDatas.clear();
  }

  public void disableLoadMore()
  {
    removeFooter();
    this.mListView.setOnScrollListener(null);
  }

  public void enableLoadMore()
  {
    this.mIsLoading = false;
    this.mListView.setOnScrollListener(this.a);
    addFooter();
    hideFooter();
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

  public void getMoreFinish()
  {
    this.mIsLoading = false;
    hideFooter();
    notifyDataSetChanged();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getItemView(paramInt, paramView, paramViewGroup);
  }

  public int getViewTypeCount()
  {
    return 1;
  }

  protected void hideFooter()
  {
    if (this.mFootView != null)
      this.mFootView.setVisibility(8);
  }

  protected void init()
  {
    this.mFootView = getLoadingView();
    if (this.mFootView == null)
      throw new RuntimeException(getClass().getName() + "Loading View must be set");
    this.mFooterViewAdded = false;
    enableLoadMore();
  }

  protected void initListAndData(ListView paramListView)
  {
    this.mListView = paramListView;
    this.mListDatas = new ArrayList();
    init();
  }

  protected abstract void itemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong);

  protected abstract void onAutoLoadMore();

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    itemClick(paramAdapterView, paramView, paramInt, paramLong);
  }

  protected abstract void onRetry();

  protected void removeFooter()
  {
    if ((this.mFootView != null) && (this.mFooterViewAdded))
    {
      this.mListView.removeFooterView(this.mFootView);
      this.mFooterViewAdded = false;
    }
  }

  protected void showFooter()
  {
    if (this.mFootView != null)
      this.mFootView.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.AutoScrollMoreListAdapter
 * JD-Core Version:    0.6.2
 */