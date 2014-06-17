package com.alipay.android.widget.security.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ViewTreeObserver;
import android.view.animation.DecelerateInterpolator;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Scroller;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;

public class XListView extends ListView
  implements AbsListView.OnScrollListener
{
  private float a = -1.0F;
  private Scroller b;
  private AbsListView.OnScrollListener c;
  private a d;
  private XListViewHeader e;
  private RelativeLayout f;
  private TextView g;
  private int h;
  private boolean i = true;
  private boolean j = false;
  private XListViewFooter k;
  private boolean l;
  private boolean m;
  private boolean n = false;
  private int o;
  private int p;

  public XListView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public XListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public XListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private void a()
  {
    if ((this.c instanceof b));
  }

  private void a(Context paramContext)
  {
    this.b = new Scroller(paramContext, new DecelerateInterpolator());
    super.setOnScrollListener(this);
    this.e = new XListViewHeader(paramContext);
    this.f = ((RelativeLayout)this.e.findViewById(R.id.gy));
    this.g = ((TextView)this.e.findViewById(R.id.gB));
    addHeaderView(this.e);
    this.k = new XListViewFooter(paramContext);
    this.e.getViewTreeObserver().addOnGlobalLayoutListener(new a(this));
  }

  private void b()
  {
    int i1 = this.e.getVisiableHeight();
    if (i1 == 0);
    while ((this.j) && (i1 <= this.h))
      return;
    if ((this.j) && (i1 > this.h));
    for (int i2 = this.h; ; i2 = 0)
    {
      this.p = 0;
      this.b.startScroll(0, i1, 0, i2 - i1, 400);
      invalidate();
      return;
    }
  }

  private void c()
  {
    this.m = true;
    this.k.setState(2);
    if (this.d != null)
      this.d.b();
  }

  public void addFooterView()
  {
    addFooterView(this.k);
  }

  public void computeScroll()
  {
    if (this.b.computeScrollOffset())
    {
      if (this.p != 0)
        break label44;
      this.e.setVisiableHeight(this.b.getCurrY());
    }
    while (true)
    {
      postInvalidate();
      a();
      super.computeScroll();
      return;
      label44: this.k.setBottomMargin(this.b.getCurrY());
    }
  }

  public boolean ismIsFooterReady()
  {
    return this.n;
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.o = paramInt3;
    if (this.c != null)
      this.c.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.c != null)
      this.c.onScrollStateChanged(paramAbsListView, paramInt);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.a == -1.0F)
      this.a = paramMotionEvent.getRawY();
    switch (paramMotionEvent.getAction())
    {
    case 1:
    default:
      this.a = -1.0F;
      if (getFirstVisiblePosition() == 0)
      {
        if ((this.i) && (this.e.getVisiableHeight() > this.h))
        {
          this.j = true;
          this.e.setState(2);
          if (this.d != null)
            this.d.a();
        }
        b();
      }
      break;
    case 0:
    case 2:
    }
    while (true)
    {
      return super.onTouchEvent(paramMotionEvent);
      this.a = paramMotionEvent.getRawY();
      continue;
      float f1 = paramMotionEvent.getRawY() - this.a;
      this.a = paramMotionEvent.getRawY();
      if ((getFirstVisiblePosition() == 0) && ((this.e.getVisiableHeight() > 0) || (f1 > 0.0F)))
      {
        float f2 = f1 / 1.8F;
        this.e.setVisiableHeight((int)f2 + this.e.getVisiableHeight());
        if ((this.i) && (!this.j))
        {
          if (this.e.getVisiableHeight() <= this.h)
            break label245;
          this.e.setState(1);
        }
        while (true)
        {
          setSelection(0);
          a();
          break;
          label245: this.e.setState(0);
        }
      }
      if ((getLastVisiblePosition() == -1 + this.o) && ((this.k.getBottomMargin() > 0) || (f1 < 0.0F)))
      {
        int i1 = 2 + this.k.getBottomMargin();
        if ((this.l) && (!this.m))
        {
          if (i1 <= 1)
            break label333;
          this.k.setState(1);
        }
        while (true)
        {
          this.k.setBottomMargin(i1);
          break;
          label333: this.k.setState(0);
        }
        if (getLastVisiblePosition() == -1 + this.o)
        {
          if ((this.l) && (this.k.getBottomMargin() > 1))
            c();
          int i2 = this.k.getBottomMargin();
          if (i2 > 0)
          {
            this.p = 1;
            this.b.startScroll(0, i2, 0, -i2, 400);
            invalidate();
          }
        }
      }
    }
  }

  public void reMoveFoorView()
  {
    removeFooterView(this.k);
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    if (!this.n)
    {
      this.n = true;
      addFooterView(this.k);
    }
    super.setAdapter(paramListAdapter);
  }

  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.c = paramOnScrollListener;
  }

  public void setPullLoadEnable(boolean paramBoolean)
  {
    this.l = paramBoolean;
    if (!this.l)
    {
      this.k.hide();
      this.k.setOnClickListener(null);
      return;
    }
    this.m = false;
    this.k.show();
    this.k.setState(0);
    this.k.setOnClickListener(new b(this));
  }

  public void setPullRefreshEnable(boolean paramBoolean)
  {
    this.i = paramBoolean;
    if (!this.i)
    {
      this.f.setVisibility(4);
      return;
    }
    this.f.setVisibility(0);
  }

  public void setRefreshTime(String paramString)
  {
    this.g.setText(paramString);
  }

  public void setXListViewListener(a parama)
  {
    this.d = parama;
  }

  public void setmIsFooterReady(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }

  public void stopLoadMore()
  {
    if (this.m == true)
    {
      this.m = false;
      this.k.setState(0);
    }
  }

  public void stopRefresh()
  {
    if (this.j == true)
    {
      this.j = false;
      b();
    }
  }

  public static abstract interface a
  {
    public abstract void a();

    public abstract void b();
  }

  public static abstract interface b extends AbsListView.OnScrollListener
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.component.XListView
 * JD-Core Version:    0.6.2
 */