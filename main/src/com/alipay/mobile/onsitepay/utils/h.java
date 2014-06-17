package com.alipay.mobile.onsitepay.utils;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

final class h extends Handler
{
  private WeakReference<DialogInterface> a;

  public h(DialogInterface paramDialogInterface)
  {
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
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.h
 * JD-Core Version:    0.6.2
 */