package android.support.v4.view;

import android.view.KeyEvent;

class KeyEventCompat$EclairKeyEventVersionImpl extends KeyEventCompat.BaseKeyEventVersionImpl
{
  public boolean isTracking(KeyEvent paramKeyEvent)
  {
    return KeyEventCompatEclair.isTracking(paramKeyEvent);
  }

  public void startTracking(KeyEvent paramKeyEvent)
  {
    KeyEventCompatEclair.startTracking(paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.KeyEventCompat.EclairKeyEventVersionImpl
 * JD-Core Version:    0.6.2
 */