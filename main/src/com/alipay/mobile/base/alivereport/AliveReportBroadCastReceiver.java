package com.alipay.mobile.base.alivereport;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alibaba.fastjson.JSON;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.lbsinfo.LBSInfoGather;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobilegw.biz.shared.processer.reportActive.ReportActiveReq;
import com.alipay.mobilegw.biz.shared.processer.reportActive.ReportActiveService;
import java.util.HashMap;
import java.util.Map;

public class AliveReportBroadCastReceiver extends BroadcastReceiver
{
  private Context a;
  private SchemeService b;
  private boolean c;

  final void a()
  {
    ReportActiveService localReportActiveService = (ReportActiveService)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(ReportActiveService.class);
    DeviceInfo localDeviceInfo = DeviceInfo.createInstance(this.a);
    AppInfo localAppInfo = AppInfo.getInstance();
    ReportActiveReq localReportActiveReq = new ReportActiveReq();
    localReportActiveReq.setAwid(localAppInfo.getmAwid());
    localReportActiveReq.setAccessPoint(localDeviceInfo.getAccessPoint());
    localReportActiveReq.setAppType("client");
    localReportActiveReq.setChannels(localAppInfo.getmChannels());
    localReportActiveReq.setClientPostion(localDeviceInfo.getCellInfo());
    localReportActiveReq.setClientType("phone");
    localReportActiveReq.setMobileBrand(localDeviceInfo.getmMobileBrand());
    localReportActiveReq.setMobileModel(localDeviceInfo.getmMobileModel());
    localReportActiveReq.setProductID(localAppInfo.getProductID());
    localReportActiveReq.setProductVersion(localAppInfo.getmProductVersion());
    localReportActiveReq.setScreenHigh(String.valueOf(localDeviceInfo.getmScreenHeight()));
    localReportActiveReq.setScreenWidth(String.valueOf(localDeviceInfo.getScreenWidth()));
    localReportActiveReq.setSystemType("android");
    localReportActiveReq.setSystemVersion(localDeviceInfo.getmSystemVersion());
    localReportActiveReq.setUserAgent(localDeviceInfo.getUserAgent());
    localReportActiveReq.setImei(localDeviceInfo.getImei());
    localReportActiveReq.setImsi(localDeviceInfo.getImsi());
    localReportActiveReq.setCarrier(localDeviceInfo.getOperator());
    localReportActiveReq.setScreenSize("");
    localReportActiveReq.setSourceId(this.b.getLastTagId());
    HashMap localHashMap = new HashMap();
    localHashMap.put("isPrisonBreak", String.valueOf(localDeviceInfo.ismRooted()));
    String str = ((PayHelperServcie)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(PayHelperServcie.class.getName())).getPaySysInfo();
    if (str != null)
      localHashMap.put("apdid", str);
    localHashMap.put("lbsInfo", JSON.toJSONString(LBSInfoGather.getInstance(this.a).getLastKnownLBSInfo()));
    localReportActiveReq.setExtInfos(localHashMap);
    try
    {
      localReportActiveService.report(localReportActiveReq);
      return;
    }
    catch (RpcException localRpcException)
    {
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    this.a = paramContext;
    this.b = ((SchemeService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
    if ("com.alipay.mobile.client.STARTED".equals(str))
    {
      AlipayLogAgent.initClient(paramContext.getApplicationContext());
      new Thread(new a(this)).start();
    }
    do
    {
      do
      {
        return;
        if (!"com.alipay.mobile.framework.ACTIVITY_RESUME".equalsIgnoreCase(str))
          break;
      }
      while (!this.c);
      this.c = false;
      new Thread(new b(this)).start();
      return;
    }
    while (!"com.alipay.mobile.framework.USERLEAVEHINT".equalsIgnoreCase(str));
    SpdyStrategy.stopPingSent();
    this.c = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.alivereport.AliveReportBroadCastReceiver
 * JD-Core Version:    0.6.2
 */