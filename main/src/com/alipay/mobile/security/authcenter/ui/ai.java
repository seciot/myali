package com.alipay.mobile.security.authcenter.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;

final class ai
  implements DialogInterface.OnClickListener
{
  ai(RegisterDownSmsFragment paramRegisterDownSmsFragment)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.d.getEtContent().setText(null);
    this.a.d.getEtContent().requestFocus();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ai
 * JD-Core Version:    0.6.2
 */