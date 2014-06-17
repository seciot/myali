package com.alipay.mobile.security.authcenter.ui;

import android.app.AlertDialog.Builder;
import android.content.Context;

final class l
  implements Runnable
{
  l(CompleteUserInfoActivity paramCompleteUserInfoActivity, Context paramContext, String paramString)
  {
  }

  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setMessage(this.b);
    localBuilder.setPositiveButton("确定", new m(this));
    localBuilder.show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.l
 * JD-Core Version:    0.6.2
 */