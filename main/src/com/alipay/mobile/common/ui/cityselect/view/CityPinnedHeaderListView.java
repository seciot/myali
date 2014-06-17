package com.alipay.mobile.common.ui.cityselect.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ListAdapter;
import android.widget.ListView;

public class CityPinnedHeaderListView extends ListView
{
  private CityPinnedHeaderListView.PinnedHeaderAdapter a;
  private View b;
  private boolean c;
  private int d;
  private int e;

  public CityPinnedHeaderListView(Context paramContext)
  {
    super(paramContext);
  }

  public CityPinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CityPinnedHeaderListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public void configureHeaderView(int paramInt)
  {
    int i = 255;
    if (this.b == null);
    while (this.a == null)
      return;
    switch (this.a.getPinnedHeaderState(paramInt))
    {
    default:
      return;
    case 0:
      this.c = false;
      return;
    case 1:
      this.a.configurePinnedHeader(this.b, paramInt, i);
      if (this.b.getTop() != 0)
        this.b.layout(0, 0, this.d, this.e);
      this.c = true;
      return;
    case 2:
    }
    int j = getChildAt(0).getBottom();
    int k = this.b.getHeight();
    int m;
    if (j < k)
    {
      m = j - k;
      i = 255 * (k + m) / k;
    }
    while (true)
    {
      this.a.configurePinnedHeader(this.b, paramInt, i);
      if (this.b.getTop() != m)
        this.b.layout(0, m, this.d, m + this.e);
      this.c = true;
      return;
      m = 0;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    if (this.c)
    {
      drawChild(paramCanvas, this.b, getDrawingTime());
      return;
    }
    this.b.setVisibility(8);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.b != null)
    {
      this.b.layout(0, 0, this.d, this.e);
      configureHeaderView(getFirstVisiblePosition());
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.b != null)
    {
      measureChild(this.b, paramInt1, paramInt2);
      this.d = this.b.getMeasuredWidth();
      this.e = this.b.getMeasuredHeight();
    }
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.a = ((CityPinnedHeaderListView.PinnedHeaderAdapter)paramListAdapter);
  }

  public void setPinnedHeaderView(View paramView)
  {
    this.b = paramView;
    if (this.b != null)
      setFadingEdgeLength(0);
    requestLayout();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.cityselect.view.CityPinnedHeaderListView
 * JD-Core Version:    0.6.2
 */