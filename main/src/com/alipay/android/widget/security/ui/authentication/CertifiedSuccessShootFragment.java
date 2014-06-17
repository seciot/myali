package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="authentication_success_shoot")
public class CertifiedSuccessShootFragment extends BaseAuthenticationFragment
  implements View.OnClickListener
{

  @ViewById(resName="titleBar")
  protected APTitleBar d;

  @ViewById(resName="certified_shoot_btn")
  protected APButton e;

  @ViewById(resName="success_shot_layout")
  protected APLinearLayout f;

  @ViewById(resName="success_no_shot_layout")
  protected APLinearLayout g;

  @ViewById(resName="certified_complete_btn")
  protected APButton h;

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    Bundle localBundle = getArguments();
    if (localBundle != null)
    {
      boolean bool = localBundle.getBoolean("certifiedResult");
      new StringBuilder("canUpgradeACertify: ").append(bool).toString();
      a("Y");
      if (bool)
      {
        this.d.setGenericButtonVisiable(true);
        this.d.setGenericButtonText("先不拍了");
        this.d.setGenericButtonListener(new CertifiedSuccessShootFragment.1(this));
        this.f.setVisibility(0);
        this.g.setVisibility(8);
        this.e.setOnClickListener(this);
        AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "realNameResultsView", "noRealNameConfirmView", "-");
      }
    }
    else
    {
      return;
    }
    this.d.setGenericButtonVisiable(false);
    this.f.setVisibility(8);
    this.g.setVisibility(0);
    this.h.setOnClickListener(this);
    AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "realNameSuccessView", "confirmView", "-");
  }

  public void onClick(View paramView)
  {
    int i = paramView.getId();
    if (R.id.ar == i)
    {
      AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.CLICKED, "-", "-", "20000038", "-", "uploadPaperView", "realNameResultsView", "paiButton");
      localIntent = new Intent(getActivity(), AuthenticationCameraShootActivity.class);
      this.a.getMicroApplicationContext().startActivity(this.a, localIntent);
    }
    while (R.id.am != i)
    {
      Intent localIntent;
      return;
    }
    a(true);
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CertifiedSuccessShootFragment
 * JD-Core Version:    0.6.2
 */