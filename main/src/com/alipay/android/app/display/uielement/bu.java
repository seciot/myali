package com.alipay.android.app.display.uielement;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckedTextView;

final class bu
  implements View.OnClickListener
{
  bu(UISwitcher paramUISwitcher)
  {
  }

  public final void onClick(View paramView)
  {
    boolean bool1 = true;
    UISwitcher.getBundle(this.a).toggle();
    boolean bool2;
    UISwitcher localUISwitcher;
    if (!this.a.getBundleName())
    {
      bool2 = bool1;
      localUISwitcher = this.a;
      if (bool2)
        break label51;
    }
    while (true)
    {
      localUISwitcher.a("checked", Boolean.valueOf(bool1));
      return;
      bool2 = false;
      break;
      label51: bool1 = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bu
 * JD-Core Version:    0.6.2
 */