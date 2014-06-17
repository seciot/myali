package com.alipay.mobile.common.dialog;

import android.content.Context;
import android.text.Editable;
import android.view.View;
import com.alipay.mobile.common.dialog.base.BasePwdInputDialog;
import com.alipay.mobile.common.dialog.base.BasePwdInputDialog.CloseDialogCallback;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.layout;

public class NormalPwdInputDialog extends BasePwdInputDialog
{
  public NormalPwdInputDialog(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString)
  {
    super(paramContext, paramCloseDialogCallback, paramString);
  }

  public NormalPwdInputDialog(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString1, String paramString2)
  {
    super(paramContext, paramCloseDialogCallback, paramString1, paramString2);
  }

  protected int getLayoutId()
  {
    return R.layout.dialog_six_char_pwd_input;
  }

  protected int getPwdInputViewId()
  {
    return R.id.close_pwd_input;
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    View localView = this.ensureBtn;
    if (paramEditable.length() >= 6);
    for (boolean bool = true; ; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.NormalPwdInputDialog
 * JD-Core Version:    0.6.2
 */