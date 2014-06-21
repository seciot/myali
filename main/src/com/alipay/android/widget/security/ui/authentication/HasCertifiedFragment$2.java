package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class HasCertifiedFragment$2
  implements View.OnClickListener
{
  HasCertifiedFragment$2(HasCertifiedFragment paramHasCertifiedFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (HasCertifiedFragment.getBundle(this.a))
      AlipayLogAgent.writeLog(this.a.getActivity(), BehaviourIdEnum.CLICKED, "-", "-", "20000038", "-", "uploadPaperView", "attestationDetail", "reUpload");
    while (true)
    {
      Intent localIntent = new Intent(this.a.getActivity(), AuthenticationCameraShootActivity.class);
      this.a.a.getMicroApplicationContext().startActivity(this.a.a, localIntent);
      return;
      AlipayLogAgent.writeLog(this.a.getActivity(), BehaviourIdEnum.CLICKED, "-", "-", "20000038", "-", "uploadPaperView", "attestationDetail", "paiButton");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.HasCertifiedFragment.2
 * JD-Core Version:    0.6.2
 */