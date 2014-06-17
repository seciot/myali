package com.alipay.mobile.withdraw.ui;

import com.alipay.mobile.common.dialog.base.BasePwdInputDialog.CloseDialogCallback;
import com.alipay.mobile.common.misc.ExtViewUtil;

final class j
  implements BasePwdInputDialog.CloseDialogCallback
{
  j(h paramh)
  {
  }

  public final void onClose(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      this.a.a.a(paramString);
      return;
    }
    ExtViewUtil.closeSoftInputWindow(this.a.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.j
 * JD-Core Version:    0.6.2
 */