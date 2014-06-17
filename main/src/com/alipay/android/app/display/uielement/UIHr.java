package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.android.app.R.layout;

public class UIHr extends BaseElement
{
  public final ElementType a()
  {
    return ElementType.u;
  }

  protected final void a(Context paramContext, View paramView, ElementStyle paramElementStyle)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    localLayoutParams.width = -1;
    localLayoutParams.height = 1;
  }

  public final int[] h()
  {
    return null;
  }

  protected final int p()
  {
    return R.layout.V;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIHr
 * JD-Core Version:    0.6.2
 */