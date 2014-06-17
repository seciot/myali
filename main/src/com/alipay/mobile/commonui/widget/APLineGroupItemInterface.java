package com.alipay.mobile.commonui.widget;

public abstract interface APLineGroupItemInterface extends APViewInterface
{
  public static final int BOTTOM = 18;
  public static final int CENTER = 19;
  public static final int NORMAL = 16;
  public static final int TOP = 17;
  public static final int VISUAL_STYLE_LIST_ITEM = 17;
  public static final int VISUAL_STYLE_ROUND_CORNER = 16;

  public abstract int getVisibility();

  public abstract void setItemPositionStyle(int paramInt);

  public abstract void setVisualStyle(int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APLineGroupItemInterface
 * JD-Core Version:    0.6.2
 */