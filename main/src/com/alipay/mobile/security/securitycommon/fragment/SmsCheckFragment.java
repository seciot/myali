package com.alipay.mobile.security.securitycommon.fragment;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckCodeVerticalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckCallBack;
import com.alipay.mobile.framework.service.ext.security.SmsCheckResultCallBack;
import com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode;
import com.alipay.mobile.security.securitycommon.CommonEditTextHasNullChecker;
import com.alipay.mobile.ui.R.color;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.concurrent.atomic.AtomicBoolean;

@EFragment
public class SmsCheckFragment extends Fragment
  implements OnSendCallback, AutoReadSmsCheckCodeCallBack, SmsCheckResultCallBack
{
  public static final String a = SmsCheckFragment.class.getSimpleName();

  @ViewById(resName="register_inputSmsCodeTip")
  protected APTextView b;
  protected APCheckCodeVerticalView c;
  protected APCheckCodeHorizontalView d;

  @ViewById(resName="register_verifySmsCodeButton")
  protected APButton e;
  protected APTitleBar f;
  private CommonEditTextHasNullChecker g;
  private AutoReadSmsCheckCode h;
  private AtomicBoolean i;
  private String j;
  private int k = 2;
  private SmsCheckCallBack l;
  private APInputBox m;
  private String n = "";
  private SendResultCallback o;

  @UiThread
  public void OnAutoReadSms(String paramString)
  {
    APEditText localAPEditText;
    if ((this.i.get()) && (this.m != null) && (getActivity() != null) && (!getActivity().isFinishing()))
    {
      new StringBuilder("isNeedAutoInputSms=").append(this.i.get()).toString();
      this.n = paramString;
      this.m.getEtContent().setText(paramString);
      localAPEditText = this.m.getEtContent();
      if (!StringUtils.isEmpty(paramString))
        break label134;
    }
    label134: for (int i1 = 0; ; i1 = paramString.length())
    {
      localAPEditText.setSelection(i1);
      this.e.setEnabled(true);
      AlipayApplication.getInstance().getMicroApplicationContext().Toast(getResources().getString(R.string.ao), 1);
      return;
    }
  }

  public final void a()
  {
    this.i.set(true);
    this.h.dispose();
    this.h.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
  }

  public final void a(SmsCheckCallBack paramSmsCheckCallBack)
  {
    this.l = paramSmsCheckCallBack;
  }

  @UiThread
  void a(Object paramObject, int paramInt)
  {
    if (this.l != null)
      this.l.a(paramObject, paramInt);
  }

  @Background
  protected void a(String paramString, SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    if (this.l != null)
    {
      String str = "down_input";
      if ((!TextUtils.isEmpty(this.n)) && (this.n.equals(paramString)))
        str = "down_auto";
      a(this.l.a(paramString, str, paramSmsCheckResultCallBack), 1);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.m.getEtContent().requestFocus();
      ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(this.m.getEtContent(), 0);
    }
    this.m.setText(null);
  }

  @AfterViews
  protected final void b()
  {
    this.e.setOnClickListener(new SmsCheckFragment.1(this));
    if (this.k == 2)
    {
      this.c.setOnSendCallback(this);
      this.c.scheduleTimer();
      this.m = this.c.getInputBox();
      if (this.m != null)
      {
        this.m.setInputType(2);
        this.m.getEtContent().addTextChangedListener(this.g);
        this.m.getEtContent().setHintTextColor(getResources().getColor(R.color.colorccc));
        this.g.a(this.m.getEtContent());
      }
      this.g.a(this.e);
      if (!TextUtils.isEmpty(this.j))
      {
        if (this.k != 2)
          break label292;
        APTextView localAPTextView = this.b;
        StringBuilder localStringBuilder = new StringBuilder();
        String str = getResources().getString(R.string.cl);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = ("<font color=\"#ff6600\">" + getResources().getString(R.string.bQ) + "</font>");
        localAPTextView.setText(Html.fromHtml(String.format(str, arrayOfObject) + this.j));
      }
    }
    while (true)
    {
      this.m.clearFocus();
      this.m.postDelayed(new SmsCheckFragment.2(this), 200L);
      return;
      this.d.setOnSendCallback(this);
      this.d.scheduleTimer();
      this.m = this.d.getInputBox();
      break;
      label292: this.b.setText(this.j);
    }
  }

  @UiThread
  public void b(boolean paramBoolean)
  {
    if (this.o != null)
    {
      if (paramBoolean)
        this.o.onSuccess();
    }
    else
      return;
    this.o.onFail();
  }

  @Background
  protected void c()
  {
    if (this.l != null)
    {
      a(this.l.a(this), 2);
      return;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (getArguments() != null)
    {
      this.j = getArguments().getString("PageTips");
      this.k = getArguments().getInt("smsCheckCodeType", 2);
    }
    this.i = new AtomicBoolean(true);
    this.g = new CommonEditTextHasNullChecker();
    this.h = new AutoReadSmsCheckCode(null, this);
    this.h.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (this.k == 2)
    {
      localView = paramLayoutInflater.inflate(R.layout.ai, paramViewGroup, false);
      this.c = ((APCheckCodeVerticalView)localView.findViewById(R.id.dj));
    }
    while (true)
    {
      this.f = ((APTitleBar)localView.findViewById(R.id.I));
      if ((getArguments() != null) && (!StringUtils.isEmpty(getArguments().getString("smsCheckCodePageTitle"))))
        this.f.setTitleText(getArguments().getString("smsCheckCodePageTitle"));
      return localView;
      localView = paramLayoutInflater.inflate(R.layout.aj, paramViewGroup, false);
      this.d = ((APCheckCodeHorizontalView)localView.findViewById(R.id.dj));
    }
  }

  public void onDestroyView()
  {
    super.onDestroyView();
    if (this.h != null)
      this.h.dispose();
  }

  public void onSend(SendResultCallback paramSendResultCallback)
  {
    c();
    this.o = paramSendResultCallback;
    paramSendResultCallback.onSuccess();
    this.i.set(true);
    this.h.dispose();
    this.h.readsms("(\\d{4,6})", 1, Long.valueOf(System.currentTimeMillis()), 60, "", new String[] { "95188" });
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment
 * JD-Core Version:    0.6.2
 */