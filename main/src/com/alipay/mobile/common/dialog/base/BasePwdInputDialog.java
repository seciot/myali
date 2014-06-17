package com.alipay.mobile.common.dialog.base;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.TextView;
import com.alipay.mobile.commonui.widget.APBasePwdInputBox;
import com.alipay.mobile.commonui.widget.APBasePwdInputBox.PWDInputListener2;
import com.alipay.mobile.ui.R.id;
import com.alipay.mobile.ui.R.style;

public abstract class BasePwdInputDialog extends Dialog
  implements APBasePwdInputBox.PWDInputListener2
{
  private BasePwdInputDialog.CloseDialogCallback a;
  private LayoutInflater b;
  private Context c;
  private APBasePwdInputBox d;
  private String e;
  protected View ensureBtn;
  private String f;

  public BasePwdInputDialog(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString)
  {
    super(paramContext, R.style.dialog_with_no_title_style_trans_bg);
    a(paramContext, paramCloseDialogCallback, paramString);
  }

  public BasePwdInputDialog(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString1, String paramString2)
  {
    super(paramContext, R.style.dialog_with_no_title_style_trans_bg);
    a(paramContext, paramCloseDialogCallback, paramString1);
    this.f = paramString2;
  }

  private void a(Context paramContext, BasePwdInputDialog.CloseDialogCallback paramCloseDialogCallback, String paramString)
  {
    this.c = paramContext;
    this.a = paramCloseDialogCallback;
    this.b = LayoutInflater.from(paramContext);
    this.e = paramString;
  }

  protected abstract int getLayoutId();

  protected abstract int getPwdInputViewId();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    View localView = this.b.inflate(getLayoutId(), null);
    setContentView(localView);
    setCanceledOnTouchOutside(false);
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    localLayoutParams.width = (-60 + this.c.getResources().getDisplayMetrics().widthPixels);
    getWindow().setAttributes(localLayoutParams);
    this.d = ((APBasePwdInputBox)localView.findViewById(getPwdInputViewId()));
    this.d.setPwdInputListener(this);
    ((Button)localView.findViewById(R.id.cancel)).setOnClickListener(new BasePwdInputDialog.1(this));
    this.ensureBtn = ((Button)localView.findViewById(R.id.ensure));
    this.ensureBtn.setOnClickListener(new BasePwdInputDialog.2(this));
    ((TextView)localView.findViewById(R.id.titleTip)).setText(this.e);
    TextView localTextView = (TextView)localView.findViewById(R.id.subTitleTip);
    if (TextUtils.isEmpty(this.f))
    {
      localTextView.setVisibility(8);
      return;
    }
    localTextView.setText(this.f);
    localTextView.setVisibility(0);
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    View localView = this.ensureBtn;
    if (paramEditable.length() == 6);
    for (boolean bool = true; ; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.dialog.base.BasePwdInputDialog
 * JD-Core Version:    0.6.2
 */