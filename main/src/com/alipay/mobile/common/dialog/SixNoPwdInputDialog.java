package com.alipay.mobile.common.dialog;

import android.content.Context;
import com.alipay.mobile.common.dialog.base.BasePwdInputDialog;
import com.alipay.mobile.common.dialog.base.BasePwdInputDialog.CloseDialogCallback;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;

public class SixNoPwdInputDialog extends BasePwdInputDialog
{
  public SixNoPwdInputDialog(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString)
  {
    super(paramContext, paramCloseDialogCallback, paramString);
  }

  public SixNoPwdInputDialog(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString1, String paramString2)
  {
    super(paramContext, paramCloseDialogCallback, paramString1, paramString2);
  }

  protected int getLayoutId()
  {
    return R.layout.dialog_six_no_pwd_input;
  }

  protected int getPwdInputViewId()
  {
    return R.id.close_pwd_input;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.SixNoPwdInputDialog
 * JD-Core Version:    0.6.2
 */