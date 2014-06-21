package com.alipay.mobile.appstoreapp.download;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class a
  implements DialogInterface.OnClickListener
{
  a(ExternalDownloadIntentService paramExternalDownloadIntentService, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ExternalDownloadIntentService.getBundle(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.download.a
 * JD-Core Version:    0.6.2
 */