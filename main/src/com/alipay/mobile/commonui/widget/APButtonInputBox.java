package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View.OnClickListener;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.styleable;

public class APButtonInputBox extends APInputBox
{
  private APImageButton a;
  private Drawable b;
  private APRelativeLayout c;

  public APButtonInputBox(Context paramContext)
  {
    super(paramContext);
  }

  public APButtonInputBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = ((APImageButton)findViewById(R.id.lastImgBtn));
    this.c = ((APRelativeLayout)findViewById(R.id.btnContainer));
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.genericInputBox);
      this.b = localTypedArray.getDrawable(2);
      setLastImgBg(this.b);
      localTypedArray.recycle();
    }
  }

  public APImageButton getLastImgButton()
  {
    return this.a;
  }

  protected void onInputTextStatusChanged(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!paramBoolean1) && (paramBoolean2))
    {
      setClearButtonVisiable(true);
      setLastImgBtnVisiable(false);
      return;
    }
    setClearButtonVisiable(false);
    setLastImgBtnVisiable(true);
  }

  public void setLastImgBg(Drawable paramDrawable)
  {
    this.b = paramDrawable;
    if (paramDrawable != null)
    {
      this.a.setImageDrawable(paramDrawable);
      setLastImgBtnVisiable(true);
      return;
    }
    setLastImgBtnVisiable(false);
  }

  protected void setLastImgBtnVisiable(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.b != null))
    {
      this.a.setVisibility(0);
      Rect localRect = new Rect();
      this.c.getHitRect(localRect);
      localRect.right = (100 + localRect.right);
      localRect.top = (-100 + localRect.top);
      localRect.bottom = (100 + localRect.bottom);
      setTouchDelegate(new TouchDelegate(localRect, this.a));
      return;
    }
    this.a.setVisibility(8);
    setTouchDelegate(null);
  }

  public void setLastImgButtonClickListener(View.OnClickListener paramOnClickListener)
  {
    this.a.setOnClickListener(paramOnClickListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APButtonInputBox
 * JD-Core Version:    0.6.2
 */