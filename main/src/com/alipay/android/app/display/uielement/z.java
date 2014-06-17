package com.alipay.android.app.display.uielement;

import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class z
  implements View.OnTouchListener
{
  private int[] b;

  z(UICheckBox paramUICheckBox)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    Drawable localDrawable = UICheckBox.a(this.a).getBackground();
    if (localDrawable == null);
    do
    {
      return false;
      int[] arrayOfInt = paramView.getDrawableState();
      if (this.b == null)
        this.b = UICheckBox.a(this.a).getDrawableState();
      if (paramMotionEvent.getAction() != 1)
      {
        localDrawable.setState(arrayOfInt);
        return false;
      }
    }
    while (this.b == null);
    localDrawable.setState(this.b);
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.z
 * JD-Core Version:    0.6.2
 */