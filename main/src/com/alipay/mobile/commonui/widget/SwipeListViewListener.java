package com.alipay.mobile.commonui.widget;

public abstract interface SwipeListViewListener
{
  public abstract int onChangeSwipeMode(int paramInt);

  public abstract void onChoiceChanged(int paramInt, boolean paramBoolean);

  public abstract void onChoiceEnded();

  public abstract void onChoiceStarted();

  public abstract void onClickBackView(int paramInt);

  public abstract void onClickFrontView(int paramInt);

  public abstract void onClosed(int paramInt, boolean paramBoolean);

  public abstract void onDismiss(int[] paramArrayOfInt);

  public abstract void onFirstListItem();

  public abstract void onLastListItem();

  public abstract void onListChanged();

  public abstract void onMove(int paramInt, float paramFloat);

  public abstract void onOpened(int paramInt, boolean paramBoolean);

  public abstract void onStartClose(int paramInt, boolean paramBoolean);

  public abstract void onStartOpen(int paramInt1, int paramInt2, boolean paramBoolean);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.SwipeListViewListener
 * JD-Core Version:    0.6.2
 */