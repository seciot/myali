package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import java.util.concurrent.atomic.AtomicBoolean;

final class ek
  implements DialogInterface.OnCancelListener
{
  ek(MemberCardObtainableListActivity paramMemberCardObtainableListActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    MemberCardObtainableListActivity.a(this.a).set(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ek
 * JD-Core Version:    0.6.2
 */