package com.alipay.mobile.common.misc;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.SimpleExpandableListAdapter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class ExpandableCommissionListAdapter extends SimpleExpandableListAdapter
  implements ExpandableCommissionListHeaderAdapter
{
  private List<? extends Map<String, ?>> a;
  private List<? extends List<? extends Map<String, ?>>> b;
  private HashMap<Integer, Integer> c = new HashMap();
  public Context context;
  public ExpandableCommissionListView listView;

  public ExpandableCommissionListAdapter(Context paramContext, ExpandableCommissionListView paramExpandableCommissionListView, List<? extends Map<String, ?>> paramList, int paramInt1, String[] paramArrayOfString1, int[] paramArrayOfInt1, List<? extends List<? extends Map<String, ?>>> paramList1, int paramInt2, String[] paramArrayOfString2, int[] paramArrayOfInt2)
  {
    super(paramContext, paramList, paramInt1, paramArrayOfString1, paramArrayOfInt1, paramList1, paramInt2, paramArrayOfString2, paramArrayOfInt2);
    this.context = paramContext;
    this.listView = paramExpandableCommissionListView;
    this.a = paramList;
    this.b = paramList1;
  }

  public abstract void configureGroupHeader(View paramView, int paramInt1, int paramInt2, int paramInt3);

  public void configureHeader(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    configureGroupHeader(paramView, paramInt1, paramInt2, paramInt3);
  }

  public abstract View getChildItemView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup);

  public View getChildView(int paramInt1, int paramInt2, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    return getChildItemView(paramInt1, paramInt2, paramBoolean, paramView, paramViewGroup);
  }

  @Deprecated
  public int getGroupClickStatus(int paramInt)
  {
    if (this.c.containsKey(Integer.valueOf(paramInt)))
      return ((Integer)this.c.get(Integer.valueOf(paramInt))).intValue();
    return 0;
  }

  public abstract View getGroupItemView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup);

  public View getGroupView(int paramInt, boolean paramBoolean, View paramView, ViewGroup paramViewGroup)
  {
    return getGroupItemView(paramInt, paramBoolean, paramView, paramViewGroup);
  }

  public int getHeaderState(int paramInt1, int paramInt2)
  {
    List localList1 = this.b;
    int i = 0;
    if (localList1 != null)
    {
      int j = this.b.size();
      i = 0;
      if (j > 0)
      {
        i = 0;
        if (paramInt1 >= 0)
        {
          int k = this.b.size();
          i = 0;
          if (paramInt1 < k)
          {
            List localList2 = this.a;
            i = 0;
            if (localList2 != null)
            {
              int m = this.a.size();
              i = 0;
              if (m > 0)
              {
                if (paramInt2 != -1 + getChildrenCount(paramInt1))
                  break label108;
                i = 2;
              }
            }
          }
        }
      }
    }
    label108: boolean bool;
    do
    {
      return i;
      if (paramInt2 != -1)
        break;
      bool = this.listView.isGroupExpanded(paramInt1);
      i = 0;
    }
    while (!bool);
    return 1;
  }

  @Deprecated
  public void setGroupClickStatus(int paramInt1, int paramInt2)
  {
    this.c.put(Integer.valueOf(paramInt1), Integer.valueOf(paramInt2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExpandableCommissionListAdapter
 * JD-Core Version:    0.6.2
 */