package com.alipay.android.widget.security.ui.authentication;

import android.content.res.Resources;
import android.os.Bundle;
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
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="authentication_un_realname")
public class UnRealNameFragment extends BaseAuthenticationFragment
  implements CompoundButton.OnCheckedChangeListener
{

  @ViewById(resName="titleBar")
  protected APTitleBar d;

  @ViewById(resName="agreement_checkbox")
  protected APCheckboxWithLinkText e;

  @ViewById(resName="authentication_btn")
  protected APButton f;
  protected APButton g;
  protected View.OnClickListener h = new UnRealNameFragment.1(this);
  private View.OnClickListener i = new UnRealNameFragment.2(this);

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d.setGenericButtonIconResource(R.drawable.n);
    this.g = this.d.getRightButton();
    this.g.setVisibility(0);
    this.g.setOnClickListener(this.h);
    this.e.setTextViewUri(this.c);
    this.e.getCheckBox().setChecked(true);
    this.e.getCheckBox().setOnCheckedChangeListener(this);
    if (this.a != null)
      SecurityUtil.a(this.a, this.e, this.c, getResources().getString(R.string.aV));
    this.f.setOnClickListener(this.i);
    AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "noRealNameDetail", "-", "-");
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.f.setEnabled(paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UnRealNameFragment
 * JD-Core Version:    0.6.2
 */