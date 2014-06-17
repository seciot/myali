package com.alipay.mobile.common.utils;

import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ListAdapter;
import android.widget.ListView;

public class ListUtils
{
  public static void setListViewHeightBasedOnChildren(ListView paramListView)
  {
    ListAdapter localListAdapter = paramListView.getAdapter();
    if (localListAdapter == null)
      return;
    int i = localListAdapter.getCount();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      View localView = localListAdapter.getView(j, null, paramListView);
      localView.measure(0, 0);
      k += localView.getMeasuredHeight();
      j++;
    }
    ViewGroup.LayoutParams localLayoutParams = paramListView.getLayoutParams();
    localLayoutParams.height = (k + paramListView.getDividerHeight() * (-1 + localListAdapter.getCount()));
    paramListView.setLayoutParams(localLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.ListUtils
 * JD-Core Version:    0.6.2
 */