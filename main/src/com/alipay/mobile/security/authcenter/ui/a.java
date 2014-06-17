package com.alipay.mobile.security.authcenter.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import android.widget.Filterable;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.authcenter.ui.login.v;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import java.util.ArrayList;
import java.util.List;

public class a<T> extends BaseAdapter
  implements Filterable
{
  AccountService a = null;
  v b = null;
  Context c;
  ArrayList<T> d;
  protected LayoutInflater e;
  private List<T> f;
  private final Object g = new Object();
  private int h;
  private int i;
  private int j = 0;
  private boolean k = true;
  private a<T>.a l;

  public a(Context paramContext, LayoutInflater paramLayoutInflater, int paramInt, List<T> paramList)
  {
    this.c = paramContext;
    this.e = paramLayoutInflater;
    this.i = paramInt;
    this.h = paramInt;
    this.f = paramList;
    this.j = 0;
  }

  protected View a(int paramInt1, View paramView, ViewGroup paramViewGroup, int paramInt2)
  {
    if (paramView == null)
      paramView = this.e.inflate(paramInt2, paramViewGroup, false);
    ((TextView)paramView.findViewById(R.id.ct)).setText(SecurityUtil.a(((UserInfo)getItem(paramInt1)).getLogonId(), "hideaccount"));
    return paramView;
  }

  public int getCount()
  {
    if (this.f == null)
      return 0;
    return this.f.size();
  }

  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(paramInt, paramView, paramViewGroup, this.i);
  }

  public Filter getFilter()
  {
    if (this.l == null)
      this.l = new a((byte)0);
    return this.l;
  }

  public T getItem(int paramInt)
  {
    return this.f.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return a(paramInt, paramView, paramViewGroup, this.h);
  }

  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    this.k = true;
  }

  private final class a extends Filter
  {
    private a()
    {
    }

    protected final Filter.FilterResults performFiltering(CharSequence paramCharSequence)
    {
      Filter.FilterResults localFilterResults = new Filter.FilterResults();
      if (a.this.d == null);
      synchronized (a.a(a.this))
      {
        a.this.d = new ArrayList(a.b(a.this));
        if (paramCharSequence != null)
          if (paramCharSequence.length() != 0)
            break label127;
      }
      synchronized (a.a(a.this))
      {
        ArrayList localArrayList1 = new ArrayList(a.this.d);
        localFilterResults.values = localArrayList1;
        localFilterResults.count = localArrayList1.size();
        return localFilterResults;
        localObject7 = finally;
        throw localObject7;
      }
      label127: String str1 = paramCharSequence.toString().toLowerCase();
      ArrayList localArrayList3;
      label296: 
      while (true)
      {
        Object localObject5;
        String str2;
        String[] arrayOfString;
        synchronized (a.a(a.this))
        {
          ArrayList localArrayList2 = new ArrayList(a.this.d);
          int i = localArrayList2.size();
          localArrayList3 = new ArrayList();
          int j = 0;
          if (j >= i)
            break;
          localObject5 = localArrayList2.get(j);
          str2 = localObject5.toString().toLowerCase();
          if (str2.startsWith(str1))
          {
            localArrayList3.add(localObject5);
            j++;
          }
        }
        int k = arrayOfString.length;
        for (int m = 0; ; m++)
        {
          if (m >= k)
            break label296;
          if (arrayOfString[m].startsWith(str1))
          {
            localArrayList3.add(localObject5);
            break;
          }
        }
      }
      localFilterResults.values = localArrayList3;
      localFilterResults.count = localArrayList3.size();
      return localFilterResults;
    }

    protected final void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
    {
      a.a(a.this, (List)paramFilterResults.values);
      if (paramFilterResults.count > 0)
      {
        a.this.notifyDataSetChanged();
        return;
      }
      a.this.notifyDataSetInvalidated();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.a
 * JD-Core Version:    0.6.2
 */