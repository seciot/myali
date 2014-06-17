package com.alipay.android.widget.security.ui;

import android.app.Activity;
import android.app.Dialog;
import android.content.res.Resources;
import android.text.Editable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.PWDInputListener;
import com.alipay.mobile.ui.R.style;

public class SimplePwdCloseUI
  implements View.OnClickListener, APSixNumberPwdInputBox.PWDInputListener
{
  private Activity a;
  private LayoutInflater b;
  private APButton c;
  private APButton d;
  private Dialog e;
  private APSixNumberPwdInputBox f;
  private CloseDialogCallback g;

  public SimplePwdCloseUI(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = LayoutInflater.from(this.a);
  }

  private void a(boolean paramBoolean)
  {
    String str = this.f.getInputedPwd(-1);
    if (this.g != null)
      this.g.a(paramBoolean, str);
  }

  public final Dialog a(String paramString)
  {
    this.e = new Dialog(this.a, R.style.dialog_with_no_title_style);
    View localView = this.b.inflate(R.layout.O, null);
    TextView localTextView = (TextView)localView.findViewById(R.id.gf);
    Button localButton = (Button)localView.findViewById(R.id.aY);
    if (StringUtils.isNotEmpty(null))
      localTextView.setText(null);
    if (StringUtils.isNotEmpty(paramString))
      localButton.setText(paramString);
    this.e.setContentView(localView);
    this.c = ((APButton)localView.findViewById(R.id.ad));
    this.d = ((APButton)localView.findViewById(R.id.aY));
    this.e.setCanceledOnTouchOutside(false);
    this.f = ((APSixNumberPwdInputBox)localView.findViewById(R.id.aG));
    this.f.setPwdInputListener(this);
    this.c.setOnClickListener(this);
    this.d.setOnClickListener(this);
    this.e.setOnCancelListener(new SimplePwdCloseUI.1(this));
    this.e.getWindow().getAttributes().width = (-40 + this.a.getResources().getDisplayMetrics().widthPixels);
    return this.e;
  }

  public final void a()
  {
    this.e.dismiss();
  }

  public final void a(CloseDialogCallback paramCloseDialogCallback)
  {
    this.g = paramCloseDialogCallback;
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.aY);
    for (boolean bool = true; ; bool = false)
    {
      a(bool);
      return;
    }
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    APButton localAPButton = this.d;
    if (paramEditable.length() == 6);
    for (boolean bool = true; ; bool = false)
    {
      localAPButton.setEnabled(bool);
      return;
    }
  }

  public static abstract interface CloseDialogCallback
  {
    public abstract void a(boolean paramBoolean, String paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SimplePwdCloseUI
 * JD-Core Version:    0.6.2
 */