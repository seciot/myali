package com.alipay.android.phone.nfd.nfdbiz.biz;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;

final class g
  implements View.OnClickListener
{
  g(WifiSnifferServiceImpl paramWifiSnifferServiceImpl)
  {
  }

  public final void onClick(View paramView)
  {
    LogCatLog.i(WifiSnifferServiceImpl.TAG, "onClick");
    if ((this.a.getTopBoardInfo() != null) && (!TextUtils.isEmpty(this.a.getTopBoardInfo().getACTIVE_TEMPLATE())))
    {
      WifiSnifferServiceImpl.access$500(this.a, this.a.getTopBoardInfo().getACTIVE_TEMPLATE());
      LogCatLog.i(WifiSnifferServiceImpl.TAG, "ACTIVE_TEMPLATE:" + this.a.getTopBoardInfo().getACTIVE_TEMPLATE());
      AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
      localAlipayLogInfo.appID = "20000002";
      localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.CLICKED;
      localAlipayLogInfo.viewID = "publicContactView";
      localAlipayLogInfo.refViewID = "serviceDiscoveryPanel";
      localAlipayLogInfo.seed = "serviceDiscovery";
      String[] arrayOfString = new String[1];
      arrayOfString[0] = WifiSnifferServiceImpl.access$600(this.a).getSERVICE_ID();
      localAlipayLogInfo.extendParams = arrayOfString;
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), localAlipayLogInfo);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.g
 * JD-Core Version:    0.6.2
 */