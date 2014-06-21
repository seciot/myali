package com.alipay.mobile.about.service;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.about.UpdateServices;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;

final class b
  implements DialogInterface.OnClickListener
{
  b(a parama, ClientUpdateCheckRes paramClientUpdateCheckRes)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((UpdateServices)a.getBundle(this.b).getExtServiceByInterface(UpdateServices.class.getName())).update(this.a.getDownloadURL());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.b
 * JD-Core Version:    0.6.2
 */