package com.alipay.mobile.nfd.nfdbiz;

import android.view.View.OnClickListener;

public abstract interface IActiveTopBaordView
{
  public static final int STATE_BOARD_SHOW = 2;
  public static final int STATE_NORMAL = 0;
  public static final int STATE_TIPS_SHOW = 1;

  public abstract void changeState(int paramInt);

  public abstract void setOnBoardCLickListener(View.OnClickListener paramOnClickListener);

  public abstract void setOnStateChangeListener(ITopBoardStateCallBack paramITopBoardStateCallBack);

  public abstract void setOnVisibleChangeListener(IOnActiveBoardVisibleChange paramIOnActiveBoardVisibleChange);

  public abstract void updateTopInfo(String paramString1, String paramString2, String paramString3);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordView
 * JD-Core Version:    0.6.2
 */