package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.styleable;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.ArrayList;
import java.util.List;

public class AlipassInfoFieldLayout extends APLinearLayout
{
  protected Context mContext;
  protected int mPaddingVertical;
  protected int mSingleItemGravity;
  protected int mValueTextColor;
  protected int mValueTextSize;
  protected int maxSize = 4;
  protected int mlabelTextColor;
  protected int mlableTextSize;

  public AlipassInfoFieldLayout(Context paramContext)
  {
    this(paramContext, null);
    this.mContext = paramContext;
  }

  public AlipassInfoFieldLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.alipass);
    this.mlabelTextColor = localTypedArray.getColor(0, -16777216);
    this.mlableTextSize = ((int)localTypedArray.getDimension(1, 18.0F));
    this.mValueTextColor = localTypedArray.getColor(2, -16777216);
    this.mValueTextSize = ((int)localTypedArray.getDimension(3, 18.0F));
    this.mSingleItemGravity = localTypedArray.getInteger(4, 3);
    this.mPaddingVertical = ((int)localTypedArray.getDimension(5, 0.0F));
    localTypedArray.recycle();
  }

  private void setGravity(APLinearLayout paramAPLinearLayout, int paramInt)
  {
    paramAPLinearLayout.setGravity(paramInt);
    ((APTextView)paramAPLinearLayout.findViewById(R.id.tv_label)).setGravity(paramInt);
    ((APTextView)paramAPLinearLayout.findViewById(R.id.tv_value)).setGravity(paramInt);
  }

  protected List<LinearLayout.LayoutParams> getExtWidth(List<AlipassInfo.EinfoFields> paramList)
  {
    int i = 0;
    int j = paramList.size();
    APTextView localAPTextView1 = new APTextView(this.mContext);
    localAPTextView1.setTextSize(0, this.mlableTextSize);
    APTextView localAPTextView2 = new APTextView(this.mContext);
    localAPTextView2.setTextSize(0, this.mValueTextSize);
    int k;
    float[] arrayOfFloat;
    float f1;
    int m;
    label80: String str1;
    label146: String str2;
    if (j < this.maxSize)
    {
      k = j;
      arrayOfFloat = new float[k];
      f1 = 0.0F;
      m = 0;
      if ((m >= j) || (m >= this.maxSize))
        break label255;
      if (paramList.get(m) == null)
        break label436;
      TextPaint localTextPaint1 = localAPTextView1.getPaint();
      if (((AlipassInfo.EinfoFields)paramList.get(m)).getLabel() == null)
        break label241;
      str1 = ((AlipassInfo.EinfoFields)paramList.get(m)).getLabel();
      float f4 = localTextPaint1.measureText(str1);
      TextPaint localTextPaint2 = localAPTextView2.getPaint();
      if (((AlipassInfo.EinfoFields)paramList.get(m)).getValue() == null)
        break label248;
      str2 = ((AlipassInfo.EinfoFields)paramList.get(m)).getValue();
      label195: arrayOfFloat[m] = Math.max(f4, localTextPaint2.measureText(str2));
    }
    label436: for (float f3 = f1 + arrayOfFloat[m]; ; f3 = f1)
    {
      m++;
      f1 = f3;
      break label80;
      k = this.maxSize;
      break;
      label241: str1 = "";
      break label146;
      label248: str2 = "";
      break label195;
      label255: float f2;
      int i1;
      if (getWidth() > f1 + getPaddingLeft() + getPaddingRight())
      {
        f2 = getWidth() - (f1 + getPaddingLeft() + getPaddingRight());
        if (j <= this.maxSize)
          i1 = j;
      }
      for (int n = (int)(f2 / i1); ; n = 0)
      {
        ArrayList localArrayList = new ArrayList();
        label329: if ((i < j) && (i < this.maxSize))
        {
          LinearLayout.LayoutParams localLayoutParams;
          if ((n == 0) || (i == Math.min(j - 1, -1 + this.maxSize)))
          {
            localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
            localLayoutParams.weight = 1.0F;
          }
          while (true)
          {
            localArrayList.add(localLayoutParams);
            i++;
            break label329;
            i1 = this.maxSize;
            break;
            localLayoutParams = new LinearLayout.LayoutParams((int)(arrayOfFloat[i] + n), -1);
          }
        }
        return localArrayList;
      }
    }
  }

  public void refresh(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo, ActivityApplication paramActivityApplication)
  {
    if (paramList == null);
    while (getOrientation() != 0)
      return;
    getViewTreeObserver().addOnGlobalLayoutListener(new h(this, paramList, paramActivityApplication));
  }

  protected void setGravity(int paramInt1, int paramInt2, APLinearLayout paramAPLinearLayout)
  {
    if (paramInt1 == 1)
      if (paramInt2 == 0)
        setGravity(paramAPLinearLayout, this.mSingleItemGravity);
    do
    {
      return;
      if (paramInt1 != 2)
        break;
      if (paramInt2 == 0)
      {
        setGravity(paramAPLinearLayout, 3);
        return;
      }
    }
    while (paramInt2 != 1);
    while (true)
    {
      setGravity(paramAPLinearLayout, 5);
      return;
      if (paramInt1 == 3)
      {
        if ((paramInt2 == 0) || (paramInt2 == 1))
        {
          setGravity(paramAPLinearLayout, 3);
          return;
        }
        if (paramInt2 != 2)
          break;
        continue;
      }
      if (paramInt1 < 4)
        break;
      if ((paramInt2 == 0) || (paramInt2 == 1))
      {
        setGravity(paramAPLinearLayout, 3);
        return;
      }
      if (paramInt2 != 2)
        if (paramInt2 != 3)
          break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.AlipassInfoFieldLayout
 * JD-Core Version:    0.6.2
 */