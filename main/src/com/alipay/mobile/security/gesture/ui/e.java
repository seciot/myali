package com.alipay.mobile.security.gesture.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;

final class e
  implements DialogInterface.OnClickListener
{
  e(GestureActivity paramGestureActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    GestureDataCenter.getInstance().setNeedAuthGesture(false);
    GestureActivity.j(this.a);
    GestureActivity.a(this.a, "com.alipay.mobile.GESTURE_SETTING_SUCESS", "state=skipGestureAction");
    GestureActivity.b(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.e
 * JD-Core Version:    0.6.2
 */