package android.support.v4.view;

import android.view.KeyEvent;

abstract interface KeyEventCompat$KeyEventVersionImpl
{
  public abstract boolean isTracking(KeyEvent paramKeyEvent);

  public abstract boolean metaStateHasModifiers(int paramInt1, int paramInt2);

  public abstract boolean metaStateHasNoModifiers(int paramInt);

  public abstract int normalizeMetaState(int paramInt);

  public abstract void startTracking(KeyEvent paramKeyEvent);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.KeyEventCompat.KeyEventVersionImpl
 * JD-Core Version:    0.6.2
 */