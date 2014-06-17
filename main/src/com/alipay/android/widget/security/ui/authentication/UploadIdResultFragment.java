package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.commonui.widget.APButton;
import com.googlecode.androidannotations.annotations.EFragment;
import com.googlecode.androidannotations.annotations.ViewById;

@EFragment(resName="authentication_upload_result")
public class UploadIdResultFragment extends BaseAuthenticationFragment
  implements View.OnClickListener
{

  @ViewById(resName="complete_btn")
  protected APButton d;

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.d.setOnClickListener(this);
    AlipayLogAgent.writeLog(getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "-", "uploadPaperView", "-");
  }

  public void onClick(View paramView)
  {
    a(true);
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdResultFragment
 * JD-Core Version:    0.6.2
 */