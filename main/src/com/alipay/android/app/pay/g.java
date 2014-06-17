package com.alipay.android.app.pay;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

final class g extends BaseAdapter
{
  ArrayList a;

  public g(HyperlinkActivity paramHyperlinkActivity, ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final void a(ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final int getCount()
  {
    int i = this.a.size();
    if (i > 0)
      return i;
    return 0;
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null);
    for (Object localObject = new TextView(this.b); ; localObject = paramView)
    {
      ((TextView)localObject).setText((String)this.a.get(paramInt));
      return localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.g
 * JD-Core Version:    0.6.2
 */