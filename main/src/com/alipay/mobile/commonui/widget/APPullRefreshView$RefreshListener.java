package com.alipay.mobile.commonui.widget;

public abstract interface APPullRefreshView$RefreshListener
{
  public abstract boolean canRefresh();

  public abstract APOverView getOverView();

  public abstract void onRefresh();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener
 * JD-Core Version:    0.6.2
 */