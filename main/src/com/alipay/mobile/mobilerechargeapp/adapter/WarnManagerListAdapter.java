package com.alipay.mobile.mobilerechargeapp.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.ui.R.drawable;
import java.util.ArrayList;

public class WarnManagerListAdapter extends BaseAdapter
{
  private final int a = 0;
  private final int b = 1;
  private final int c = 2;
  private final int d = 3;
  private Context e;
  private LayoutInflater f;
  private ArrayList g;
  private boolean h = false;
  private WarnManagerListAdapter.OperationListener i;
  private final int j = 0;
  private final int k = 1;
  private final int l = 2;
  private final int m = 3;
  private final int n = 4;
  private final int o = 5;
  private final int p = 6;

  public WarnManagerListAdapter(Context paramContext, ArrayList paramArrayList, boolean paramBoolean)
  {
    this.e = paramContext;
    this.f = LayoutInflater.from(this.e);
    this.g = paramArrayList;
    this.h = paramBoolean;
  }

  private void a(int paramInt, j paramj, View paramView)
  {
    paramView.setOnClickListener(null);
    paramj.a.setOnSwitchListener(new i(this, paramInt));
  }

  private static void a(j paramj)
  {
    if (paramj == null)
      return;
    paramj.a.setEnabled(false);
    paramj.a.getArrowImage().setVisibility(8);
    paramj.b.setVisibility(0);
    paramj.c.setVisibility(0);
    paramj.d.setVisibility(8);
    paramj.a.getToggleButton().setVisibility(8);
    a(paramj, 2);
  }

  private static void a(j paramj, int paramInt)
  {
    if (paramj == null)
      return;
    switch (paramInt)
    {
    default:
      return;
    case 0:
      paramj.a.setBackgroundResource(R.drawable.table_normal_selector);
      return;
    case 1:
      paramj.a.setBackgroundResource(R.drawable.table_top_selector);
      return;
    case 2:
      paramj.a.setBackgroundResource(R.drawable.table_center_selector);
      return;
    case 3:
    }
    paramj.a.setBackgroundResource(R.drawable.table_bottom_selector);
  }

  private void a(j paramj, ItemData paramItemData, int paramInt)
  {
    if (paramj == null)
      return;
    paramj.d.setVisibility(8);
    paramj.a.getRightTextView().setVisibility(8);
    paramj.a.getArrowImage().setVisibility(8);
    paramj.a.getToggleButton().setVisibility(8);
    paramj.a.setEnabled(false);
    if (paramInt == 0)
    {
      paramj.a.getToggleButton().setVisibility(0);
      paramj.a.showToggleButton(false);
      if (paramItemData.d == 1)
        paramj.a.showToggleButton(true);
    }
    while (true)
    {
      paramj.c.setText(paramItemData.a);
      if (this.g.size() > 2)
        break label221;
      if (((!((ItemData)this.g.get(-1 + this.g.size())).g) || (!this.h)) && (this.g.size() != 1))
        break;
      a(paramj, 0);
      return;
      paramj.a.setRightText(this.e.getResources().getString(R.string.t));
      if (paramInt == 1)
      {
        paramj.a.getArrowImage().setVisibility(0);
        paramj.a.setEnabled(true);
      }
    }
    a(paramj, 1);
    return;
    label221: a(paramj, 1);
  }

  private void a(j paramj, ItemData paramItemData, int paramInt1, int paramInt2)
  {
    if (paramj == null)
      return;
    paramj.d.setVisibility(8);
    paramj.a.getRightTextView().setVisibility(8);
    paramj.a.getArrowImage().setVisibility(8);
    paramj.a.getToggleButton().setVisibility(8);
    paramj.a.setEnabled(false);
    if (3 == paramInt1)
    {
      paramj.a.getToggleButton().setVisibility(0);
      paramj.a.showToggleButton(false);
      if (paramItemData.d == 1)
        paramj.a.showToggleButton(true);
    }
    while (this.g.size() == 1)
    {
      a(paramj, 0);
      return;
      paramj.a.setRightText(this.e.getResources().getString(R.string.t));
      if (paramInt1 == 4)
      {
        paramj.a.getArrowImage().setVisibility(0);
        paramj.a.setEnabled(true);
      }
    }
    if (this.g.size() <= 2)
    {
      if (paramInt2 == 0)
      {
        if ((((ItemData)this.g.get(-1 + this.g.size())).g) && (this.h))
        {
          a(paramj, 0);
          return;
        }
        a(paramj, 1);
        return;
      }
      a(paramj, 3);
      return;
    }
    if (paramItemData.h)
    {
      a(paramj, 3);
      return;
    }
    a(paramj, 2);
  }

