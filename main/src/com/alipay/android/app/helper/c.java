package com.alipay.android.app.helper;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;

final class c extends Thread
{
  c(Context paramContext)
  {
  }

  public final void run()
  {
    try
    {
      this.a.getContentResolver().delete(Uri.parse("content://com.alipay.android.app.share"), null, null);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.c
 * JD-Core Version:    0.6.2
 */