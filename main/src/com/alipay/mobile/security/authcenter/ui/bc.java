package com.alipay.mobile.security.authcenter.ui;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;

final class bc
  implements Runnable
{
  bc(TaobaoBindingAlipayUserActivity paramTaobaoBindingAlipayUserActivity, Context paramContext, String paramString)
  {
  }

  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setMessage(this.b);
    localBuilder.setPositiveButton(this.c.getResources().getString(R.string.bZ), new bd(this));
    localBuilder.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.bc
 * JD-Core Version:    0.6.2
 */