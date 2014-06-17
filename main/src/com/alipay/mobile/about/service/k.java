package com.alipay.mobile.about.service;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;

final class k
  implements Runnable
{
  k(UpdateServicesImpl paramUpdateServicesImpl, String paramString1, ClientUpdateCheckRes paramClientUpdateCheckRes, String paramString2, DialogInterface.OnKeyListener paramOnKeyListener, String paramString3, DialogInterface.OnClickListener paramOnClickListener)
  {
  }

  public final void run()
  {
    Activity localActivity = UpdateServicesImpl.access$200(this.g);
    if (localActivity != null)
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(localActivity);
      localBuilder.setCancelable(false);
      localBuilder.setTitle(this.a + this.b.getNewestVersion());
      localBuilder.setMessage(this.c);
      localBuilder.setOnKeyListener(this.d);
      localBuilder.setPositiveButton(this.e, this.f);
      localBuilder.show();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.k
 * JD-Core Version:    0.6.2
 */