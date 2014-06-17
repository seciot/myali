package com.alipay.mobile.commonbiz.biz.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.style;

public class UserTipDialog extends Dialog
{
  private Context a;
  private int b;
  private int c;
  private CheckBox d;
  private TextView e;
  private PopupWindow f;
  private Button g;
  private Button h;
  private View.OnClickListener i;

  public UserTipDialog(Context paramContext)
  {
    this(paramContext, R.style.dialog_with_no_title_style_trans_bg);
    this.a = paramContext;
  }

  public UserTipDialog(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }

  public UserTipDialog(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, paramBoolean, paramOnCancelListener);
  }

  public static int dip2px(Context paramContext, int paramInt)
  {
    return (int)(0.5F + paramContext.getResources().getDisplayMetrics().density * paramInt);
  }

  public boolean getCheckBoxState()
  {
    return this.d.isChecked();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.user_tip_alertdialog);
    setCancelable(false);
    setCanceledOnTouchOutside(false);
    WindowManager.LayoutParams localLayoutParams = getWindow().getAttributes();
    this.b = localLayoutParams.width;
    this.c = localLayoutParams.height;
    this.g = ((Button)findViewById(R.id.btn_user_tip_ok));
    this.h = ((Button)findViewById(R.id.btn_user_tip_no));
    this.d = ((CheckBox)findViewById(R.id.user_tip_checkbox));
    this.g.setOnClickListener(this.i);
    this.h.setOnClickListener(this.i);
    this.e = ((TextView)findViewById(R.id.user_txt));
    this.e.setOnClickListener(new UserTipDialog.1(this));
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.i = paramOnClickListener;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.dialog.UserTipDialog
 * JD-Core Version:    0.6.2
 */