package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobilesecurity.core.model.account.certify.RealNameCertifyResult;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Map;

@EFragment(resName="authentication_realname")
public class RealNameFragment extends BaseAuthenticationFragment
  implements CompoundButton.OnCheckedChangeListener
{

  @ViewById(resName="titleBar")
  protected APTitleBar d;

  @ViewById(resName="agreement_checkbox")
  protected APCheckboxWithLinkText e;

  @ViewById(resName="authentication_btn")
  protected APButton f;

  @ViewById(resName="certified_name")
  protected APTableView g;

  @ViewById(resName="certified_ID")
  protected APTableView h;
  protected APButton i;
  protected View.OnClickListener j = new RealNameFragment.1(this);
  private View.OnClickListener k = new RealNameFragment.2(this);

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d.setGenericButtonIconResource(R.drawable.n);
    this.i = this.d.getRightButton();
    this.i.setVisibility(0);
    this.i.setOnClickListener(this.j);
    this.e.setTextViewUri(this.c);
    this.e.getCheckBox().setChecked(true);
    this.e.getCheckBox().setOnCheckedChangeListener(this);
    if (this.a != null)
      SecurityUtil.a(this.a, this.e, this.c, getResources().getString(R.string.aV));
    this.f.setOnClickListener(this.k);
    Bundle localBundle = getArguments();
    if (localBundle != null)
    {
      RealNameCertifyResult localRealNameCertifyResult = (RealNameCertifyResult)a(localBundle, RealNameCertifyResult.class);
      if (localRealNameCertifyResult != null)
      {
        String str1 = (String)localRealNameCertifyResult.certifyReturnInfo.get("realName");
        APTableView localAPTableView1 = this.g;
        if (TextUtils.isEmpty(str1))
          str1 = "";
        localAPTableView1.setRightText(str1);
        this.g.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
        String str2 = (String)localRealNameCertifyResult.certifyReturnInfo.get("certNo");
        APTableView localAPTableView2 = this.h;
        if (TextUtils.isEmpty(str2))
          str2 = "";
        localAPTableView2.setRightText(str2);
        this.h.getRightTextView().setTextColor(getResources().getColor(R.color.colorGray));
        AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "realNameDetail", "-", "-");
      }
    }
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.f.setEnabled(paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.RealNameFragment
 * JD-Core Version:    0.6.2
 */