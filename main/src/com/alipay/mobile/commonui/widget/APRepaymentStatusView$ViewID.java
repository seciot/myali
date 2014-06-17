package com.alipay.mobile.commonui.widget;

import com.alipay.mobile.ui.R.id;

public enum APRepaymentStatusView$ViewID
{
  private int a;

  static
  {
    ARROW_IMAGE = new ViewID("ARROW_IMAGE", 5, R.id.table_arrow);
    TOGGLE_BUTTON = new ViewID("TOGGLE_BUTTON", 6, R.id.table_toggleButton);
    ViewID[] arrayOfViewID = new ViewID[7];
    arrayOfViewID[0] = LEFT_TEXT1;
    arrayOfViewID[1] = LEFT_TEXT2;
    arrayOfViewID[2] = RIGHT_TEXT;
    arrayOfViewID[3] = RIGHT_TEXT2;
    arrayOfViewID[4] = RIGHT_TEXT3;
    arrayOfViewID[5] = ARROW_IMAGE;
    arrayOfViewID[6] = TOGGLE_BUTTON;
  }

  private APRepaymentStatusView$ViewID(int arg3)
  {
    int j;
    this.a = j;
  }

  public final int getId()
  {
    return this.a;
  }

  public final void setId(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APRepaymentStatusView.ViewID
 * JD-Core Version:    0.6.2
 */