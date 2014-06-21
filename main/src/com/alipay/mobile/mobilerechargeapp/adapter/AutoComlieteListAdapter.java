package com.alipay.mobile.mobilerechargeapp.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.data.AutoInterface;
import com.alipay.mobile.mobilerechargeapp.data.DisplayData;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.mobilerechargeapp.data.SearchMatchRule;
import java.util.ArrayList;

public class AutoComlieteListAdapter extends BaseAdapter
{
  private final int a = 3;
  private LayoutInflater b;
  private Context c;
  private boolean d = true;
  private final Object e = new Object();
  private AutoInterface f = null;
  private String g = "";
  private DisplayData h;

  public AutoComlieteListAdapter(Context paramContext, String paramString, DisplayData paramDisplayData)
  {
    this.c = paramContext;
    this.g = paramString;
    this.h = paramDisplayData;
    this.b = LayoutInflater.from(this.c);
  }

  public final void a()
  {
    this.d = false;
  }

  public final void a(AutoInterface paramAutoInterface)
  {
    this.f = paramAutoInterface;
  }

  public final void a(String paramString)
  {
    this.g = paramString;
  }

  public final boolean a(DisplayData paramDisplayData)
  {
    if (paramDisplayData != null)
    {
      ArrayList localArrayList = paramDisplayData.a;
      if ((localArrayList == null) || (localArrayList.size() <= 0))
        break label32;
    }
    label32: for (int i = 1; i == 0; i = 0)
    {
      b();
      return false;
    }
    this.h = paramDisplayData;
    notifyDataSetChanged();
    return true;
  }

  public final void b()
  {
    this.h = null;
    notifyDataSetInvalidated();
  }

  public int getCount()
  {
    if ((this.h == null) || (this.h.a == null))
      return 0;
    return this.h.a.size();
  }

  public Object getItem(int paramInt)
  {
    return this.h.a.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    e locale;
    int i;
    ItemData localItemData;
    APTextView localAPTextView;
    String str;
    if (paramView == null)
    {
      paramView = this.b.inflate(R.layout.DefaultThreadFactory, null);
      locale = new e(this);
      locale.b = ((APTextView)paramView.findViewById(R.id.w));
      locale.c = ((APTextView)paramView.findViewById(R.id.v));
      locale.a = ((APTextView)paramView.findViewById(R.id.u));
      locale.d = ((APTextView)paramView.findViewById(R.id.t));
      paramView.setTag(locale);
      locale.a.setVisibility(8);
      locale.d.setVisibility(8);
      locale.b.setVisibility(0);
      locale.c.setVisibility(0);
      i = this.h.a.size();
      localItemData = (ItemData)this.h.a.get(paramInt);
      if ((this.g == null) || (!this.g.equals(localItemData.b)))
        break label280;
      localAPTextView = locale.c;
      str = this.c.getResources().getString(R.string.k);
    }
    while (true)
    {
      localAPTextView.setText(str);
      if (this.h.b != 20)
        break label399;
      if (paramInt != 0)
        break label312;
      locale.b.setVisibility(8);
      locale.c.setVisibility(8);
      locale.a.setVisibility(0);
      paramView.setOnClickListener(new a(this));
      return paramView;
      locale = (e)paramView.getTag();
      break;
      label280: localAPTextView = locale.c;
      if (localItemData.a != null)
        str = localItemData.a;
      else
        str = "";
    }
    label312: if (i == paramInt + 1)
    {
      locale.d.setVisibility(0);
      locale.b.setVisibility(8);
      locale.c.setVisibility(8);
      paramView.setOnClickListener(new b(this));
      return paramView;
    }
    SearchMatchRule.a(locale.b, localItemData.b, this.h.c);
    paramView.setOnClickListener(new c(this, localItemData));
    return paramView;
    label399: locale.b.setText(SearchMatchRule.a(localItemData.b));
    paramView.setOnClickListener(new d(this, localItemData));
    return paramView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.adapter.AutoComlieteListAdapter
 * JD-Core Version:    0.6.2
 */