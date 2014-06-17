package com.alipay.mobile.alipassapp.ui.widget;

import android.content.Context;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.alipay.mobile.commonui.widget.APTextView;

public class AutoScaleTextView extends APTextView
{
  private static final float DEFAULT_MIN_TEXT_SIZE = 1.0F;
  private float maxTextSize;
  private float minTextSize;
  private TextPaint textPaint;

  public AutoScaleTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initialise();
  }

  private void initialise()
  {
    this.maxTextSize = getTextSize();
    this.minTextSize = 1.0F;
  }

  private void refitText(String paramString, int paramInt)
  {
    int i;
    float f;
    if (paramInt > 0)
    {
      this.textPaint = getPaint();
      i = paramInt - getPaddingLeft() - getPaddingRight();
      f = this.maxTextSize;
      this.textPaint.setTextSize(f);
    }
    while (true)
    {
      if ((f > this.minTextSize) && (this.textPaint.measureText(paramString) > i))
      {
        f -= 1.0F;
        if (f <= this.minTextSize)
          f = this.minTextSize;
      }
      else
      {
        this.textPaint.setTextSize(f);
        return;
      }
      this.textPaint.setTextSize(f);
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (paramInt1 != paramInt3)
      refitText(getText().toString(), paramInt1);
  }

  protected void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    refitText(paramCharSequence.toString(), getWidth());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.AutoScaleTextView
 * JD-Core Version:    0.6.2
 */