  public final void a()
  {
    if ((this.g != null) && (this.g.size() > 0))
    {
      notifyDataSetChanged();
      return;
    }
    notifyDataSetInvalidated();
  }

  public final void a(WarnManagerListAdapter.OperationListener paramOperationListener)
  {
    this.i = paramOperationListener;
  }

  public int getCount()
  {
    if (this.g != null)
      return this.g.size();
    return 0;
  }

  public Object getItem(int paramInt)
  {
    return this.g.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i1 = 2;
    Object localObject;
    label100: ItemData localItemData;
    int i2;
    if (paramView == null)
    {
      paramView = this.f.inflate(R.layout.n, null);
      localObject = new j(this);
      ((j)localObject).a = ((APRadioTableView)paramView.findViewById(com.alipay.mobile.mobilerechargeapp.R.id.J));
      ((j)localObject).b = ((APTextView)paramView.findViewById(com.alipay.mobile.ui.R.id.table_left_text));
      ((j)localObject).c = ((APTextView)paramView.findViewById(com.alipay.mobile.ui.R.id.table_left_text_2));
      ((j)localObject).d = ((APTextView)paramView.findViewById(com.alipay.mobile.mobilerechargeapp.R.id.n));
      a((j)localObject);
      paramView.setTag(localObject);
      localItemData = (ItemData)this.g.get(paramInt);
      ((j)localObject).b.setText(localItemData.b);
      ((j)localObject).c.setText(localItemData.a);
      if ((this.g.size() > i1) && (-2 + this.g.size() == paramInt))
        a((j)localObject, 3);
      i2 = this.g.size();
      if (!localItemData.f)
        break label325;
      if (!localItemData.e)
        break label311;
      i1 = 0;
    }
    while (true)
    {
      if ((i2 - 1 == paramInt) && (this.h) && (localItemData.g))
        i1 = 6;
      new StringBuilder("getItemType =").append(i1).toString();
      switch (i1)
      {
      default:
        return paramView;
        j localj = (j)paramView.getTag();
        a(localj);
        localObject = localj;
        break label100;
        label311: if (localItemData.d != 0)
        {
          i1 = 1;
          continue;
          label325: if (localItemData.e)
            i1 = 3;
          else if (localItemData.d != 0)
            i1 = 4;
          else
            i1 = 5;
        }
        break;
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    a((j)localObject, localItemData, i1);
    a(paramInt, (j)localObject, paramView);
    return paramView;
    a((j)localObject, localItemData, i1);
    ((j)localObject).a.setOnClickListener(new f(this, paramInt));
    return paramView;
    a((j)localObject, localItemData, i1);
    paramView.setOnClickListener(null);
    return paramView;
    a((j)localObject, localItemData, i1, paramInt);
    a(paramInt, (j)localObject, paramView);
    return paramView;
    a((j)localObject, localItemData, i1, paramInt);
    ((j)localObject).a.setOnClickListener(new g(this, paramInt));
    return paramView;
    a((j)localObject, localItemData, i1, paramInt);
    paramView.setOnClickListener(null);
    return paramView;
    ((j)localObject).d.setVisibility(0);
    int i3 = this.g.size();
    if (localObject != null)
    {
      ((j)localObject).a.setEnabled(true);
      ((j)localObject).a.getArrowImage().setVisibility(0);
      ((j)localObject).b.setVisibility(0);
      ((j)localObject).c.setVisibility(8);
      if (i3 != 1)
        break label631;
      ((j)localObject).d.setVisibility(8);
    }
    while (true)
    {
      ((j)localObject).a.getToggleButton().setVisibility(8);
      ((j)localObject).b.setText(this.e.getResources().getString(R.string.r));
      a((j)localObject, 0);
      ((j)localObject).a.setOnClickListener(new h(this));
      return paramView;
      label631: ((j)localObject).d.setVisibility(0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.WarnManagerListAdapter
 * JD-Core Version:    0.6.2
 */