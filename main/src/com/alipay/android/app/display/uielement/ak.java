package com.alipay.android.app.display.uielement;

import android.content.Context;
import android.widget.TextView;
import com.alipay.android.app.widget.CustomArrayAdapter;
import java.util.List;

final class ak extends CustomArrayAdapter
{
  ak(UICombobox paramUICombobox, Context paramContext)
  {
    super(paramContext);
  }

  public final void a(int paramInt, TextView paramTextView)
  {
    UICombobox.Option localOption = (UICombobox.Option)UICombobox.d(this.a).get(paramInt);
    UICombobox.a(this.a, paramTextView, localOption);
    this.a.b(paramTextView, localOption.a);
    paramTextView.setGravity(this.a.o().a());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.ak
 * JD-Core Version:    0.6.2
 */