package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.alipay.mobilesecurity.core.model.account.certify.VerifyCertifyByMspRes;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="authentication_fail_card")
public class CertifiedFailCardFragment extends BaseAuthenticationFragment
{

  @ViewById(resName="titleBar")
  protected APTitleBar d;

  @ViewById(resName="security_certified_icon")
  protected APImageView e;

  @ViewById(resName="security_certified_status")
  protected APTextView f;

  @ViewById(resName="security_certified_status_tip")
  protected APTextView g;

  @ViewById(resName="confirm_btn")
  protected APButton h;

  @ViewById(resName="two_btn_layout")
  protected APLinearLayout i;

  @ViewById(resName="not_certified_btn")
  protected APButton j;

  @ViewById(resName="change_card_btn")
  protected APButton k;
  protected APButton l;
  protected View.OnClickListener m = new CertifiedFailCardFragment.3(this);
  private View.OnClickListener n = new CertifiedFailCardFragment.1(this);
  private View.OnClickListener o = new CertifiedFailCardFragment.2(this);

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d.setGenericButtonIconResource(R.drawable.n);
    this.l = this.d.getRightButton();
    this.l.setVisibility(0);
    this.l.setOnClickListener(this.m);
    this.h.setOnClickListener(this.n);
    this.j.setOnClickListener(this.n);
    this.k.setOnClickListener(this.o);
    Bundle localBundle = getArguments();
    String str;
    VerifyCertifyByMspRes localVerifyCertifyByMspRes;
    if (localBundle != null)
    {
      a("N");
      str = localBundle.getString("fromWhich");
      if (!"VerifyCertifyByMspRes".equalsIgnoreCase(str))
        break label246;
      localVerifyCertifyByMspRes = (VerifyCertifyByMspRes)a(localBundle, VerifyCertifyByMspRes.class);
      if (localVerifyCertifyByMspRes != null)
      {
        if (!"2".equalsIgnoreCase(localVerifyCertifyByMspRes.viewStyle))
          break label192;
        this.e.setImageResource(R.drawable.d);
        this.f.setText(getText(R.string.aW));
        this.g.setText(localVerifyCertifyByMspRes.message);
        this.h.setVisibility(8);
        this.i.setVisibility(0);
      }
    }
    label192: label246: CheckCertifyByMspRes localCheckCertifyByMspRes;
    do
    {
      do
      {
        return;
        this.e.setImageResource(R.drawable.c);
        this.f.setText(getText(R.string.aP));
        this.g.setText(localVerifyCertifyByMspRes.message);
        this.h.setVisibility(0);
        this.i.setVisibility(8);
        return;
      }
      while (!"CheckCertifyByMspRes".equalsIgnoreCase(str));
      localCheckCertifyByMspRes = (CheckCertifyByMspRes)a(localBundle, CheckCertifyByMspRes.class);
    }
    while ((localCheckCertifyByMspRes == null) || (localCheckCertifyByMspRes == null));
    if (("5128".equalsIgnoreCase(localCheckCertifyByMspRes.resultCode)) || ("2".equalsIgnoreCase(localCheckCertifyByMspRes.viewStyle)))
    {
      this.e.setImageResource(R.drawable.d);
      this.f.setText(getText(R.string.aW));
      this.g.setText(localCheckCertifyByMspRes.message);
      this.h.setVisibility(8);
      this.i.setVisibility(0);
      return;
    }
    this.e.setImageResource(R.drawable.c);
    this.f.setText(getText(R.string.aP));
    this.g.setText(localCheckCertifyByMspRes.message);
    this.h.setVisibility(0);
    this.i.setVisibility(8);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CertifiedFailCardFragment
 * JD-Core Version:    0.6.2
 */