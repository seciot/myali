package com.alipay.android.widget.security.service;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;

final class h
  implements DialogInterface.OnClickListener
{
  h(TaobaoBindingServiceImpl paramTaobaoBindingServiceImpl, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("login_entry", "taobaoBinding");
    localBundle.putString("logonId", this.a);
    localBundle.putBoolean("allowBack", false);
    try
    {
      TaobaoBindingServiceImpl.access$100(this.b).startApp("", "20000008", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.h
 * JD-Core Version:    0.6.2
 */