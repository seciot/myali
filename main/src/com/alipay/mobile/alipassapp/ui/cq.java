package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.Calendar;
import java.util.Date;

final class cq
  implements DialogInterface.OnClickListener
{
  cq(cp paramcp, Calendar paramCalendar)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AlipassRemindActivity.a(this.b.a, this.a.getTime().getTime()))
    {
      AlipassRemindActivity.a(this.b.a, this.a);
      AlipassRemindActivity.a(this.b.a, this.a.getTime());
      AlipassRemindActivity.a(this.b.a, AlipassRemindActivity.a(this.b.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cq
 * JD-Core Version:    0.6.2
 */