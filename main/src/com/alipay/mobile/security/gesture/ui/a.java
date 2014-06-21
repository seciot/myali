package com.alipay.mobile.security.gesture.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

final class a
  implements DialogInterface.OnClickListener
{
  a(GestureActivity paramGestureActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    GestureActivity.a(this.a, GestureActivity.getBundle(this.a).getLogonId());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.a
 * JD-Core Version:    0.6.2
 */