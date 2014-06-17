package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import com.alipay.mobile.ui.R.drawable;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;
import com.alipay.mobile.ui.R.styleable;

public class APBankCardListItemView extends APRelativeLayout
{
  private APTextView a;
  private APTextView b;
  private APTextView c;
  private APTextView d;
  private APTextView e;
  private APImageView f;
  private APImageView g;
  private APImageView h;
  private APImageView i;
  private APToggleButton j;
  private int k;
  private boolean l;
  private String m;
  private String n;
  private String o;
  private String p;
  private Drawable q;
  private String r;
  private Drawable s;
  private boolean t;
  private APImageView u;
  private APLinearLayout v;

  public APBankCardListItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public APBankCardListItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public APBankCardListItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    LayoutInflater.from(paramContext).inflate(R.layout.ap_bankcardlistitem_layout, this, true);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.BankCardListItemView);
    this.k = localTypedArray.getInt(11, 16);
    this.l = localTypedArray.getBoolean(9, true);
    this.m = localTypedArray.getString(2);
    this.n = localTypedArray.getString(3);
    this.o = localTypedArray.getString(4);
    this.p = localTypedArray.getString(5);
    this.q = localTypedArray.getDrawable(1);
    this.s = localTypedArray.getDrawable(6);
    this.r = localTypedArray.getString(8);
    this.t = localTypedArray.getBoolean(10, false);
    localTypedArray.recycle();
  }

  public Drawable getLeftImage()
  {
    return this.f.getDrawable();
  }

  public String getLeftText()
  {
    return this.a.getText().toString();
  }

  public String getLeftText2()
  {
    return this.b.getText().toString();
  }

  public String getLeftText3()
  {
    return this.c.getText().toString();
  }

  public String getLeftText4()
  {
    return this.d.getText().toString();
  }

  public Drawable getRightBottomImage()
  {
    return this.g.getDrawable();
  }

  public Drawable getRightImage()
  {
    return this.h.getDrawable();
  }

  public String getRightTopText()
  {
    return this.e.getText().toString();
  }

  public APImageView getmArrowImage()
  {
    return this.i;
  }

  public APImageView getmRightBottomImageView()
  {
    return this.g;
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.a = ((APTextView)findViewById(R.id.table_left_text));
    this.b = ((APTextView)findViewById(R.id.table_left_text_2));
    this.c = ((APTextView)findViewById(R.id.table_left_text_3));
    this.d = ((APTextView)findViewById(R.id.table_left_text_4));
    this.e = ((APTextView)findViewById(R.id.table_right_top_text));
    this.f = ((APImageView)findViewById(R.id.table_left_image));
    this.u = ((APImageView)findViewById(R.id.table_left_big_image));
    this.v = ((APLinearLayout)findViewById(R.id.images_layout));
    this.g = ((APImageView)findViewById(R.id.table_right_bottom_image));
    this.h = ((APImageView)findViewById(R.id.table_right_image));
    this.i = ((APImageView)findViewById(R.id.table_arrow));
    this.j = ((APToggleButton)findViewById(R.id.table_toggleButton));
    if (this.l)
    {
      this.i.setVisibility(0);
      switch (this.k)
      {
      default:
      case 16:
      case 17:
      case 18:
      case 19:
      }
    }
    while (true)
    {
      if (this.m != null)
        setLeftText(this.m);
      if (this.n != null)
        setLeftText2(this.n);
      if (this.o != null)
        setLeftText3(this.o);
      if (this.p != null)
        setLeftText4(this.p);
      if (this.q != null)
        setLeftImage(this.q);
      if (this.r != null)
        setRightTopText(this.r);
      if (this.s != null)
        setRightBottomImage(this.s);
      if (this.t)
        this.j.setVisibility(0);
      return;
      this.i.setVisibility(8);
      break;
      setBackgroundResource(R.drawable.table_normal_selector);
      continue;
      setBackgroundResource(R.drawable.table_top_selector);
      continue;
      setBackgroundResource(R.drawable.table_bottom_selector);
      continue;
      setBackgroundResource(R.drawable.table_center_selector);
    }
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
      while (APAbsTableView.DOWNED);
      APAbsTableView.DOWNED = bool;
      continue;
      APAbsTableView.DOWNED = false;
    }
  }

  public void setArrowGone()
  {
    this.i.setVisibility(4);
  }

  public void setArrowVisible()
  {
    this.i.setVisibility(0);
  }

  public void setLeftImage(int paramInt)
  {
    this.v.setVisibility(0);
    if (this.n != null)
    {
      if (this.u.getVisibility() != 0)
        this.u.setVisibility(0);
      this.u.setImageResource(paramInt);
      return;
    }
    if (this.f.getVisibility() != 0)
      this.f.setVisibility(0);
    this.f.setImageResource(paramInt);
  }

  public void setLeftImage(Bitmap paramBitmap)
  {
    this.v.setVisibility(0);
    if (this.n != null)
    {
      if (this.u.getVisibility() != 0)
        this.u.setVisibility(0);
      this.u.setImageBitmap(paramBitmap);
      return;
    }
    if (this.f.getVisibility() != 0)
      this.f.setVisibility(0);
    this.f.setImageBitmap(paramBitmap);
  }

  public void setLeftImage(Drawable paramDrawable)
  {
    this.v.setVisibility(0);
    if (this.n != null)
    {
      if (this.u.getVisibility() != 0)
        this.u.setVisibility(0);
      this.u.setImageDrawable(paramDrawable);
      return;
    }
    if (this.f.getVisibility() != 0)
      this.f.setVisibility(0);
    this.f.setImageDrawable(paramDrawable);
  }

  public void setLeftText(String paramString)
  {
    if (this.a.getVisibility() != 0)
      this.a.setVisibility(0);
    this.a.setText(paramString);
  }

  public void setLeftText2(String paramString)
  {
    if (this.b.getVisibility() != 0)
      this.b.setVisibility(0);
    this.b.setText(paramString);
  }

  public void setLeftText3(String paramString)
  {
    if (this.c.getVisibility() != 0)
      this.c.setVisibility(0);
    this.c.setText(paramString);
  }

  public void setLeftText4(String paramString)
  {
    if (this.d.getVisibility() != 0)
      this.d.setVisibility(0);
    this.d.setText(paramString);
  }

  public void setRightBottomImage(int paramInt)
  {
    if (this.g.getVisibility() != 0)
      this.g.setVisibility(0);
    this.g.setImageResource(paramInt);
  }

  public void setRightBottomImage(Bitmap paramBitmap)
  {
    if (this.g.getVisibility() != 0)
      this.g.setVisibility(0);
    this.g.setImageBitmap(paramBitmap);
  }

  public void setRightBottomImage(Drawable paramDrawable)
  {
    if (this.g.getVisibility() != 0)
      this.g.setVisibility(0);
    this.g.setImageDrawable(paramDrawable);
  }

  public void setRightImage(int paramInt)
  {
    if (this.h.getVisibility() != 0)
      this.h.setVisibility(0);
    this.h.setImageResource(paramInt);
  }

  public void setRightImage(Bitmap paramBitmap)
  {
    if (this.h.getVisibility() != 0)
      this.h.setVisibility(0);
    this.h.setImageBitmap(paramBitmap);
  }

  public void setRightImage(Drawable paramDrawable)
  {
    if (this.h.getVisibility() != 0)
      this.h.setVisibility(0);
    this.h.setImageDrawable(paramDrawable);
  }

  public void setRightTopText(String paramString)
  {
    if (this.e.getVisibility() != 0)
      this.e.setVisibility(0);
    this.e.setText(paramString);
  }

  public void setmArrowImage(APImageView paramAPImageView)
  {
    this.i = paramAPImageView;
  }

  public void setmRightBottomImageView(APImageView paramAPImageView)
  {
    this.g = paramAPImageView;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APBankCardListItemView
 * JD-Core Version:    0.6.2
 */