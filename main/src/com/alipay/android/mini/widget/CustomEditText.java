package com.alipay.android.mini.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnTouchListener;
import android.widget.EditText;
import android.widget.PopupWindow;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.sys.IDispose;
import com.alipay.android.mini.util.UIPropUtil;

public class CustomEditText extends EditText
  implements IDispose
{
  private boolean a = false;
  private Drawable b;
  private CustomEditText.OnIconClickListener c;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private int g = 0;
  private int h;
  private int i;
  private PopupWindow j;
  private CustomEditText.OnDoneListener k;
  private CustomEditText.CustomOnFocusChangeListener l;
  private View.OnTouchListener m = null;
  private boolean n = false;

  public CustomEditText(Context paramContext)
  {
    super(paramContext);
  }

  public CustomEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CustomEditText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void a()
  {
    if (!this.a)
    {
      dispose();
      return;
    }
    if (this.a)
    {
      int i1 = getWidth();
      int i2 = getHeight();
      int i3 = this.b.getIntrinsicWidth();
      int i4 = this.b.getIntrinsicHeight();
      this.d = (i1 - i3 - i3 / 4);
      this.e = ((i2 - i4) / 2);
      this.f = (i3 + this.d);
      this.g = (i4 + this.e);
      setCompoundDrawablesWithIntrinsicBounds(null, null, this.b, null);
      return;
    }
    setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
  }

  public void dispose()
  {
    hiddenPopHint();
    this.b = null;
    this.a = false;
    this.c = null;
  }

  public void hiddenPopHint()
  {
    if (this.j != null)
    {
      this.j.dismiss();
      this.j = null;
      removeIcon();
    }
  }

  public void initOnIconClickListener(Drawable paramDrawable, CustomEditText.OnIconClickListener paramOnIconClickListener)
  {
    if (paramDrawable == null)
      dispose();
    this.a = true;
    this.c = paramOnIconClickListener;
    this.b = paramDrawable;
  }

  public void justInitIconListener(CustomEditText.OnIconClickListener paramOnIconClickListener)
  {
    this.c = paramOnIconClickListener;
  }

  public void onEditorAction(int paramInt)
  {
    super.onEditorAction(paramInt);
    if ((this.k != null) && (6 == paramInt))
      this.k.getInstance();
  }

  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    CustomEditText localCustomEditText = (CustomEditText)paramView;
    if ((paramBoolean) && (localCustomEditText.getText().toString().length() > 0))
      localCustomEditText.showCloseIcon();
    while (true)
    {
      if (this.l != null)
        this.l.getBundle(paramBoolean);
      return;
      localCustomEditText.removeIcon();
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramBoolean)
      hiddenPopHint();
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.h != paramInt1) || (this.i != paramInt2))
    {
      this.h = paramInt1;
      this.i = paramInt2;
      a();
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    hiddenPopHint();
    if ((this.d > 0) && (this.a))
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      if ((f1 >= this.d) && (f1 <= this.f) && (f2 >= this.e) && (f2 <= this.g) && (this.c != null))
      {
        if (paramMotionEvent.getAction() == 1)
        {
          CustomEditText.OnIconClickListener localOnIconClickListener = this.c;
          localOnIconClickListener.getInstance();
        }
        return true;
      }
    }
    if (this.m != null)
      return this.m.onTouch(this, paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }

  public void removeIcon()
  {
    if (!this.n)
      return;
    super.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
    this.n = false;
    this.a = false;
  }

  public void setCustomOnFocusChangeListener(CustomEditText.CustomOnFocusChangeListener paramCustomOnFocusChangeListener)
  {
    this.l = paramCustomOnFocusChangeListener;
  }

  public void setDelIconShow(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }

  public void setOnDoneListener(CustomEditText.OnDoneListener paramOnDoneListener)
  {
    this.k = paramOnDoneListener;
  }

  public void setOnIconClickListener(Drawable paramDrawable, CustomEditText.OnIconClickListener paramOnIconClickListener)
  {
    if (paramDrawable == null)
      dispose();
    this.a = true;
    this.c = paramOnIconClickListener;
    this.b = paramDrawable;
    a();
    super.invalidate();
  }

  public void setOnTouchListener(View.OnTouchListener paramOnTouchListener)
  {
    this.m = paramOnTouchListener;
  }

  public void showCloseIcon()
  {
    if (this.n)
      return;
    this.n = true;
    if (this.b == null)
      this.b = UIPropUtil.v(R.drawable.y, getResources());
    this.a = true;
    a();
  }

  public void showPopHint(View paramView)
  {
    if (this.j == null)
      this.j = new PopupWindow(getContext());
    this.j.setWidth(-2);
    this.j.setHeight(-2);
    this.j.setOutsideTouchable(true);
    this.j.setFocusable(false);
    this.j.setBackgroundDrawable(null);
    this.j.setContentView(paramView);
    paramView.setBackgroundResource(R.drawable.af);
    paramView.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    int i1 = paramView.getMeasuredWidth();
    int i2 = getWidth() - i1;
    int i3 = 0 - getPaddingBottom() / 2;
    int i4 = 0;
    if (i2 < 0);
    while (true)
    {
      if (i1 > getWidth())
        paramView.setBackgroundResource(R.drawable.ae);
      this.j.showAsDropDown(this, i4, i3);
      Resources localResources = getContext().getResources();
      this.b = UIPropUtil.v(R.drawable.U, localResources);
      this.a = true;
      a();
      return;
      i4 = i2;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.CustomEditText
 * JD-Core Version:    0.6.2
 */