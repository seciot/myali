package com.alipay.android.phone.nfd.nfdbiz.biz;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.android.phone.nfd.nfdbiz.model.TopBoardInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import java.util.List;

public class WifiSniffer$InShopByWifiReceiver extends BroadcastReceiver
{
  public WifiSniffer$InShopByWifiReceiver(WifiSniffer paramWifiSniffer)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    LogCatLog.i(WifiSniffer.TAG, "receivce message" + str1);
    TopBoardInfo localTopBoardInfo;
    if ("com.alipay.longlink.TRANSFER_20000002".equals(str1))
    {
      String str2 = paramIntent.getStringExtra("payload");
      if (!TextUtils.isEmpty(str2))
      {
        LogCatLog.i(WifiSniffer.TAG, "long link biz data:" + str2);
        str2.replace("\\", "");
        LogCatLog.i(WifiSniffer.TAG, "replace: " + str2);
        AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
        localAlipayLogInfo.appID = "20000002";
        localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
        localAlipayLogInfo.viewID = "serviceDiscoveryPanel";
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), localAlipayLogInfo);
        localTopBoardInfo = (TopBoardInfo)JSON.parseObject(str2, TopBoardInfo.class);
        if (!WifiSniffer.access$500(this.a).findTopRunningApp().getAppId().equals("20000002"))
          break label204;
        WifiSniffer.access$400(this.a).post(new d(this, localTopBoardInfo));
      }
    }
    return;
    label204: WifiSniffer.access$600(this.a).add(localTopBoardInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.nfdbiz.biz.WifiSniffer.InShopByWifiReceiver
 * JD-Core Version:    0.6.2
 */