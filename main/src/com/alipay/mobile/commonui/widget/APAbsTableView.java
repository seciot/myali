package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.ui.R.dimen;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APAbsTableView extends APRelativeLayout
  implements View.OnClickListener, APLineGroupItemInterface
{
  public static final int ARROW_STYLE_DOWN = 33;
  public static final int ARROW_STYLE_RIGHT = 32;
  public static final int ARROW_STYLE_UP = 34;
  public static final int BOTTOM = 18;
  public static final int CENTER = 19;
  public static boolean DOWNED = false;
  public static final int NEW_FLAG_TYPE_IMAGE = 2;
  public static final int NEW_FLAG_TYPE_TEXT = 1;
  public static final int NORMAL = 16;
  public static final int STYLE_LIST_ITEM = 17;
  public static final int STYLE_ROUND_CORNER = 16;
  public static final int TOP = 17;
  private int a;
  private int b;
  private boolean c = false;
  protected boolean changeBackgroud;
  private boolean d;
  private int e;
  private String f;
  private Drawable g;
  private String h;
  private Drawable i;
  private boolean j;
  private boolean k;
  private boolean l;
  protected View leftTextNewFlagView;
  protected APLinearLayout linearLayout;
  private boolean m = false;
  protected APImageView mArrowImage;
  protected APImageView mIconImageView;
  protected APTextView mLeftTextView;
  protected APImageView mRightImageView;
  protected APTextView mRightTextView;
  private int n;
  protected View rightImageNewFlagView;

  public APAbsTableView(Context paramContext)
  {
    this(paramContext, null);
  }

  public APAbsTableView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APAbsTableView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_abs_table_layout, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.tableView);
    this.a = localTypedArray.getInt(16, 16);
    int i1 = localTypedArray.getInt(15, 16);
    if (i1 != 16)
    {
      this.b = i1;
      this.c = true;
    }
    this.d = localTypedArray.getBoolean(12, true);
    this.e = localTypedArray.getInt(0, 32);
    this.f = localTypedArray.getString(6);
    this.g = localTypedArray.getDrawable(2);
    this.h = localTypedArray.getString(10);
    this.i = localTypedArray.getDrawable(9);
    this.changeBackgroud = localTypedArray.getBoolean(1, true);
    this.j = localTypedArray.getBoolean(5, false);
    this.k = localTypedArray.getBoolean(11, false);
    this.l = localTypedArray.getBoolean(14, false);
    a();
    localTypedArray.recycle();
  }

  private void a()
  {
    this.linearLayout = ((APLinearLayout)findViewById(R.id.linearLayout1));
    this.mLeftTextView = ((APTextView)findViewById(R.id.table_left_text));
    this.mRightTextView = ((APTextView)findViewById(R.id.table_right_text));
    this.mIconImageView = ((APImageView)findViewById(R.id.table_iconView));
    this.mRightImageView = ((APImageView)findViewById(R.id.table_right_image));
    this.mArrowImage = ((APImageView)findViewById(R.id.table_arrow));
    float f2;
    if (this.d)
    {
      this.mArrowImage.setVisibility(0);
      setArrowType(this.e);
      if (this.changeBackgroud)
        setOnClickListener(this);
      float f1 = getResources().getDimension(R.dimen.item_left_icon_large);
      f2 = getResources().getDimension(R.dimen.item_left_icon_small);
      setTypeAndStyle(this.a, getStyle());
      if (this.k)
        showRightTextContentFirst();
      if (this.f != null)
        setLeftText(this.f);
      if (this.g != null)
        setLeftImage(this.g);
      if (this.h != null)
        setRightText(this.h);
      if (this.i != null)
        setRightImage(this.i);
      if (!this.j)
        break label309;
      setIconSize(f1, f1);
    }
    while (true)
    {
      if (getStyle() == 17)
        setPadding(DensityUtil.dip2px(getContext(), 3.0F), getPaddingTop(), DensityUtil.dip2px(getContext(), 3.0F), getPaddingBottom());
      setTableViewSticky(this.l);
      if (this.changeBackgroud)
        setOnClickListener(this);
      return;
      this.mArrowImage.setVisibility(8);
      break;
      label309: setIconSize(f2, f2);
    }
  }

  private void b()
  {
    if (this.leftTextNewFlagView != null)
    {
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(1, this.n);
      localLayoutParams.addRule(15);
      this.leftTextNewFlagView.setLayoutParams(localLayoutParams);
    }
  }

  private void c()
  {
    if (this.rightImageNewFlagView != null)
    {
      int i1 = -((RelativeLayout.LayoutParams)findViewById(this.n).getLayoutParams()).rightMargin - ((ImageView)this.rightImageNewFlagView).getDrawable().getMinimumWidth() / 2;
      RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-2, -2);
      localLayoutParams.addRule(15);
      localLayoutParams.addRule(1, this.n);
      localLayoutParams.setMargins(i1, 0, 0, 0);
      this.rightImageNewFlagView.setLayoutParams(localLayoutParams);
      this.rightImageNewFlagView.setPadding(0, 0, 0, getRightImageView().getLayoutParams().height);
    }
  }

  public void attachNewFlag2LeftText(View paramView)
  {
    this.leftTextNewFlagView = paramView;
    addView(paramView);
    this.n = R.id.linearLayout1;
    b();
  }

  public void attachNewFlag2RightImage(View paramView)
  {
    this.rightImageNewFlagView = paramView;
    addView(paramView);
    this.n = R.id.table_right_image;
    c();
  }

  public APImageView getArrowImage()
  {
    return this.mArrowImage;
  }

  public View getChildView(APAbsTableView.ViewID paramViewID)
  {
    return findViewById(paramViewID.getId());
  }

  protected int getDefStyle()
  {
    return WidgetVisualStyleSetting.getVisualStyle();
  }

  public Drawable getLeftImage()
  {
    return this.mIconImageView.getDrawable();
  }

  public String getLeftText()
  {
    return this.mLeftTextView.getText().toString();
  }

  public APTextView getLeftTextView()
  {
    return this.mLeftTextView;
  }

  public Drawable getRightImage()
  {
    return this.mRightImageView.getDrawable();
  }

  public APImageView getRightImageView()
  {
    return this.mRightImageView;
  }

  public String getRightText()
  {
    return this.mRightTextView.getText().toString();
  }

  public APTextView getRightTextView()
  {
    return this.mRightTextView;
  }

  public int getStyle()
  {
    if (!this.c)
      return getDefStyle();
    return this.b;
  }

  public void onClick(View paramView)
  {
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.m)
    {
      int i1 = getWidth();
      int i2 = DensityUtil.dip2px(getContext(), 10.0F);
      int i3 = i1 - i2 * 2;
      if (this.mArrowImage.getVisibility() == 0)
        i3 = i3 - this.mArrowImage.getWidth() - i2;
      if (this.mRightImageView.getVisibility() == 0)
        i3 = i3 - this.mRightImageView.getWidth() - i2;
      if (this.mIconImageView.getVisibility() == 0)
        i3 = i3 - this.mIconImageView.getWidth() - i2;
      if (this.mRightTextView.getVisibility() == 0)
        i3 = (int)(i3 - this.mRightTextView.getPaint().measureText(String.valueOf(this.mRightTextView.getText()))) - i2;
      if (this.mIconImageView.getVisibility() == 0)
        i3 = i3 - this.mIconImageView.getWidth() - i2;
      this.linearLayout.getLayoutParams().width = i3;
      requestLayout();
      this.m = false;
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    a();
    b();
    c();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    switch (paramMotionEvent.getAction())
    {
    case 2:
    case 4:
    case 5:
    default:
    case 0:
    case 1:
    case 3:
    case 6:
    }
    while (true)
    {
      bool = super.onTouchEvent(paramMotionEvent);
      do
        return bool;
      while (DOWNED);
      if ((isEnabled()) && (isClickable()))
      {
        DOWNED = bool;
        continue;
        DOWNED = false;
      }
    }
  }

  public void setAdjustRightTextAfterDraw(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }

  public void setArrowImageVisibility(int paramInt)
  {
    this.mArrowImage.setVisibility(paramInt);
    setArrowType(this.e);
  }

  public void setArrowType(int paramInt)
  {
    if (paramInt == 32)
    {
      this.mArrowImage.setImageResource(R.drawable.table_arrow);
      return;
    }
    if (paramInt == 34)
    {
      this.mArrowImage.setImageResource(R.drawable.table_arrow_up);
      return;
    }
    this.mArrowImage.setImageResource(R.drawable.table_arrow_down);
  }

  public void setIconSize(float paramFloat1, float paramFloat2)
  {
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)this.mIconImageView.getLayoutParams();
    localLayoutParams.width = ((int)paramFloat1);
    localLayoutParams.height = ((int)paramFloat2);
  }

  protected void setInnerLeftText(int paramInt)
  {
    this.f = (this.f.substring(0, paramInt - 2) + "...");
    setLeftText(this.f);
  }

  public void setItemPositionStyle(int paramInt)
  {
    setTypeAndStyle(paramInt, getStyle());
  }

  public void setLeftImage(int paramInt)
  {
    this.mIconImageView.setVisibility(0);
    this.mIconImageView.setBackgroundResource(paramInt);
  }

  public void setLeftImage(Bitmap paramBitmap)
  {
    this.mIconImageView.setVisibility(0);
    this.mIconImageView.setImageBitmap(paramBitmap);
  }

  public void setLeftImage(Drawable paramDrawable)
  {
    this.mIconImageView.setVisibility(0);
    this.mIconImageView.setImageDrawable(paramDrawable);
  }

  public void setLeftImageVisibility(int paramInt)
  {
    this.mIconImageView.setVisibility(paramInt);
  }

  public void setLeftText(String paramString)
  {
    if (this.mLeftTextView.getVisibility() != 0)
      this.mLeftTextView.setVisibility(0);
    this.mLeftTextView.setText(paramString);
  }

  protected void setLeftTextVisibility(int paramInt)
  {
    this.mLeftTextView.setVisibility(paramInt);
  }

  public void setRightImage(int paramInt)
  {
    if (this.mRightImageView.getVisibility() != 0)
      this.mRightImageView.setVisibility(0);
    this.mRightImageView.setImageResource(paramInt);
  }

  public void setRightImage(Bitmap paramBitmap)
  {
    if (this.mRightImageView.getVisibility() != 0)
      this.mRightImageView.setVisibility(0);
    this.mRightImageView.setImageBitmap(paramBitmap);
  }

  public void setRightImage(Drawable paramDrawable)
  {
    if (this.mRightImageView.getVisibility() != 0)
      this.mRightImageView.setVisibility(0);
    this.mRightImageView.setImageDrawable(paramDrawable);
  }

  public void setRightText(String paramString)
  {
    if (this.mRightTextView.getVisibility() != 0)
      this.mRightTextView.setVisibility(0);
    this.mRightTextView.setText(paramString);
  }

  public void setStyle(int paramInt)
  {
    setTypeAndStyle(this.a, paramInt);
  }

  public void setTableViewSticky(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setBackgroundResource(R.drawable.table_sticky_selector);
      return;
    }
    setTypeAndStyle(this.a, getStyle());
  }

  public void setType(int paramInt)
  {
    setTypeAndStyle(paramInt, getStyle());
  }

  public void setTypeAndStyle(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    if (getStyle() != paramInt2)
    {
      this.b = paramInt2;
      this.c = true;
    }
    if (getStyle() == 17)
    {
      switch (paramInt1)
      {
      case 18:
      default:
        setBackgroundResource(R.drawable.table_item_bottom_normal_selector);
        return;
      case 17:
      case 19:
      }
      setBackgroundResource(R.drawable.table_item_top_center_selector);
      return;
    }
    switch (paramInt1)
    {
    default:
      return;
    case 16:
      setBackgroundResource(R.drawable.table_normal_selector);
      return;
    case 17:
      setBackgroundResource(R.drawable.table_top_selector);
      return;
    case 18:
      setBackgroundResource(R.drawable.table_bottom_selector);
      return;
    case 19:
    }
    setBackgroundResource(R.drawable.table_center_selector);
  }

  public void setVisibility(int paramInt)
  {
    super.setVisibility(paramInt);
  }

  public void setVisualStyle(int paramInt)
  {
    setStyle(paramInt);
  }

  public void showRightTextContentFirst()
  {
    getViewTreeObserver().addOnGlobalLayoutListener(new APAbsTableView.1(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APAbsTableView
 * JD-Core Version:    0.6.2
 */