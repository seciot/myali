package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.alipassapp.biz.common.g;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class d
  implements DialogInterface.OnClickListener
{
  d(AlipassDetailActivity paramAlipassDetailActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AlipayApplication.getInstance().getMicroApplicationContext().finishApp(AlipassDetailActivity.m(this.a).getSourceId(), AlipassDetailActivity.n(this.a).getAppId(), null);
    g.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.d
 * JD-Core Version:    0.6.2
 */