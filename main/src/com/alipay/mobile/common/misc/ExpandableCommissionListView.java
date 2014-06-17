package com.alipay.mobile.common.misc;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;

public class ExpandableCommissionListView extends ExpandableListView
  implements AbsListView.OnScrollListener, ExpandableListView.OnGroupClickListener
{
  private ExpandableCommissionListHeaderAdapter a;
  private View b;

  public ExpandableCommissionListView(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public ExpandableCommissionListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public ExpandableCommissionListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    setOnScrollListener(this);
    setOnGroupClickListener(this);
  }

  public void configureHeaderView(int paramInt1, int paramInt2)
  {
    if ((this.b == null) || (this.a == null) || (((ExpandableListAdapter)this.a).getGroupCount() == 0))
      return;
    switch (this.a.getHeaderState(paramInt1, paramInt2))
    {
    default:
      return;
    case 0:
      hideHeaderView();
      return;
    case 1:
      new StringBuilder("PINNED_HEADER_VISIBLE, mHeaderView.getTop()=").append(this.b.getTop()).toString();
      this.a.configureHeader(this.b, paramInt1, paramInt2, 255);
      if (this.b.getTop() != 0)
        setHeaderViewTopOffset(0);
      showHeaderView();
      return;
    case 2:
    }
    int i = getChildAt(0).getBottom();
    int j = this.b.getHeight();
    int m;
    int k;
    if (i < j)
    {
      m = i - j;
      k = 255 * (j + m) / j;
    }
    while (true)
    {
      this.a.configureHeader(this.b, paramInt1, paramInt2, k);
      setHeaderViewTopOffset(m);
      new StringBuilder("PINNED_HEADER_PUSHED_UP, y=").append(m).toString();
      return;
      k = 255;
      m = 0;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
  }

  protected void headerViewClick()
  {
    int i = ExpandableListView.getPackedPositionGroup(getExpandableListPosition(getFirstVisiblePosition()));
    if (isGroupExpanded(i))
    {
      post(new ExpandableCommissionListView.1(this, i));
      collapseGroup(i);
      return;
    }
    expandGroup(i);
  }

  protected void hideHeaderView()
  {
    this.b.setVisibility(8);
    this.b.setOnClickListener(null);
  }

  public boolean onGroupClick(ExpandableListView paramExpandableListView, View paramView, int paramInt, long paramLong)
  {
    if (!paramExpandableListView.isGroupExpanded(paramInt))
      paramExpandableListView.expandGroup(paramInt);
    while (true)
    {
      return true;
      paramExpandableListView.collapseGroup(paramInt);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.b != null)
      measureChild(this.b, paramInt1, paramInt2);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    long l = getExpandableListPosition(paramInt1);
    configureHeaderView(ExpandableListView.getPackedPositionGroup(l), ExpandableListView.getPackedPositionChild(l));
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public void setAdapter(ExpandableListAdapter paramExpandableListAdapter)
  {
    super.setAdapter(paramExpandableListAdapter);
    this.a = ((ExpandableCommissionListHeaderAdapter)paramExpandableListAdapter);
  }

  public void setHeaderView(View paramView)
  {
    this.b = paramView;
    paramView.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    if (this.b != null)
    {
      setFadingEdgeLength(0);
      this.b.setVisibility(8);
      ((FrameLayout)getParent()).addView(this.b);
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.b.getLayoutParams();
      localLayoutParams.gravity = 51;
      this.b.setLayoutParams(localLayoutParams);
    }
    requestLayout();
  }

  protected void setHeaderViewTopOffset(int paramInt)
  {
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.b.getLayoutParams();
    localLayoutParams.topMargin = paramInt;
    this.b.setLayoutParams(localLayoutParams);
  }

  protected void showHeaderView()
  {
    this.b.setVisibility(0);
    this.b.setOnClickListener(new ExpandableCommissionListView.2(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExpandableCommissionListView
 * JD-Core Version:    0.6.2
 */