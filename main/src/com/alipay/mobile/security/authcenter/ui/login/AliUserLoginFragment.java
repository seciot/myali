package com.alipay.mobile.security.authcenter.ui.login;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.Filter;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.widget.validator.EditTextHasNullChecker;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.security.authcenter.ui.SmartInputTextView;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.List;

@EFragment
public abstract class AliUserLoginFragment<T> extends BaseLoginFragment
  implements View.OnClickListener, AdapterView.OnItemClickListener
{

  @ViewById(resName="loginAccountEditText")
  protected SmartInputTextView d;

  @ViewById(resName="accountClearButton")
  protected APImageButton e;

  @ViewById(resName="loginAccountButton")
  protected APImageView f;

  @ViewById(resName="alipayLoginPasswordInput")
  protected APInputBox g;

  @ViewById(resName="btnUserLogin")
  protected APButton h;
  protected AccountService i;
  protected com.alipay.mobile.security.authcenter.ui.a<T> j = null;
  protected List<T> k = new ArrayList();
  protected String l;
  protected LayoutInflater m;
  private EditTextHasNullChecker n = new EditTextHasNullChecker();

  protected final void b(boolean paramBoolean)
  {
    d(paramBoolean);
  }

  protected abstract List<T> c();

  protected final void c(boolean paramBoolean)
  {
    d(paramBoolean);
  }

  protected abstract void d();

  protected final void e()
  {
    this.g.setText("");
  }

  void f()
  {
    this.i = ((AccountService)this.a.getExtServiceByInterface(AccountService.class.getName()));
    this.f.setOnClickListener(this);
    this.h.setOnClickListener(this);
    this.g.getEtContent().setHintTextColor(getResources().getColor(R.color.colorccc));
    this.n.addNeedEnabledButton(this.h);
    this.d.addTextChangedListener(this.n);
    this.n.addNeedCheckView(this.d);
    APEditText localAPEditText = this.r.getCheckCodeInput().getEtContent();
    localAPEditText.addTextChangedListener(this.n);
    this.n.addNeedCheckView(localAPEditText);
    this.g.getEtContent().addTextChangedListener(this.n);
    this.n.addNeedCheckView(this.g.getEtContent());
    new a(this.d, this.e, this.g).a();
    this.d.requestFocus();
    a(this.d);
    g();
    this.d.setOnItemClickListener(this);
    super.f();
  }

  @Background
  void g()
  {
    List localList = c();
    if ((localList != null) && (!localList.isEmpty()))
    {
      this.k.clear();
      this.k.addAll(localList);
    }
    h();
  }

  @UiThread
  void h()
  {
    d();
    this.d.setDropDownHeight(-2);
    this.d.setAdapter(this.j);
    APImageView localAPImageView = this.f;
    if ((this.k != null) && (this.k.size() > 0));
    for (int i1 = 0; ; i1 = 8)
    {
      localAPImageView.setVisibility(i1);
      i();
      this.d.setDropDownBackgroundResource(R.drawable.j);
      return;
    }
  }

  protected void i()
  {
  }

  public void onClick(View paramView)
  {
    int i1 = paramView.getId();
    if (i1 == R.id.Z)
    {
      b();
      j();
    }
    while (i1 != R.id.bN)
      return;
    this.d.setThreshold(0);
    Filter localFilter = this.j.getFilter();
    if (localFilter != null)
      localFilter.filter(null);
    SecurityUtil.a(AlipayApplication.getInstance(), this.d);
    this.d.showDropDown();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.m = paramLayoutInflater;
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.AliUserLoginFragment
 * JD-Core Version:    0.6.2
 */