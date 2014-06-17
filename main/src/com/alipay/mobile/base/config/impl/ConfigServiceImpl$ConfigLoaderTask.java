package com.alipay.mobile.base.config.impl;

import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.utils.SharedSwitchUtil;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileapp.biz.rpc.switches.ClientSwitchConfigService;
import com.alipay.mobileapp.biz.rpc.switches.vo.SwitchInfoReq;
import com.alipay.mobileapp.biz.rpc.switches.vo.SwitchInfoResp;
import java.util.Map;

class ConfigServiceImpl$ConfigLoaderTask extends Thread
{
  private ConfigServiceImpl$ConfigLoaderTask(ConfigServiceImpl paramConfigServiceImpl)
  {
  }

  public void run()
  {
    try
    {
      ClientSwitchConfigService localClientSwitchConfigService = (ClientSwitchConfigService)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(ClientSwitchConfigService.class);
      SwitchInfoReq localSwitchInfoReq = new SwitchInfoReq();
      AppInfo localAppInfo = AppInfo.createInstance(this.a.getMicroApplicationContext().getApplicationContext());
      AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      String str1 = null;
      if (localAuthService != null)
      {
        UserInfo localUserInfo = localAuthService.getLastLoginedUserInfo();
        str1 = null;
        if (localUserInfo != null)
        {
          String str2 = localAuthService.getLastLoginedUserInfo().getUserId();
          str1 = null;
          if (str2 != null)
            str1 = localAuthService.getLastLoginedUserInfo().getUserId();
        }
      }
      if (localAppInfo.getmProductVersion() == null);
      String str4;
      for (Object localObject = ""; ; localObject = str4)
      {
        localSwitchInfoReq.clientVersion = ((String)localObject);
        localSwitchInfoReq.userId = str1;
        localSwitchInfoReq.channelId = localAppInfo.getmChannels();
        localSwitchInfoReq.imei = DeviceInfo.createInstance(this.a.getMicroApplicationContext().getApplicationContext()).getDefImei();
        SwitchInfoResp localSwitchInfoResp = localClientSwitchConfigService.getSwitchesAfterLogin(localSwitchInfoReq);
        if (!localSwitchInfoResp.success)
          break;
        Map localMap = localSwitchInfoResp.switches;
        SharedSwitchUtil.refreshSharedSwitch(this.a.getMicroApplicationContext().getApplicationContext(), localMap);
        ConfigServiceImpl.a(localMap);
        String str3 = ConfigServiceImpl.b(localMap);
        ConfigServiceImpl localConfigServiceImpl = this.a;
        ConfigServiceImpl.a(localConfigServiceImpl, ConfigServiceImpl.a(this.a.getMicroApplicationContext().getApplicationContext()), "Alipay", "CommonConfig.json", str3);
        ConfigServiceImpl.loadTime = System.currentTimeMillis();
        return;
        str4 = localAppInfo.getmProductVersion();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.config.impl.ConfigServiceImpl.ConfigLoaderTask
 * JD-Core Version:    0.6.2
 */