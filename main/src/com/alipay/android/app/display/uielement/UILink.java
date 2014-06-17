package com.alipay.android.app.display.uielement;

import android.widget.TextView;
import com.alipay.android.app.R.layout;

public class UILink extends BaseElement
{
  private TextView a;

  public final ElementType a()
  {
    return ElementType.o;
  }

  public void dispose()
  {
    super.dispose();
    this.a = null;
  }

  public final int[] h()
  {
    if (this.a != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.a.getId();
      return arrayOfInt;
    }
    return null;
  }

  protected final int p()
  {
    return R.layout.Y;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UILink
 * JD-Core Version:    0.6.2
 */