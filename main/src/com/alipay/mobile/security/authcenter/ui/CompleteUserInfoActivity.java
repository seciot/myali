package com.alipay.mobile.security.authcenter.ui;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.Toast;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.security.authcenter.a.b;
import com.alipay.mobile.security.securitycommon.CommonEditTextHasNullChecker;
import com.alipay.mobileapp.common.service.facade.account.supplement.model.QUserInfoSupplementRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.lang.ref.WeakReference;

@EActivity(resName="security_complete_userinfo")
public class CompleteUserInfoActivity extends BaseActivity
{

  @ViewById(resName="security_complete_userinfo_hint")
  protected APTextView a;

  @ViewById(resName="security_account_login_id_value")
  protected APTextView b;

  @ViewById(resName="security_user_name")
  protected APInputBox c;

  @ViewById(resName="security_pay_password")
  protected APInputBox d;

  @ViewById(resName="security_show_password_box")
  protected APCheckboxWithLinkText e;

  @ViewById(resName="complete_button")
  protected APButton f;
  private b g;
  private AlertDialog.Builder h;
  private CommonEditTextHasNullChecker i = new CommonEditTextHasNullChecker();
  private View.OnClickListener j = new j(this);
  private View.OnClickListener k = new k(this);

  @AfterViews
  protected final void a()
  {
    this.f.setOnClickListener(this.j);
    this.e.getCheckBox().setOnClickListener(this.k);
    this.c.addTextChangedListener(this.i);
    this.i.a(this.c.getEtContent());
    this.d.addTextChangedListener(this.i);
    this.i.a(this.d.getEtContent());
    this.i.a(this.f);
    String str = getIntent().getStringExtra("logonId");
    this.b.setText(str);
    this.d.setInputType(1);
    this.e.getCheckBox().setChecked(true);
    this.d.getEtContent().setLongClickable(false);
    this.h = new AlertDialog.Builder(this);
    if (getIntent().getBooleanExtra("FROM_REGISTER", false))
      this.d.setHint(getResources().getString(R.string.ct));
  }

  @UiThread
  protected void a(String paramString1, String paramString2)
  {
    Toast localToast = Toast.makeText(this, getResources().getString(R.string.bh), 2);
    localToast.setGravity(17, 0, 0);
    localToast.show();
    MicroApplicationContext localMicroApplicationContext = this.mApp.getMicroApplicationContext();
    Bundle localBundle = new Bundle();
    localBundle.putString("logonId", paramString1);
    localBundle.putString("password", paramString2);
    localBundle.putString("login_entry", "register");
    try
    {
      localMicroApplicationContext.startApp(this.mApp.getAppId(), "20000008", localBundle);
      localMicroApplicationContext.finishApp(this.mApp.getAppId(), this.mApp.getAppId(), null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
    throw new RuntimeException();
  }

  @Background
  protected void b()
  {
    String str1 = this.c.getInputedText();
    if (str1 != null)
      str1 = str1.trim();
    String str2 = this.d.getInputedText();
    String str3 = getIntent().getStringExtra("logonId");
    showProgressDialog(getResources().getString(R.string.be));
    QUserInfoSupplementRes localQUserInfoSupplementRes;
    try
    {
      boolean bool1 = getIntent().getBooleanExtra("FROM_REGISTER", false);
      String str4 = null;
      if (bool1)
        str4 = str2;
      localQUserInfoSupplementRes = this.g.a(str3, str1, str2, str4);
      dismissProgressDialog();
      if (localQUserInfoSupplementRes == null)
      {
        String str5 = getResources().getString(R.string.bf) + "。";
        ((Activity)this.mApp.getMicroApplicationContext().getTopActivity().get()).runOnUiThread(new l(this, this, str5));
        toast(getResources().getString(R.string.bf), 0);
        return;
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      dismissProgressDialog();
      throw localRuntimeException;
    }
    if (localQUserInfoSupplementRes.getResultStatus() == 1000)
    {
      setResult(20080100);
      boolean bool2 = getIntent().getBooleanExtra("FROM_REGISTER", false);
      c();
      if (bool2)
      {
        a(str3, str2);
        return;
      }
      finish();
      return;
    }
    toast(localQUserInfoSupplementRes.getMemo(), 0);
  }

  @UiThread
  protected void c()
  {
    Toast localToast = Toast.makeText(this, getResources().getString(R.string.bg), 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = new b(this.mApp, this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.CompleteUserInfoActivity
 * JD-Core Version:    0.6.2
 */