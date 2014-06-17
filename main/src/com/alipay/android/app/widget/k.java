package com.alipay.android.app.widget;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;

final class k extends Handler
{
  private WeakReference a;

  public k(DialogInterface paramDialogInterface)
  {
    super(Looper.getMainLooper());
    this.a = new WeakReference(paramDialogInterface);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 0:
    default:
      return;
    case -3:
    case -2:
    case -1:
      ((DialogInterface.OnClickListener)paramMessage.obj).onClick((DialogInterface)this.a.get(), paramMessage.what);
      return;
    case 1:
    }
    ((DialogInterface)paramMessage.obj).dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.k
 * JD-Core Version:    0.6.2
 */