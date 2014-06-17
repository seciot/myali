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

final class b
  implements View.OnClickListener
{
  b(WifiSniffer paramWifiSniffer)
  {
  }

  public final void onClick(View paramView)
  {
    LogCatLog.i(WifiSniffer.TAG, "onClick");
    if ((this.a.getTopBoardInfo() != null) && (!TextUtils.isEmpty(this.a.getTopBoardInfo().getACTIVE_TEMPLATE())))
    {
      WifiSniffer.access$100(this.a, this.a.getTopBoardInfo().getACTIVE_TEMPLATE());
      LogCatLog.i(WifiSniffer.TAG, "ACTIVE_TEMPLATE:" + this.a.getTopBoardInfo().getACTIVE_TEMPLATE());
      AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
      localAlipayLogInfo.appID = "20000002";
      localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.CLICKED;
      localAlipayLogInfo.viewID = "publicContactView";
      localAlipayLogInfo.refViewID = "serviceDiscoveryPanel";
      localAlipayLogInfo.seed = "serviceDiscovery";
      String[] arrayOfString = new String[1];
      arrayOfString[0] = WifiSniffer.access$200().getSERVICE_ID();
      localAlipayLogInfo.extendParams = arrayOfString;
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), localAlipayLogInfo);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.b
 * JD-Core Version:    0.6.2
 */