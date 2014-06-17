package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.alipay.android.app.R.color;
import com.alipay.android.app.sys.GlobalContext;

final class ah
  implements Runnable
{
  ah(UICheckBox paramUICheckBox, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if ((!TextUtils.isEmpty(this.b.a("toast_message"))) && (TextUtils.equals(this.b.a("show_toast"), "true")))
    {
      UICheckBox.a(this.b, this.a);
      return;
    }
    if (!this.a);
    for (int i = GlobalContext.a().b().getResources().getColor(R.color.j); ; i = this.b.o().g())
    {
      if (UICheckBox.a(this.b) != null)
        UICheckBox.a(this.b).setEnabled(this.a);
      if (UICheckBox.f(this.b) == null)
        break;
      UICheckBox.f(this.b).setTextColor(i);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ah
 * JD-Core Version:    0.6.2
 */