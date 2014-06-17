package com.alipay.android.app.display.uielement;

import com.alipay.android.app.widget.CustomEditText;

final class c
  implements Runnable
{
  c(BaseEditElement paramBaseEditElement, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (this.b.a != null)
    {
      this.b.a.setEnabled(this.a);
      this.b.a.setClickable(this.a);
      BaseEditElement.a(this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.c
 * JD-Core Version:    0.6.2
 */