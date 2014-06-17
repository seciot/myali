package com.alipay.android.app.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.EditText;
import android.widget.PopupWindow;
import com.alipay.android.app.R.drawable;
import com.alipay.android.app.sys.IDispose;

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
      int m = getWidth();
      int n = getHeight();
      int i1 = this.b.getIntrinsicWidth();
      int i2 = this.b.getIntrinsicHeight();
      this.d = (m - i1 - i1 / 4);
      this.e = ((n - i2) / 2);
      this.f = (i1 + this.d);
      this.g = (i2 + this.e);
      setCompoundDrawablesWithIntrinsicBounds(null, null, this.b, null);
      return;
    }
    setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
    getCompoundPaddingTop();
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

  public void onEditorAction(int paramInt)
  {
    super.onEditorAction(paramInt);
    if ((this.k != null) && (6 == paramInt))
      this.k.a();
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
    if ((this.d > 0) && (this.a))
    {
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      if ((f1 >= this.d) && (f1 <= this.f) && (f2 >= this.e) && (f2 <= this.g) && (this.c != null))
      {
        CustomEditText.OnIconClickListener localOnIconClickListener = this.c;
        localOnIconClickListener.i();
      }
    }
    hiddenPopHint();
    return super.onTouchEvent(paramMotionEvent);
  }

  public void removeIcon()
  {
    super.setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
    this.a = false;
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
    int m = paramView.getMeasuredWidth();
    int n = getWidth() - m;
    int i1 = 0 - getPaddingBottom() / 2;
    int i2 = 0;
    if (n < 0);
    while (true)
    {
      if (m > getWidth())
        paramView.setBackgroundResource(R.drawable.ae);
      this.j.showAsDropDown(this, i2, i1);
      this.b = getContext().getResources().getDrawable(R.drawable.U);
      this.a = true;
      a();
      return;
      i2 = n;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomEditText
 * JD-Core Version:    0.6.2
 */