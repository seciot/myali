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
    if (AlipassRemindActivity.v(this.b.a, this.a.getTime().getTime()))
    {
      AlipassRemindActivity.v(this.b.a, this.a);
      AlipassRemindActivity.v(this.b.a, this.a.getTime());
      AlipassRemindActivity.v(this.b.a, AlipassRemindActivity.getBundle(this.b.a));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cq
 * JD-Core Version:    0.6.2
 */