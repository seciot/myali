package com.alipay.android.mini.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class CustomCheckbox extends ImageView
  implements View.OnClickListener
{
  private Drawable a = null;
  private boolean b = false;
  private CustomCheckbox.OnCheckedChangeListener c;

  public CustomCheckbox(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public CustomCheckbox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public CustomCheckbox(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    setOnClickListener(this);
    setScaleType(ImageView.ScaleType.FIT_XY);
  }

  private void b()
  {
    if (isEnabled())
      if (this.b)
        this.a.setState(new int[] { 16842910, 16842912 });
    while (true)
    {
      setImageDrawable(this.a.getCurrent());
      return;
      this.a.setState(new int[] { 16842910, -16842912 });
      continue;
      this.a.setState(new int[] { -16842910 });
    }
  }

  public boolean isChecked()
  {
    return this.b;
  }

  public void onClick(View paramView)
  {
    if (!this.b);
    for (boolean bool = true; ; bool = false)
    {
      this.b = bool;
      if (this.c != null)
      {
        CustomCheckbox.OnCheckedChangeListener localOnCheckedChangeListener = this.c;
        localOnCheckedChangeListener.a();
      }
      b();
      return;
    }
  }

  public void setButtonDrawable(Drawable paramDrawable)
  {
    this.a = paramDrawable;
    setImageDrawable(paramDrawable);
  }

  public void setChecked(boolean paramBoolean)
  {
    if ((!(paramBoolean & this.b)) && (this.c != null))
      this.c.a();
    this.b = paramBoolean;
    b();
  }

  public void setLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setLayoutParams(paramLayoutParams);
  }

  public void setOnCheckedChangeListener(CustomCheckbox.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.c = paramOnCheckedChangeListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.CustomCheckbox
 * JD-Core Version:    0.6.2
 */