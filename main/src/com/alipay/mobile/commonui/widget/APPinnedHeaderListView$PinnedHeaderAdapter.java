package com.alipay.mobile.commonui.widget;

import android.view.View;

public abstract interface APPinnedHeaderListView$PinnedHeaderAdapter
{
  public static final int PINNED_HEADER_GONE = 0;
  public static final int PINNED_HEADER_PUSHED_UP = 2;
  public static final int PINNED_HEADER_VISIBLE = 1;

  public abstract void configurePinnedHeader(View paramView, int paramInt1, int paramInt2);

  public abstract int getPinnedHeaderState(int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPinnedHeaderListView.PinnedHeaderAdapter
 * JD-Core Version:    0.6.2
 */