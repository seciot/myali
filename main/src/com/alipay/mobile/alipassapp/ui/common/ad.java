package com.alipay.mobile.alipassapp.ui.common;

import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import java.util.ArrayList;

final class ad extends PagerAdapter
{
  private ad(AlipassOperationViewPager paramAlipassOperationViewPager)
  {
  }

  public final void destroyItem(View paramView, int paramInt, Object paramObject)
  {
    ((ViewPager)paramView).removeView((View)AlipassOperationViewPager.access$200(this.a).get(paramInt));
  }

  public final int getCount()
  {
    return AlipassOperationViewPager.access$200(this.a).size();
  }

  public final int getItemPosition(Object paramObject)
  {
    return super.getItemPosition(paramObject);
  }

  public final Object instantiateItem(View paramView, int paramInt)
  {
    ((ViewPager)paramView).addView((View)AlipassOperationViewPager.access$200(this.a).get(paramInt));
    return AlipassOperationViewPager.access$200(this.a).get(paramInt);
  }

  public final boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ad
 * JD-Core Version:    0.6.2
 */