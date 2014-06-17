package com.alipay.mobile.commonui.widget;

import com.alipay.mobile.ui.R.id;

public enum APAbsTableView$ViewID
{
  private int a;

  static
  {
    RIGHT_IMAGE = new ViewID("RIGHT_IMAGE", 4, R.id.table_right_image);
    ARROW_IMAGE = new ViewID("ARROW_IMAGE", 5, R.id.table_arrow);
    TOGGLE_BUTTON = new ViewID("TOGGLE_BUTTON", 6, R.id.table_toggleButton);
    ICON_IMAGE = new ViewID("ICON_IMAGE", 7, R.id.table_iconView);
    ViewID[] arrayOfViewID = new ViewID[8];
    arrayOfViewID[0] = LEFT_TEXT1;
    arrayOfViewID[1] = LEFT_TEXT2;
    arrayOfViewID[2] = LEFT_TEXT3;
    arrayOfViewID[3] = RIGHT_TEXT;
    arrayOfViewID[4] = RIGHT_IMAGE;
    arrayOfViewID[5] = ARROW_IMAGE;
    arrayOfViewID[6] = TOGGLE_BUTTON;
    arrayOfViewID[7] = ICON_IMAGE;
  }

  private APAbsTableView$ViewID(int arg3)
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
 * Qualified Name:     com.alipay.mobile.commonui.widget.APAbsTableView.ViewID
 * JD-Core Version:    0.6.2
 */