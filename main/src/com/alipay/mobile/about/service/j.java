package com.alipay.mobile.about.service;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;

final class j
  implements Runnable
{
  j(UpdateServicesImpl paramUpdateServicesImpl, String paramString1, ClientUpdateCheckRes paramClientUpdateCheckRes, String paramString2, DialogInterface.OnKeyListener paramOnKeyListener, String paramString3, DialogInterface.OnClickListener paramOnClickListener, String paramString4)
  {
  }

  public final void run()
  {
    Activity localActivity = UpdateServicesImpl.access$200(this.h);
    if (localActivity == null)
    {
      UpdateServicesImpl.access$300(this.h).getDiskCacheService().remove("about_ignore_update_version");
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(localActivity);
    localBuilder.setCancelable(false);
    localBuilder.setTitle(this.a + this.b.getNewestVersion());
    localBuilder.setMessage(this.c);
    localBuilder.setOnKeyListener(this.d);
    localBuilder.setPositiveButton(this.e, this.f);
    localBuilder.setNegativeButton(this.g, this.f);
    localBuilder.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.j
 * JD-Core Version:    0.6.2
 */