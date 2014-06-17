package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout.LayoutParams;

public class APLineGroupView extends APLinearLayout
  implements APLineGroupItemChanged
{
  public APLineGroupView(Context paramContext)
  {
    super(paramContext);
  }

  public APLineGroupView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private static APLineGroupItemInterface a(View paramView)
  {
    if ((paramView != null) && ((paramView instanceof APLineGroupItemInterface)))
      return (APLineGroupItemInterface)paramView;
    return null;
  }

  private void a()
  {
    int i = 0;
    int j = 0;
    int k = 0;
    while (j < getChildCount())
    {
      APLineGroupItemInterface localAPLineGroupItemInterface2 = a(getChildAt(j));
      if ((localAPLineGroupItemInterface2 != null) && (localAPLineGroupItemInterface2.getVisibility() == 0))
        k++;
      j++;
    }
    int m = 0;
    if (i < getChildCount())
    {
      APLineGroupItemInterface localAPLineGroupItemInterface1 = a(getChildAt(i));
      if ((localAPLineGroupItemInterface1 != null) && (localAPLineGroupItemInterface1.getVisibility() == 0))
      {
        if ((m != 0) || (m != k - 1))
          break label115;
        localAPLineGroupItemInterface1.setItemPositionStyle(16);
      }
      while (true)
      {
        m++;
        i++;
        break;
        label115: if (m == 0)
          localAPLineGroupItemInterface1.setItemPositionStyle(17);
        else if (m == k - 1)
          localAPLineGroupItemInterface1.setItemPositionStyle(18);
        else
          localAPLineGroupItemInterface1.setItemPositionStyle(19);
      }
    }
  }

  public void addView(View paramView)
  {
    addView(paramView, -1);
  }

  public void addView(View paramView, int paramInt)
  {
    super.addView(paramView, paramInt);
  }

  public void addView(View paramView, int paramInt1, int paramInt2)
  {
    super.addView(paramView, paramInt1, paramInt2);
  }

  public void addView(View paramView, int paramInt, LinearLayout.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
  }

  public void addView(View paramView, LinearLayout.LayoutParams paramLayoutParams)
  {
    addView(paramView, -1, paramLayoutParams);
  }

  public void itemChanged(View paramView, APLineGroupItemInterface paramAPLineGroupItemInterface)
  {
    if (paramView != null)
      a();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    new StringBuilder().append(getId()).append("onFinishInflate").toString();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    a();
    new StringBuilder().append(getId()).append("onLayout").toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APLineGroupView
 * JD-Core Version:    0.6.2
 */