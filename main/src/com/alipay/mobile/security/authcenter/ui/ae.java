package com.alipay.mobile.security.authcenter.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

final class ae
  implements DialogInterface.OnClickListener
{
  ae(ad paramad)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AlipayApplication.getInstance().getMicroApplicationContext().showProgressDialog("");
    this.a.a.getBundle(this.a.a.d.getInputedText().replace(" ", ""));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ae
 * JD-Core Version:    0.6.2
 */