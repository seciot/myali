package com.alipay.mobile.mobilerechargeapp.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View.OnClickListener;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.ui.R.styleable;

public class APButtonInputBoxAutoC extends APInputBoxAutoC
{
  private Drawable imgBtnDrawable;
  private APImageButton mLastImgBtn;

  public APButtonInputBoxAutoC(Context paramContext)
  {
    super(paramContext);
  }

  public APButtonInputBoxAutoC(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mLastImgBtn = ((APImageButton)findViewById(R.id.x));
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.genericInputBox);
      this.imgBtnDrawable = localTypedArray.getDrawable(2);
      setLastImgBg(this.imgBtnDrawable);
      localTypedArray.recycle();
    }
  }

  public APImageButton getLastImgButton()
  {
    return this.mLastImgBtn;
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
    this.imgBtnDrawable = paramDrawable;
    if (paramDrawable != null)
    {
      this.mLastImgBtn.setImageDrawable(paramDrawable);
      setLastImgBtnVisiable(true);
      return;
    }
    setLastImgBtnVisiable(false);
  }

  protected void setLastImgBtnVisiable(boolean paramBoolean)
  {
    if ((paramBoolean) && (this.imgBtnDrawable != null))
    {
      this.mLastImgBtn.setVisibility(0);
      return;
    }
    this.mLastImgBtn.setVisibility(8);
  }

  public void setLastImgButtonClickListener(View.OnClickListener paramOnClickListener)
  {
    this.mLastImgBtn.setOnClickListener(paramOnClickListener);
  }

  public void showLastImgBtn(boolean paramBoolean)
  {
    onInputTextStatusChanged(paramBoolean, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.view.APButtonInputBoxAutoC
 * JD-Core Version:    0.6.2
 */