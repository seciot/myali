package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.app.R.color;
import com.alipay.android.app.sys.GlobalContext;

final class ap
  implements Runnable
{
  ap(UICombobox paramUICombobox, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (UICombobox.f(this.b) != null)
    {
      if ((!TextUtils.isEmpty(this.b.getBundle("toast_message"))) && (TextUtils.equals(this.b.getBundle("show_toast"), "true")))
        UICombobox.v(this.b, this.a);
    }
    else
      return;
    UICombobox.f(this.b).setEnabled(this.a);
    UICombobox.f(this.b).setFocusable(this.a);
    if (!this.a);
    for (int i = GlobalContext.a().b().getResources().getColor(R.color.j); ; i = this.b.o().g())
    {
      UICombobox.b(this.b).setTextColor(i);
      UICombobox.g(this.b).setTextColor(i);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ap
 * JD-Core Version:    0.6.2
 */