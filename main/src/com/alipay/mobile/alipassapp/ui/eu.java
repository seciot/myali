package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.card.model.CardModel;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardListResult;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.ScrollMoreListAdapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class eu extends ScrollMoreListAdapter
{
  private ArrayList<BaseAlipassInfoItem> a = new ArrayList();
  private boolean b = true;
  private boolean c = false;
  private View d;
  private int e = 0;
  private int f = 1;
  private ew g;
  private ev h;

  public eu(Context paramContext, APListView paramAPListView)
  {
    super(paramContext, paramAPListView);
  }

  public final int a()
  {
    return this.e;
  }

  public final void a(CardListResult paramCardListResult, boolean paramBoolean)
  {
    if (paramCardListResult == null)
      return;
    if (paramCardListResult.hasMore != 0);
    for (boolean bool = true; ; bool = false)
    {
      this.c = bool;
      if (!paramBoolean)
      {
        this.a.clear();
        this.e = 0;
        this.f = 1;
      }
      List localList = paramCardListResult.cardList;
      if ((localList == null) || (localList.size() <= 0))
        break label141;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        BaseAlipassInfoItem.MemberCardObtainableInfoItem localMemberCardObtainableInfoItem = new BaseAlipassInfoItem.MemberCardObtainableInfoItem((CardModel)localIterator.next(), this.h);
        this.a.add(localMemberCardObtainableInfoItem);
        this.e = (1 + this.e);
      }
    }
    this.f = (1 + this.f);
    label141: notifyDataSetChanged();
  }

  public final void a(ev paramev)
  {
    this.h = paramev;
  }

  public final void a(ew paramew)
  {
    this.g = paramew;
  }

  final void a(String paramString)
  {
    for (int i = 0; ; i++)
      if (i < this.a.size())
      {
        BaseAlipassInfoItem localBaseAlipassInfoItem = (BaseAlipassInfoItem)this.a.get(i);
        if (((localBaseAlipassInfoItem instanceof BaseAlipassInfoItem.MemberCardObtainableInfoItem)) && (StringUtils.equals(paramString, ((BaseAlipassInfoItem.MemberCardObtainableInfoItem)localBaseAlipassInfoItem).getTid())))
        {
          this.a.remove(i);
          this.e = (-1 + this.e);
        }
      }
      else
      {
        notifyDataSetChanged();
        return;
      }
  }

  public final int b()
  {
    return this.f;
  }

  public final int getCount()
  {
    return this.a.size();
  }

  protected final View getFailView()
  {
    return null;
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  protected final View getItemView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return ((BaseAlipassInfoItem)this.a.get(paramInt)).getView(this.mContext, paramInt, paramView);
  }

  public final int getItemViewType(int paramInt)
  {
    return ((BaseAlipassInfoItem)this.a.get(paramInt)).getType();
  }

  protected final View getLoadingView()
  {
    if (this.d == null)
      this.d = LayoutInflater.from(this.mContext).inflate(R.layout.sub_footview_more_loading, null);
    return this.d;
  }

  public final void getMoreFinish(boolean paramBoolean)
  {
    super.getMoreFinish(paramBoolean);
    if ((this.b) && (this.d != null))
      this.d.setVisibility(8);
  }

  public final int getViewTypeCount()
  {
    return 2;
  }

  protected final boolean hasMore()
  {
    return (this.b) && (this.c);
  }

  protected final void itemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  protected final void onMore()
  {
    if (this.d != null)
      this.d.setVisibility(0);
    if (this.g != null)
      this.g.a();
  }

  protected final void onRetry()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.eu
 * JD-Core Version:    0.6.2
 */