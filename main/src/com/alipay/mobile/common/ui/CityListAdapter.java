package com.alipay.mobile.common.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.common.ui.cityselect.model.CityVO;
import com.alipay.mobile.common.ui.cityselect.view.CityPinnedHeaderListView;
import com.alipay.mobile.common.ui.cityselect.view.CityPinnedHeaderListView.PinnedHeaderAdapter;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.Arrays;
import java.util.List;

public class CityListAdapter extends BaseAdapter
  implements AbsListView.OnScrollListener, SectionIndexer, CityPinnedHeaderListView.PinnedHeaderAdapter
{
  private int a = -1;
  private List<String> b;
  private List<Integer> c;
  private LayoutInflater d;
  private boolean e = false;
  List<CityVO> mCityList;

  public CityListAdapter(Context paramContext, List<CityVO> paramList, List<String> paramList1, List<Integer> paramList2)
  {
    this.d = LayoutInflater.from(paramContext);
    this.mCityList = paramList;
    this.b = paramList1;
    this.c = paramList2;
  }

  public void configurePinnedHeader(View paramView, int paramInt1, int paramInt2)
  {
    int i = getSectionForPosition(paramInt1);
    if (i < 0)
      return;
    String str = (String)getSections()[i];
    ((APTextView)paramView.findViewById(R.id.friends_list_header_text)).setText(str);
  }

  public int getCount()
  {
    return this.mCityList.size();
  }

  public Object getItem(int paramInt)
  {
    return this.mCityList.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public int getPinnedHeaderState(int paramInt)
  {
    if ((paramInt < 0) || ((this.a != -1) && (this.a == paramInt)) || (this.e))
      return 0;
    this.a = -1;
    int i = getPositionForSection(1 + getSectionForPosition(paramInt));
    if ((i != -1) && (paramInt == i - 1))
      return 2;
    return 1;
  }

  public int getPositionForSection(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= this.b.size()))
      return -1;
    return ((Integer)this.c.get(paramInt)).intValue();
  }

  public int getSectionForPosition(int paramInt)
  {
    int i;
    if ((paramInt < 0) || (paramInt >= getCount()))
      i = -1;
    do
    {
      return i;
      i = Arrays.binarySearch(this.c.toArray(), Integer.valueOf(paramInt));
    }
    while (i >= 0);
    return -2 + -i;
  }

  public Object[] getSections()
  {
    return this.b.toArray();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int i = getSectionForPosition(paramInt);
    CityListAdapter.ViewHolder localViewHolder;
    if (paramView == null)
    {
      paramView = this.d.inflate(R.layout.lifepay_citylistview_item, null);
      localViewHolder = new CityListAdapter.ViewHolder(this);
      localViewHolder.mHeaderLayout = ((APLinearLayout)paramView.findViewById(R.id.friends_item_header_parent));
      localViewHolder.mHeaderText = ((APTextView)paramView.findViewById(R.id.friends_item_header_text));
      localViewHolder.mCityText = ((APTextView)paramView.findViewById(R.id.friends_item));
      paramView.setTag(localViewHolder);
      if ((getPositionForSection(i) != paramInt) || (this.e))
        break label170;
      localViewHolder.mHeaderLayout.setVisibility(0);
      localViewHolder.mHeaderText.setText((CharSequence)this.b.get(i));
    }
    while (true)
    {
      localViewHolder.mCityText.setText(((CityVO)this.mCityList.get(paramInt)).city);
      return paramView;
      localViewHolder = (CityListAdapter.ViewHolder)paramView.getTag();
      break;
      label170: localViewHolder.mHeaderLayout.setVisibility(8);
    }
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramAbsListView instanceof CityPinnedHeaderListView))
      ((CityPinnedHeaderListView)paramAbsListView).configureHeaderView(paramInt1);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public void refreshUi(List<CityVO> paramList)
  {
    this.mCityList = paramList;
    notifyDataSetChanged();
  }

  public void setIsSearchResult(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.CityListAdapter
 * JD-Core Version:    0.6.2
 */