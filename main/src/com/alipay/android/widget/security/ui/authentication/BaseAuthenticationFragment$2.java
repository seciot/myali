package com.alipay.android.widget.security.ui.authentication;

import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.service.ext.card.NewExpressCardCallback;

class BaseAuthenticationFragment$2
  implements NewExpressCardCallback
{
  BaseAuthenticationFragment$2(BaseAuthenticationFragment paramBaseAuthenticationFragment, a parama)
  {
  }

  public void callback(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.b.b(this.a);
      AlipayLogAgent.writeLog(this.b.getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "bindCardSuccessView", "-", "-");
      return;
    }
    AlipayLogAgent.writeLog(this.b.getActivity(), BehaviourIdEnum.OPENPAGE, "-", "-", "20000038", "-", "bindCardFailView", "-", "-");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.BaseAuthenticationFragment.2
 * JD-Core Version:    0.6.2
 */