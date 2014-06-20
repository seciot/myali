package com.alipay.android.mini.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.android.mini.event.OnElementEventListener;
import com.alipay.android.mini.widget.CustomEditText;
import com.alipay.android.mini.widget.YearMonthPicker;
import com.alipay.android.mini.widget.YearMonthPickerDialog;

final class a
  implements DialogInterface.OnClickListener
{
  a(CardValidateInputUtil paramCardValidateInputUtil)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    int i = CardValidateInputUtil.a(this.a).b.getYear();
    CardValidateInputUtil.a(this.a, CardValidateInputUtil.a(this.a).b.getMonthStr(true));
    CardValidateInputUtil.b(this.a, String.valueOf(i));
    CardValidateInputUtil.c(this.a, CardValidateInputUtil.b(this.a).substring(2, 4));
    CardValidateInputUtil.removeBundle(this.a).setText(CardValidateInputUtil.c(this.a) + "/" + CardValidateInputUtil.d(this.a));
    CardValidateInputUtil.f(this.a).a(CardValidateInputUtil.removeBundle(this.a), new MiniEventArgs(ActionType.t));
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.a
 * JD-Core Version:    0.6.2
 */