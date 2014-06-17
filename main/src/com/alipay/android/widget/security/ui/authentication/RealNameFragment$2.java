package com.alipay.android.widget.security.ui.authentication;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

class RealNameFragment$2
  implements View.OnClickListener
{
  RealNameFragment$2(RealNameFragment paramRealNameFragment)
  {
  }

  public void onClick(View paramView)
  {
    AlipayLogAgent.writeLog(this.a.getActivity(), BehaviourIdEnum.CLICKED, "-", "-", "20000038", "-", "confirmView", "realNameDetail", "checkUp");
    this.a.a().alert(null, "下一步将进行银行卡验证", "确定", new RealNameFragment.2.1(this), "取消", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.RealNameFragment.2
 * JD-Core Version:    0.6.2
 */