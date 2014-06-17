package com.alipay.mobile.mobilerechargeapp.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.ArrayList;

final class a
  implements DialogInterface.OnClickListener
{
  a(SelectAccountListener paramSelectAccountListener, ArrayList paramArrayList)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.a(((java.lang.String[])this.b.get(paramInt))[0], ((java.lang.String[])this.b.get(paramInt))[1]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.utils.a
 * JD-Core Version:    0.6.2
 */