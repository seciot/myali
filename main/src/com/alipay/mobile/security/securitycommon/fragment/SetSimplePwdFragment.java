package com.alipay.mobile.security.securitycommon.fragment;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Editable;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox.PWDInputListener;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.PwdHistoryClearCallBack;
import com.alipay.mobile.security.securitycommon.FormatValidationUtil;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="security_simplepwd_fragment")
public class SetSimplePwdFragment extends Fragment
  implements APSixNumberPwdInputBox.PWDInputListener, PwdHistoryClearCallBack
{

  @ViewById(resName="pwdInputTitle")
  protected APTextView a;

  @ViewById(resName="simple_pwd_input")
  protected APSixNumberPwdInputBox b;

  @ViewById(resName="verifyBtn")
  protected APButton c;
  private String d;
  private String e;
  private String f;
  private String g;
  private SetSimplePwdCallBack h;
  private int i = 0;

  @UiThread
  public void a()
  {
    this.a.setText(getResources().getText(R.string.cK));
    this.b.clearInput();
    this.b.clearPwd();
    this.c.setVisibility(8);
  }

  @UiThread
  void a(Object paramObject)
  {
    if (this.h != null)
      this.h.a(paramObject, this);
  }

  @Background
  void a(String paramString)
  {
    if (this.h != null)
      a(this.h.a(paramString, this));
  }

  public final void a(String paramString1, String paramString2, SetSimplePwdCallBack paramSetSimplePwdCallBack)
  {
    this.h = paramSetSimplePwdCallBack;
    this.f = paramString1;
    this.g = paramString2;
  }

  public final void b()
  {
    this.b.callInputMethod();
  }

  @Background
  void c()
  {
    if (this.h != null)
      this.h.a();
  }

  public final PwdHistoryClearCallBack d()
  {
    return this;
  }

  public final boolean e()
  {
    if (this.i > 0)
    {
      a();
      return true;
    }
    return false;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.b.setPwdInputListener(this);
    this.c.setOnClickListener(new SetSimplePwdFragment.1(this));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i = 0;
    c();
  }

  public void pwdInputed(int paramInt, Editable paramEditable)
  {
    int j = 1;
    this.i = paramInt;
    if (paramEditable != null)
    {
      if (paramEditable.length() != 6)
        break label292;
      if (paramInt != j)
        break label222;
      this.d = this.b.getInputedPwd(paramInt);
      str1 = this.d;
      if ((!FormatValidationUtil.d(str1)) && (!FormatValidationUtil.c(str1)))
        break label131;
      str2 = "请不要使用连续的数字";
      if (str2 != null)
      {
        AlipayApplication.getInstance().getMicroApplicationContext().Toast(str2, 0);
        j = 0;
      }
      if (j == 0)
        break label212;
      this.a.setText(getResources().getText(R.string.cL));
      this.c.setEnabled(false);
      this.c.setVisibility(0);
      this.b.clearInput();
    }
    label131: label212: label222: 
    while (paramInt < 2)
      while (true)
      {
        String str1;
        String str2;
        return;
        if (FormatValidationUtil.b(str1))
        {
          str2 = "请不要使用相同的数字";
        }
        else if ((this.f != null) && (FormatValidationUtil.a(this.f, str1)))
        {
          str2 = "请不要使用手机号码中的连续数字";
        }
        else
        {
          String str3 = this.g;
          str2 = null;
          if (str3 != null)
          {
            boolean bool = FormatValidationUtil.a(this.g, str1);
            str2 = null;
            if (bool)
            {
              str2 = "请不要使用身份证中的连续数字";
              continue;
              this.b.clearPwd();
            }
          }
        }
      }
    this.e = this.b.getInputedPwd(paramInt);
    if (!this.e.equals(this.d))
    {
      AlipayApplication.getInstance().getMicroApplicationContext().Toast("密码不一致，请重新输入", 0);
      this.b.clearInput();
      this.b.clearPwdByIndex(paramInt);
      return;
    }
    this.c.setEnabled(j);
    return;
    label292: this.c.setEnabled(false);
  }

  public static abstract interface SetSimplePwdCallBack
  {
    public abstract Object a(String paramString, PwdHistoryClearCallBack paramPwdHistoryClearCallBack);

    public abstract void a();

    public abstract void a(Object paramObject, PwdHistoryClearCallBack paramPwdHistoryClearCallBack);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment
 * JD-Core Version:    0.6.2
 */