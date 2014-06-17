package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.TouchDelegate;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.MarginLayoutParams;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.ui.R.dimen;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APTitleBar extends APRelativeLayout
{
  private APTextView a;
  private APButton b;
  private APButton c;
  private APButton d;
  private APLinearLayout e;
  private APProgressBar f;
  private String g;
  private String h;
  private String i;
  float icon_height = 36.0F;
  float icon_width = 36.0F;
  private String j;
  private boolean k;
  private boolean l;
  private int m;
  float margin_right = 15.0F;
  private int n;
  private int o;
  private View p;
  float separate = 7.5F;
  float touch_height = 72.0F;
  float touch_width = 72.0F;

  public APTitleBar(Context paramContext)
  {
    super(paramContext);
  }

  public APTitleBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_title_bar, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.titleBar);
    this.g = localTypedArray.getString(8);
    this.h = localTypedArray.getString(1);
    this.m = localTypedArray.getResourceId(0, 0);
    this.i = localTypedArray.getString(5);
    this.n = localTypedArray.getResourceId(4, 0);
    this.j = localTypedArray.getString(3);
    this.o = localTypedArray.getResourceId(2, 0);
    this.k = localTypedArray.getBoolean(7, false);
    this.l = localTypedArray.getBoolean(6, false);
    localTypedArray.recycle();
    this.separate = getResources().getDimensionPixelSize(R.dimen.title_bar_icon_separate);
    this.margin_right = getResources().getDimensionPixelSize(R.dimen.title_bar_icon_margin_right);
    this.icon_height = getResources().getDimensionPixelSize(R.dimen.title_bar_icon_height);
    this.icon_width = getResources().getDimensionPixelSize(R.dimen.title_bar_icon_width);
  }

  private static void a(Drawable paramDrawable, ViewGroup.MarginLayoutParams paramMarginLayoutParams, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, APButton paramAPButton)
  {
    if (paramDrawable == null)
      return;
    int i1 = paramDrawable.getCurrent().getIntrinsicHeight();
    int i2 = paramDrawable.getCurrent().getIntrinsicWidth();
    int i3;
    if ((i1 > paramFloat3) || (i2 > paramFloat4))
      if (1.0D * i1 / paramFloat3 > 1.0D * i2 / paramFloat4)
      {
        int i4 = (int)paramFloat3;
        i3 = (int)(paramFloat3 * i2 / i1);
        i1 = i4;
      }
    while (true)
    {
      paramMarginLayoutParams.height = i1;
      paramMarginLayoutParams.width = i3;
      paramAPButton.setBackgroundDrawable(paramDrawable);
      paramMarginLayoutParams.leftMargin = ((int)(paramFloat1 + (paramFloat4 - i3) / 2.0F));
      paramMarginLayoutParams.rightMargin = ((int)(paramFloat2 + (paramFloat4 - i3) / 2.0F));
      return;
      i3 = (int)paramFloat4;
      i1 = (int)(paramFloat4 * i1 / i2);
      continue;
      i3 = i2;
    }
  }

  private static void a(APButton paramAPButton, float paramFloat1, float paramFloat2)
  {
    Rect localRect = new Rect();
    paramAPButton.getHitRect(localRect);
    if (localRect.height() < paramFloat1)
    {
      int i2 = (int)((paramFloat1 - localRect.height()) / 2.0F);
      localRect.top -= i2;
      localRect.bottom = (i2 + localRect.bottom);
    }
    if (localRect.width() < paramFloat2)
    {
      int i1 = (int)((paramFloat2 - localRect.width()) / 2.0F);
      localRect.left -= i1;
      localRect.right = (i1 + localRect.right);
    }
    TouchDelegate localTouchDelegate = new TouchDelegate(localRect, paramAPButton);
    if (View.class.isInstance(paramAPButton.getParent()))
      ((View)paramAPButton.getParent()).setTouchDelegate(localTouchDelegate);
  }

  public void attachNewFlagView(View paramView)
  {
    this.p = paramView;
    addView(this.p);
  }

  public APButton getGenericButton()
  {
    return this.b;
  }

  public APButton getLeftButton()
  {
    return this.c;
  }

  public APButton getRightButton()
  {
    return this.b;
  }

  public APTextView getTitleTextView()
  {
    return this.a;
  }

  protected void onFinishInflate()
  {
    this.a = ((APTextView)findViewById(R.id.title_bar_title));
    this.b = ((APButton)findViewById(R.id.title_bar_generic_button));
    this.e = ((APLinearLayout)findViewById(R.id.switch_container));
    this.c = ((APButton)findViewById(R.id.title_bar_left_button));
    this.d = ((APButton)findViewById(R.id.title_bar_right_button));
    this.f = ((APProgressBar)findViewById(R.id.title_bar_progress));
    setTitleText(this.g);
    setGenericButtonText(this.h);
    if (this.m != 0)
      setGenericButtonIcon(getResources().getDrawable(this.m));
    if (this.o != 0)
    {
      setLeftButtonIcon(getResources().getDrawable(this.o));
      if (this.n == 0)
        break label194;
      setRightButtonIcon(getResources().getDrawable(this.n));
    }
    while (true)
    {
      setGenericButtonVisiable(this.l);
      setSwitchContainerVisiable(this.k);
      return;
      setLeftButtonText(this.j);
      break;
      label194: setRightButtonText(this.i);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a(this.c, this.touch_height, this.touch_width);
    a(this.d, this.touch_height, this.touch_width);
    a(this.b, this.touch_height, this.touch_width);
    if (this.p != null)
      this.p.layout(this.b.getRight() - this.p.getMeasuredWidth() / 2, this.b.getTop() - this.p.getMeasuredHeight() / 2, this.b.getRight() + this.p.getMeasuredWidth() / 2, this.b.getTop() + this.p.getMeasuredHeight() / 2);
  }

  public void resetGenericButtonIcon()
  {
    setGenericButtonIconResource(R.drawable.title_bar_btn_selector);
    this.b.setPadding(DensityUtil.dip2px(getContext(), 10.0F), this.b.getPaddingTop(), DensityUtil.dip2px(getContext(), 10.0F), this.b.getPaddingBottom());
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.b.getLayoutParams();
    localLayoutParams.width = -2;
    localLayoutParams.height = DensityUtil.dip2px(getContext(), 32.0F);
  }

  public void setGenericButtonIcon(Drawable paramDrawable)
  {
    a(paramDrawable, (RelativeLayout.LayoutParams)this.b.getLayoutParams(), 0.0F, this.margin_right, this.icon_height, this.icon_width, this.b);
  }

  public void setGenericButtonIconResource(int paramInt)
  {
    setGenericButtonIcon(getResources().getDrawable(paramInt));
  }

  public void setGenericButtonListener(View.OnClickListener paramOnClickListener)
  {
    this.b.setOnClickListener(paramOnClickListener);
  }

  public void setGenericButtonText(String paramString)
  {
    this.b.setText(paramString);
  }

  public void setGenericButtonVisiable(boolean paramBoolean)
  {
    APButton localAPButton = this.b;
    if (paramBoolean);
    for (int i1 = 0; ; i1 = 8)
    {
      localAPButton.setVisibility(i1);
      return;
    }
  }

  public void setLeftButtonIcon(Drawable paramDrawable)
  {
    a(paramDrawable, (LinearLayout.LayoutParams)this.c.getLayoutParams(), this.separate, this.separate, this.icon_height, this.icon_width, this.c);
  }

  public void setLeftButtonIconResource(int paramInt)
  {
    setLeftButtonIcon(getResources().getDrawable(paramInt));
  }

  public void setLeftButtonListener(View.OnClickListener paramOnClickListener)
  {
    this.c.setOnClickListener(paramOnClickListener);
  }

  public void setLeftButtonText(String paramString)
  {
    this.c.setText(paramString);
  }

  public void setRightButtonIcon(Drawable paramDrawable)
  {
    a(paramDrawable, (LinearLayout.LayoutParams)this.d.getLayoutParams(), this.separate, this.margin_right, this.icon_height, this.icon_width, this.d);
  }

  public void setRightButtonIconResource(int paramInt)
  {
    setRightButtonIcon(getResources().getDrawable(paramInt));
  }

  public void setRightButtonListener(View.OnClickListener paramOnClickListener)
  {
    this.d.setOnClickListener(paramOnClickListener);
  }

  public void setRightButtonText(String paramString)
  {
    this.d.setText(paramString);
  }

  public void setSwitchContainerVisiable(boolean paramBoolean)
  {
    APLinearLayout localAPLinearLayout = this.e;
    if (paramBoolean);
    for (int i1 = 0; ; i1 = 8)
    {
      localAPLinearLayout.setVisibility(i1);
      return;
    }
  }

  public void setTitleText(String paramString)
  {
    this.a.setText(paramString);
  }

  public void startProgressBar()
  {
    this.f.setVisibility(0);
  }

  public void stopProgressBar()
  {
    this.f.setVisibility(8);
  }

  public void unAttachNewFlagView(View paramView)
  {
    if (this.p != null)
    {
      removeView(this.p);
      this.p = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APTitleBar
 * JD-Core Version:    0.6.2
 */