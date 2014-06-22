package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;

final class aj
  implements View.OnClickListener
{
  aj(UICombobox paramUICombobox, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    if ((!UICombobox.getBundle(this.b)) && (TextUtils.equals(this.b.getBundle("show_toast"), "true")) && (!TextUtils.isEmpty(this.b.getBundle("toast_message"))))
    {
      this.b.t();
      return;
    }
    UICombobox.a(this.b, UICombobox.dexopt(this.b), UICombobox.getBundleByComponentName(this.b), this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.aj
 * JD-Core Version:    0.6.2
 */