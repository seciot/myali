package com.alipay.android.app.display.uielement;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.List;

final class am
  implements DialogInterface.OnClickListener
{
  am(UICombobox paramUICombobox, TextView paramTextView, ArrayAdapter paramArrayAdapter)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    UICombobox.a(this.c, paramInt);
    this.a.setText((CharSequence)this.b.getItem(UICombobox.removeBundle(this.c)));
    paramDialogInterface.dismiss();
    UICombobox.Option localOption = (UICombobox.Option)UICombobox.d(this.c).get(paramInt);
    UICombobox.a(this.c, localOption);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.am
 * JD-Core Version:    0.6.2
 */