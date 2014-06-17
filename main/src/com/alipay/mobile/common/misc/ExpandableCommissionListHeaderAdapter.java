package com.alipay.mobile.common.misc;

import android.view.View;

public abstract interface ExpandableCommissionListHeaderAdapter
{
  public static final int PINNED_HEADER_GONE = 0;
  public static final int PINNED_HEADER_PUSHED_UP = 2;
  public static final int PINNED_HEADER_VISIBLE = 1;

  public abstract void configureHeader(View paramView, int paramInt1, int paramInt2, int paramInt3);

  public abstract int getGroupClickStatus(int paramInt);

  public abstract int getHeaderState(int paramInt1, int paramInt2);

  public abstract void setGroupClickStatus(int paramInt1, int paramInt2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExpandableCommissionListHeaderAdapter
 * JD-Core Version:    0.6.2
 */