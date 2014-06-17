package com.alipay.android.phone.nfd.nfdbiz.biz;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.alibaba.fastjson.JSON;
import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.nfd.nfdbiz.IActiveTopBaordContainer;
import java.lang.ref.WeakReference;
import java.util.List;

public class WifiSnifferServiceImpl$InShopByWifiReceiver extends BroadcastReceiver
{
  public WifiSnifferServiceImpl$InShopByWifiReceiver(WifiSnifferServiceImpl paramWifiSnifferServiceImpl)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    LogCatLog.i(WifiSnifferServiceImpl.TAG, "receivce message" + str1);
    TopBoardInfo localTopBoardInfo;
    if ("com.alipay.longlink.TRANSFER_20000002".equals(str1))
    {
      String str2 = paramIntent.getStringExtra("payload");
      if (TextUtils.isEmpty(str2))
        break label259;
      LogCatLog.i(WifiSnifferServiceImpl.TAG, "long link biz data:" + str2);
      LogCatLog.i(WifiSnifferServiceImpl.TAG, "replace: " + str2);
      localTopBoardInfo = (TopBoardInfo)JSON.parseObject(str2, TopBoardInfo.class);
      if (localTopBoardInfo == null)
        LogCatLog.i(WifiSnifferServiceImpl.TAG, "onReceive: JSON.parse==null");
    }
    else
    {
      return;
    }
    if ((WifiSnifferServiceImpl.access$100(this.a) != null) && (WifiSnifferServiceImpl.access$100(this.a).get() != null) && (((IActiveTopBaordContainer)WifiSnifferServiceImpl.access$100(this.a).get()).getView() != null) && (((IActiveTopBaordContainer)WifiSnifferServiceImpl.access$100(this.a).get()).getView().getVisibility() == 0))
      if (((IActiveTopBaordContainer)WifiSnifferServiceImpl.access$100(this.a).get()).getView().getHandler() != null)
      {
        LogCatLog.i(WifiSnifferServiceImpl.TAG, "onReceive: onResume");
        ((IActiveTopBaordContainer)WifiSnifferServiceImpl.access$100(this.a).get()).getView().getHandler().post(new h(this, localTopBoardInfo));
      }
    while (true)
    {
      label259: AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
      localAlipayLogInfo.appID = "20000002";
      localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
      localAlipayLogInfo.viewID = "serviceDiscoveryPanel";
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), localAlipayLogInfo);
      return;
      LogCatLog.i(WifiSnifferServiceImpl.TAG, "onReceive: add topBoardInfo");
      WifiSnifferServiceImpl.access$200(this.a).add(localTopBoardInfo);
      continue;
      LogCatLog.i(WifiSnifferServiceImpl.TAG, "onReceive: add topBoardInfo");
      WifiSnifferServiceImpl.access$200(this.a).add(localTopBoardInfo);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.WifiSnifferServiceImpl.InShopByWifiReceiver
 * JD-Core Version:    0.6.2
 */