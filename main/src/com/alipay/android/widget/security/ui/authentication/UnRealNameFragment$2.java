package com.alipay.android.widget.security.ui.authentication;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

class UnRealNameFragment$2
  implements View.OnClickListener
{
  UnRealNameFragment$2(UnRealNameFragment paramUnRealNameFragment)
  {
  }

  public void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(this.a.getActivity(), BehaviourIdEnum.CLICKED, "-", "-", "20000038", "-", "noRealNameEditView", "noRealNameDetail", "checkUp");
    InputUserInfoFragment_ localInputUserInfoFragment_ = new InputUserInfoFragment_();
    localInputUserInfoFragment_.getBundle(this.a.a);
    ((AuthenticationCertifiedActivity)this.a.getInstance()).a(localInputUserInfoFragment_, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UnRealNameFragment.2
 * JD-Core Version:    0.6.2
 */