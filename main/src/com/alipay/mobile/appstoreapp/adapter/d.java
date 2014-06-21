package com.alipay.mobile.appstoreapp.adapter;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class d
  implements DialogInterface.OnClickListener
{
  d(FastLoginAppAdapter paramFastLoginAppAdapter, App paramApp)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    try
    {
      FastLoginAppAdapter.v(this.b, this.a);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      FastLoginAppAdapter.stop();
      localAppLoadException.getLocalizedMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.adapter.d
 * JD-Core Version:    0.6.2
 */