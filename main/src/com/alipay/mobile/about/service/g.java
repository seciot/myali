package com.alipay.mobile.about.service;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobile.framework.service.ext.about.UpdateServices;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;

public final class g
  implements DialogInterface.OnClickListener
{
  private ClientUpdateCheckRes a = null;
  private UpdateServices b;
  private CacheManagerService c;

  public g(ClientUpdateCheckRes paramClientUpdateCheckRes, UpdateServices paramUpdateServices, CacheManagerService paramCacheManagerService)
  {
    this.a = paramClientUpdateCheckRes;
    this.b = paramUpdateServices;
    this.c = paramCacheManagerService;
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (-1 == paramInt);
    switch (this.a.getResultStatus())
    {
    default:
      this.b.update(this.a.getDownloadURL());
      if (-2 == paramInt)
        switch (this.a.getResultStatus())
        {
        default:
        case 202:
        }
      break;
    case 203:
    }
    while (true)
    {
      m.c();
      return;
      MicroApplicationContext localMicroApplicationContext = this.b.getMicroApplicationContext();
      localMicroApplicationContext.showProgressDialog(localMicroApplicationContext.getApplicationContext().getText(R.string.j).toString());
      this.b.update(this.a.getDownloadURL(), true);
      break;
      this.c.getDiskCacheService().put(null, null, "about_ignore_update_version", this.a.getNewestVersion().getBytes(), System.currentTimeMillis(), 604800000L, "txt");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.g
 * JD-Core Version:    0.6.2
 */