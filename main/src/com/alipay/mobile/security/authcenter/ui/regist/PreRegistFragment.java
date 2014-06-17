package com.alipay.mobile.security.authcenter.ui.regist;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.CheckBox;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.authcenter.ui.SecurityBaseFuncFragment;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="pre_regist")
public class PreRegistFragment extends SecurityBaseFuncFragment
{

  @ViewById(resName="regist_protocol_tip")
  APTextView d;

  @ViewById(resName="protocolCheck")
  APCheckboxWithLinkText e;

  @ViewById(resName="ensureRegist")
  APButton f;
  private a g;
  private String h;

  @UiThread
  protected void a(MicroApplication paramMicroApplication, String paramString)
  {
    String str = getText(R.string.T);
    this.d.setText(str.replace("%s", paramString));
    this.e.setTextViewUri("https://mgw.alipay.com/agreement.htm");
    this.e.getLinkTextView().setVisibility(0);
    this.e.getLinkTextView().setText(getResources().getString(R.string.ck));
    this.e.getCheckBox().setChecked(true);
    SecurityUtil.a((ActivityApplication)paramMicroApplication, this.e, "https://mgw.alipay.com/agreement.htm", getResources().getString(R.string.ck));
  }

  public final void a(MicroApplication paramMicroApplication, String paramString, a parama)
  {
    this.g = parama;
    if (StringUtils.isNotEmpty(paramString))
    {
      this.h = paramString;
      a(paramMicroApplication, paramString);
    }
  }

  @AfterViews
  final void c()
  {
    Bundle localBundle = getArguments();
    if (localBundle != null)
    {
      this.h = ((LoginInfo)localBundle.getParcelable("registInfo")).a();
      if (!TextUtils.isEmpty(this.h))
      {
        String str = getText(R.string.T);
        this.d.setText(str.replace("%s", this.h));
      }
    }
    EditTextHasNullChecker localEditTextHasNullChecker = new EditTextHasNullChecker();
    CheckBox localCheckBox = this.e.getCheckBox();
    localCheckBox.setOnCheckedChangeListener(localEditTextHasNullChecker);
    localEditTextHasNullChecker.addNeedCheckCheckBox(localCheckBox);
    localEditTextHasNullChecker.addNeedEnabledButton(this.f);
    this.e.setTextViewUri("https://mgw.alipay.com/agreement.htm");
    SecurityUtil.a((ActivityApplication)this.b, this.e, "https://mgw.alipay.com/agreement.htm", getResources().getString(R.string.ck));
    this.f.setOnClickListener(new a(this));
  }

  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.regist.PreRegistFragment
 * JD-Core Version:    0.6.2
 */