package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextPaint;
import android.util.AttributeSet;
import com.alipay.mobile.alipassapp.R.styleable;
import com.alipay.mobile.commonui.widget.APTextView;

public class AlipassLimitLengthText extends APTextView
{
  private int mMaxLength;

  public AlipassLimitLengthText(Context paramContext)
  {
    super(paramContext);
  }

  public AlipassLimitLengthText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.alipass);
    this.mMaxLength = localTypedArray.getInteger(6, 0);
    localTypedArray.recycle();
  }

  public AlipassLimitLengthText(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void adjustTextWidth(int paramInt)
  {
    String str1;
    TextPaint localTextPaint;
    if (getText().toString().length() > paramInt)
    {
      str1 = getText().toString().substring(0, paramInt) + "...";
      localTextPaint = getPaint();
      localTextPaint.setTextSize(getTextSize());
      if (str1 == null)
        break label96;
    }
    label96: for (String str2 = str1; ; str2 = "")
    {
      setWidth((int)(10.0F + localTextPaint.measureText(str2)));
      setText(str1);
      return;
      str1 = getText().toString();
      break;
    }
  }

  public void setOriText(String paramString)
  {
    setText(paramString);
    if (this.mMaxLength > 0);
    for (int i = this.mMaxLength; ; i = 10)
    {
      adjustTextWidth(i);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.AlipassLimitLengthText
 * JD-Core Version:    0.6.2
 */