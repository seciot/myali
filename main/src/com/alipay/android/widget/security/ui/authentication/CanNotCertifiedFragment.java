package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobilesecurity.core.model.account.certify.RealNameCertifyResult;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Map;

@EFragment(resName="authentication_cannot_certified")
public class CanNotCertifiedFragment extends BaseAuthenticationFragment
{

  @ViewById(resName="titleBar")
  protected APTitleBar d;

  @ViewById(resName="layout_certified_info")
  protected APLinearLayout e;

  @ViewById(resName="security_certified_icon")
  protected APImageView f;

  @ViewById(resName="security_certified_status")
  protected APTextView g;

  @ViewById(resName="security_certified_status_tip")
  protected APTextView h;

  @ViewById(resName="certified_name")
  protected APTableView i;

  @ViewById(resName="certified_ID")
  protected APTableView j;

  @ViewById(resName="layout_certified_img")
  protected APLinearLayout k;

  @ViewById(resName="not_support_status")
  protected APTextView l;

  @ViewById(resName="not_support_status_tip")
  protected APTextView m;

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Bundle localBundle = getArguments();
    RealNameCertifyResult localRealNameCertifyResult;
    if (localBundle != null)
    {
      localRealNameCertifyResult = (RealNameCertifyResult)a(localBundle, RealNameCertifyResult.class);
      if (localRealNameCertifyResult != null)
      {
        if (!"5106".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
          break label277;
        ((BaseAuthenticationActivity)getActivity()).e();
        this.e.setVisibility(0);
        this.k.setVisibility(8);
        this.f.setImageResource(R.drawable.DefaultThreadFactory);
        if (localRealNameCertifyResult.certifyReturnInfo != null)
        {
          String str4 = (String)localRealNameCertifyResult.certifyReturnInfo.get("resultTitle");
          this.g.setTextColor(getResources().getColor(R.color.colorBlack));
          APTextView localAPTextView3 = this.g;
          if (TextUtils.isEmpty(str4))
            str4 = "";
          localAPTextView3.setText(str4);
          String str5 = (String)localRealNameCertifyResult.certifyReturnInfo.get("resultDesc");
          this.h.setVisibility(0);
          APTextView localAPTextView4 = this.h;
          if (TextUtils.isEmpty(str5))
            str5 = "";
          localAPTextView4.setText(str5);
          String str6 = (String)localRealNameCertifyResult.certifyReturnInfo.get("realName");
          APTableView localAPTableView2 = this.i;
          if (TextUtils.isEmpty(str6))
            str6 = "";
          localAPTableView2.setRightText(str6);
          String str7 = (String)localRealNameCertifyResult.certifyReturnInfo.get("certNo");
          APTableView localAPTableView3 = this.j;
          if (TextUtils.isEmpty(str7))
            str7 = "";
          localAPTableView3.setRightText(str7);
        }
      }
    }
    label277: 
    do
    {
      do
      {
        return;
        if ("5127".equalsIgnoreCase(localRealNameCertifyResult.resultCode))
        {
          this.e.setVisibility(0);
          this.k.setVisibility(8);
          this.h.setVisibility(8);
          this.g.setTextColor(getResources().getColor(R.color.colorDarkBlue));
          this.g.setText(getString(R.string.aR));
          this.j.setVisibility(8);
          this.i.setType(16);
          this.i.setLeftText(getString(R.string.aN));
          this.f.setImageResource(R.drawable.e);
          if (localRealNameCertifyResult.certifyReturnInfo != null)
          {
            String str3 = (String)localRealNameCertifyResult.certifyReturnInfo.get("realName");
            APTableView localAPTableView1 = this.i;
            if (TextUtils.isEmpty(str3))
              str3 = "";
            localAPTableView1.setRightText(str3);
          }
          a("Y");
          return;
        }
      }
      while (!"5126".equalsIgnoreCase(localRealNameCertifyResult.resultCode));
      this.e.setVisibility(8);
      this.k.setVisibility(0);
    }
    while (localRealNameCertifyResult.certifyReturnInfo == null);
    String str1 = (String)localRealNameCertifyResult.certifyReturnInfo.get("resultTitle");
    APTextView localAPTextView1 = this.l;
    if (TextUtils.isEmpty(str1))
      str1 = "";
    localAPTextView1.setText(str1);
    String str2 = (String)localRealNameCertifyResult.certifyReturnInfo.get("resultDesc");
    APTextView localAPTextView2 = this.m;
    if (TextUtils.isEmpty(str2))
      str2 = "";
    localAPTextView2.setText(str2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CanNotCertifiedFragment
 * JD-Core Version:    0.6.2
 */