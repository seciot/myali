package com.alipay.mobile.pubsvc.ui.component;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.alipay.mobile.publicsvc.common.R.drawable;
import com.alipay.mobile.publicsvc.common.R.id;
import com.alipay.mobile.publicsvc.common.R.layout;

public class Pull2RefreshListView extends ListView
  implements AbsListView.OnScrollListener
{
  private static final String a = Pull2RefreshListView.class.getName();
  private LayoutInflater b;
  private LinearLayout c;
  private TextView d;
  private ImageView e;
  private RotateAnimation f;
  private RotateAnimation g;
  private boolean h;
  private int i;
  private int j;
  private int k;
  private int l;
  private AbsListView.OnScrollListener m = null;
  private int n;
  private View o;
  private View p;
  private boolean q;
  private Pull2RefreshListView.OnRefreshListener r;
  private boolean s;

  public Pull2RefreshListView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public Pull2RefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public Pull2RefreshListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private void a()
  {
    switch (this.n)
    {
    default:
      return;
    case 0:
      this.e.setVisibility(0);
      this.o.setVisibility(8);
      this.p.setVisibility(0);
      this.d.setVisibility(0);
      this.e.clearAnimation();
      this.e.startAnimation(this.f);
      this.d.setText("松开刷新");
      return;
    case 1:
      this.o.setVisibility(8);
      this.p.setVisibility(0);
      this.d.setVisibility(0);
      this.e.clearAnimation();
      this.e.setVisibility(0);
      if (this.q)
      {
        this.q = false;
        this.e.clearAnimation();
        this.e.startAnimation(this.g);
      }
      this.d.setText("下拉刷新");
      return;
    case 2:
      this.c.setPadding(0, 0, 0, 0);
      this.o.setVisibility(0);
      this.p.setVisibility(8);
      this.e.clearAnimation();
      this.e.setVisibility(8);
      this.d.setText("正在刷新...");
      return;
    case 3:
    }
    this.c.setPadding(0, -1 * this.j, 0, 0);
    this.o.setVisibility(8);
    this.p.setVisibility(0);
    this.e.clearAnimation();
    this.e.setImageResource(R.drawable.framework_pull_arrow_down);
    this.d.setText("下拉刷新");
  }

  private void a(Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    this.c = ((LinearLayout)this.b.inflate(R.layout.pull2freshlistview_head, null));
    this.e = ((ImageView)this.c.findViewById(R.id.refresh_indicator));
    this.d = ((TextView)this.c.findViewById(R.id.refresh_text));
    this.o = this.c.findViewById(R.id.loading);
    this.p = this.c.findViewById(R.id.refresh);
    LinearLayout localLinearLayout = this.c;
    ViewGroup.LayoutParams localLayoutParams = localLinearLayout.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = new ViewGroup.LayoutParams(-1, -2);
    int i1 = ViewGroup.getChildMeasureSpec(0, 0, localLayoutParams.width);
    int i2 = localLayoutParams.height;
    if (i2 > 0);
    for (int i3 = View.MeasureSpec.makeMeasureSpec(i2, 1073741824); ; i3 = View.MeasureSpec.makeMeasureSpec(0, 0))
    {
      localLinearLayout.measure(i1, i3);
      this.j = this.c.getMeasuredHeight();
      this.i = this.c.getMeasuredWidth();
      this.c.setPadding(0, -1 * this.j, 0, 0);
      this.c.invalidate();
      new StringBuilder("width:").append(this.i).append(" height:").append(this.j).toString();
      addHeaderView(this.c, null, false);
      super.setOnScrollListener(this);
      this.f = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
      this.f.setInterpolator(new LinearInterpolator());
      this.f.setDuration(250L);
      this.f.setFillAfter(true);
      this.g = new RotateAnimation(-180.0F, 0.0F, 1, 0.5F, 1, 0.5F);
      this.g.setInterpolator(new LinearInterpolator());
      this.g.setDuration(200L);
      this.g.setFillAfter(true);
      this.n = 3;
      this.s = false;
      return;
    }
  }

  private void b()
  {
    if (this.r != null)
      this.r.onRefresh();
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    try
    {
      super.dispatchDraw(paramCanvas);
      return;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    new StringBuilder().append(a).append("pull").toString();
  }

  public boolean isRefreshing()
  {
    return this.n == 2;
  }

  public void onRefreshComplete()
  {
    this.n = 3;
    a();
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.m != null)
      this.m.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    this.l = paramInt1;
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.m != null)
      this.m.onScrollStateChanged(paramAbsListView, paramInt);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.s)
      return super.onTouchEvent(paramMotionEvent);
    switch (paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 1:
    case 2:
    }
    int i1;
    label402: label427: 
    do
    {
      do
      {
        while (true)
        {
          return super.onTouchEvent(paramMotionEvent);
          if ((this.l == 0) && (!this.h))
          {
            this.h = true;
            this.k = ((int)paramMotionEvent.getY());
            continue;
            if ((this.n != 2) && (this.n != 4))
            {
              if (this.n == 1)
              {
                this.n = 3;
                a();
              }
              if (this.n == 0)
              {
                this.n = 2;
                a();
                b();
              }
            }
            this.h = false;
            this.q = false;
          }
        }
        i1 = (int)paramMotionEvent.getY();
        if ((!this.h) && (this.l == 0))
        {
          this.h = true;
          this.k = i1;
        }
      }
      while ((this.n == 2) || (!this.h) || (this.n == 4));
      if (this.n == 0)
      {
        setSelection(0);
        if (((i1 - this.k) / 2 < this.j) && (i1 - this.k > 0))
        {
          this.n = 1;
          a();
        }
      }
      else if (this.n == 1)
      {
        setSelection(0);
        if ((i1 - this.k) / 2 < this.j)
          break label402;
        this.n = 0;
        this.q = true;
        a();
      }
      while (true)
      {
        if ((this.n == 3) && (i1 - this.k > 0))
        {
          this.n = 1;
          a();
        }
        if (this.n != 1)
          break label427;
        this.c.setPadding(0, -1 * this.j + (i1 - this.k) / 2, 0, 0);
        return true;
        if (i1 - this.k > 0)
          break;
        this.n = 3;
        a();
        break;
        if (i1 - this.k <= 0)
        {
          this.n = 3;
          a();
        }
      }
    }
    while (this.n != 0);
    this.c.setPadding(0, (i1 - this.k) / 2 - this.j, 0, 0);
    return true;
  }

  public void recordCompleteTime()
  {
  }

  public void redirectToLoad()
  {
    this.n = 2;
    a();
    b();
  }

  public void setAdapter(BaseAdapter paramBaseAdapter)
  {
    recordCompleteTime();
    super.setAdapter(paramBaseAdapter);
  }

  public void setOnRefreshListener(Pull2RefreshListView.OnRefreshListener paramOnRefreshListener)
  {
    this.r = paramOnRefreshListener;
    if (this.r == null)
    {
      this.s = false;
      return;
    }
    this.s = true;
  }

  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.m = paramOnScrollListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.ui.component.Pull2RefreshListView
 * JD-Core Version:    0.6.2
 */