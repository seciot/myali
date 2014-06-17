package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.LinearInterpolator;
import android.view.animation.RotateAnimation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.style;
import com.alipay.mobile.ui.R.styleable;

public class APDefaultPullRefreshOverView extends APOverView
{
  private View a;
  private View b;
  private ProgressBar c;
  private ImageView d;
  private Drawable e;
  private Drawable f;
  private Drawable g;
  private Animation h;
  private Animation i;
  private Animation.AnimationListener j;

  public APDefaultPullRefreshOverView(Context paramContext)
  {
    super(paramContext);
  }

  public APDefaultPullRefreshOverView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0);
  }

  public APDefaultPullRefreshOverView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.framework_pullrefresh_overview, paramInt, R.style.framework_pullrefresh_overview);
    this.e = localTypedArray.getDrawable(1);
    this.f = localTypedArray.getDrawable(0);
    this.g = localTypedArray.getDrawable(2);
    localTypedArray.recycle();
  }

  public ImageView getLoadingLogo()
  {
    return (ImageView)findViewById(R.id.pull_refresh_logo_loading);
  }

  public View getLoadingShadowView()
  {
    return findViewById(R.id.framework_pullrefresh_shadow_loading);
  }

  public ImageView getNormalLogo()
  {
    return (ImageView)findViewById(R.id.pull_refresh_logo_normal);
  }

  public View getNormalShadowView()
  {
    return findViewById(R.id.framework_pullrefresh_shadow_normal);
  }

  public View getNormalView()
  {
    return this.a;
  }

  public int getOverViewHeight()
  {
    View localView = findViewById(R.id.framework_pullrefresh_loading);
    int k = localView.getMeasuredHeight();
    if (k <= 0)
    {
      localView.measure(0, 0);
      k = localView.getMeasuredHeight();
    }
    return k;
  }

  public void init()
  {
    this.j = new APDefaultPullRefreshOverView.1(this);
    this.h = new RotateAnimation(0.0F, -180.0F, 1, 0.5F, 1, 0.5F);
    this.h.setInterpolator(new LinearInterpolator());
    this.h.setDuration(250L);
    this.h.setAnimationListener(this.j);
    this.i = new RotateAnimation(0.0F, 180.0F, 1, 0.5F, 1, 0.5F);
    this.i.setInterpolator(new LinearInterpolator());
    this.i.setDuration(250L);
    this.i.setAnimationListener(this.j);
  }

  public void onFinish()
  {
    this.a.setVisibility(0);
    this.b.setVisibility(8);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    if (getId() == -1)
      throw new RuntimeException("must set id");
    this.a = findViewById(R.id.framework_pullrefresh_normal);
    this.b = findViewById(R.id.framework_pullrefresh_loading);
    this.c = ((ProgressBar)findViewById(R.id.framework_pullrefresh_progress));
    this.d = ((ImageView)findViewById(R.id.framework_pullrefresh_indicator));
    if (this.e != null)
      this.d.setImageDrawable(this.e);
    if (this.g != null)
      this.c.setIndeterminateDrawable(this.g);
  }

  public void onLoad()
  {
    this.a.setVisibility(8);
    this.b.setVisibility(0);
  }

  public void onOpen()
  {
    this.d.clearAnimation();
    this.d.startAnimation(this.h);
  }

  public void onOver()
  {
    this.d.clearAnimation();
    this.d.startAnimation(this.i);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APDefaultPullRefreshOverView
 * JD-Core Version:    0.6.2
 */