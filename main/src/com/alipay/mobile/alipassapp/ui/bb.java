package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.ScrollMoreListAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bb extends ScrollMoreListAdapter
{
  private static int a = 30;
  private ArrayList<BaseAlipassInfoItem> b = new ArrayList();
  private ArrayList<BaseAlipassInfoItem> c = new ArrayList();
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private View g;
  private String h;
  private int i = 0;
  private bc j;
  private int k;

  public bb(Context paramContext, APListView paramAPListView, int paramInt)
  {
    super(paramContext, paramAPListView);
    this.k = paramInt;
  }

  private void a(int paramInt)
  {
    if (this.e)
      if (paramInt <= 0)
        break label148;
    label142: label148: for (BaseAlipassInfoItem localBaseAlipassInfoItem1 = (BaseAlipassInfoItem)this.b.get(paramInt - 1); ; localBaseAlipassInfoItem1 = null)
    {
      if ((localBaseAlipassInfoItem1 != null) && ((localBaseAlipassInfoItem1 instanceof BaseAlipassInfoItem.DateInfoItem)))
        if (paramInt >= -1 + this.b.size())
          break label142;
      for (BaseAlipassInfoItem localBaseAlipassInfoItem2 = (BaseAlipassInfoItem)this.b.get(paramInt + 1); ; localBaseAlipassInfoItem2 = null)
      {
        if ((localBaseAlipassInfoItem2 == null) || ((localBaseAlipassInfoItem2 instanceof BaseAlipassInfoItem.DateInfoItem)));
        for (int m = 1; ; m = 0)
        {
          this.b.remove(paramInt);
          this.i = (-1 + this.i);
          if (m != 0)
            this.b.remove(paramInt - 1);
          return;
          this.b.remove(paramInt);
          this.i = (-1 + this.i);
          return;
        }
      }
    }
  }

  public final int a()
  {
    return this.i;
  }

  public final void a(PassListResult paramPassListResult, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    if (paramPassListResult == null)
      return;
    boolean bool1;
    Iterator localIterator1;
    if (paramPassListResult.getHasMore() != 0)
    {
      bool1 = true;
      this.f = bool1;
      if (paramBoolean3)
      {
        this.b.removeAll(this.c);
        this.c.clear();
        this.i = this.b.size();
      }
      if ((!paramBoolean1) && (!paramBoolean3))
      {
        this.b.clear();
        this.b.addAll(this.c);
        this.h = null;
        this.i = this.c.size();
      }
      List localList1 = paramPassListResult.getPassTimelineList();
      if (localList1 != null)
        localIterator1 = localList1.iterator();
    }
    else
    {
      while (true)
      {
        if (!localIterator1.hasNext())
          break label386;
        PassTimelineInfo localPassTimelineInfo = (PassTimelineInfo)localIterator1.next();
        String str = localPassTimelineInfo.getPassDate();
        if ((this.e) && ((this.h == null) || (!this.h.equalsIgnoreCase(str))))
        {
          BaseAlipassInfoItem.DateInfoItem localDateInfoItem = new BaseAlipassInfoItem.DateInfoItem(localPassTimelineInfo.getPassDate());
          this.b.add(localDateInfoItem);
          this.h = localPassTimelineInfo.getPassDate();
        }
        List localList2 = localPassTimelineInfo.getPassList();
        if ((localList2 != null) && (!localList2.isEmpty()))
        {
          Iterator localIterator2 = localList2.iterator();
          label239: if (localIterator2.hasNext())
          {
            PassBaseInfo localPassBaseInfo = (PassBaseInfo)localIterator2.next();
            if (!paramBoolean4)
              localPassBaseInfo.isreaded = 1;
            boolean bool2;
            BaseAlipassInfoItem.AlipassInfoItem localAlipassInfoItem;
            if ((paramBoolean2) && (this.i > a))
            {
              bool2 = true;
              localAlipassInfoItem = new BaseAlipassInfoItem.AlipassInfoItem(localPassBaseInfo, bool2, this.k);
              if (!paramBoolean3)
                break label352;
              localAlipassInfoItem.setItemFrom(1);
              this.c.add(localAlipassInfoItem);
            }
            while (true)
            {
              this.i = (1 + this.i);
              break label239;
              bool1 = false;
              break;
              bool2 = false;
              break label289;
              this.b.add(localAlipassInfoItem);
            }
          }
          label289: label352: if (paramBoolean3)
            this.b.addAll(0, this.c);
        }
      }
    }
    label386: notifyDataSetChanged();
  }

  public final void a(bc parambc)
  {
    this.j = parambc;
  }

  final void a(String paramString)
  {
    for (int m = 0; ; m++)
      if (m < this.b.size())
      {
        BaseAlipassInfoItem localBaseAlipassInfoItem = (BaseAlipassInfoItem)this.b.get(m);
        if (((localBaseAlipassInfoItem instanceof BaseAlipassInfoItem.AlipassInfoItem)) && (((BaseAlipassInfoItem.AlipassInfoItem)localBaseAlipassInfoItem).getPassId().equals(paramString)))
          a(m);
      }
      else
      {
        notifyDataSetChanged();
        return;
      }
  }

  final void a(String paramString1, String paramString2)
  {
    for (int m = 0; ; m++)
      if (m < this.b.size())
      {
        BaseAlipassInfoItem localBaseAlipassInfoItem = (BaseAlipassInfoItem)this.b.get(m);
        if (((localBaseAlipassInfoItem instanceof BaseAlipassInfoItem.AlipassInfoItem)) && (((BaseAlipassInfoItem.AlipassInfoItem)localBaseAlipassInfoItem).getPartnerID().equals(paramString1)) && (((BaseAlipassInfoItem.AlipassInfoItem)localBaseAlipassInfoItem).getSerialNumber().equals(paramString2)))
          a(m);
      }
      else
      {
        notifyDataSetChanged();
        return;
      }
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public final void b()
  {
    removeFooterView();
  }

  public final void b(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public final void c()
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      BaseAlipassInfoItem localBaseAlipassInfoItem = (BaseAlipassInfoItem)localIterator.next();
      if ((localBaseAlipassInfoItem instanceof BaseAlipassInfoItem.AlipassInfoItem))
        localBaseAlipassInfoItem.getBaseInfo().setIsreaded(1);
    }
  }

  public final int getCount()
  {
    return this.b.size();
  }

  protected final View getFailView()
  {
    return null;
  }

  public final Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  protected final View getItemView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return ((BaseAlipassInfoItem)this.b.get(paramInt)).getView(this.mContext, paramInt, paramView);
  }

  public final int getItemViewType(int paramInt)
  {
    return ((BaseAlipassInfoItem)this.b.get(paramInt)).getType();
  }

  protected final View getLoadingView()
  {
    if (this.g == null)
      this.g = LayoutInflater.from(this.mContext).inflate(R.layout.sub_footview_more_loading, null);
    return this.g;
  }

  public final void getMoreFinish(boolean paramBoolean)
  {
    super.getMoreFinish(paramBoolean);
    if ((this.d) && (this.g != null))
      this.g.setVisibility(8);
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  protected final boolean hasMore()
  {
    return (this.d) && (this.f);
  }

  protected final void itemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  protected final void onMore()
  {
    if (this.g != null)
      this.g.setVisibility(0);
    if (this.j != null)
      this.j.a();
  }

  protected final void onRetry()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.bb
 * JD-Core Version:    0.6.2
 */