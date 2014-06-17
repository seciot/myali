package com.alipay.mobile.security.devicemanage.a;

import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.device.DeviceManagerFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.device.DelAuthedDeviceReq;
import com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceReq;
import com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceRes;
import java.util.ArrayList;
import java.util.List;

public class a
{
  public final String a = a.class.getName();
  private RpcService b = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());
  private DeviceManagerFacade c = (DeviceManagerFacade)this.b.getRpcProxy(DeviceManagerFacade.class);

  public final QueryAuthedDeviceRes a(String paramString1, String paramString2)
  {
    QueryAuthedDeviceReq localQueryAuthedDeviceReq = new QueryAuthedDeviceReq();
    localQueryAuthedDeviceReq.logonId = paramString1;
    Tid localTid = new Tid();
    localTid.tid = paramString2;
    localQueryAuthedDeviceReq.tid = localTid;
    return this.c.queryAuthedDeviceList(localQueryAuthedDeviceReq);
  }

  public final MobileSecurityResult b(String paramString1, String paramString2)
  {
    DelAuthedDeviceReq localDelAuthedDeviceReq = new DelAuthedDeviceReq();
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramString2);
    localDelAuthedDeviceReq.logonId = paramString1;
    localDelAuthedDeviceReq.tids = localArrayList;
    return this.c.delAuthedDevicesByIds(localDelAuthedDeviceReq);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.devicemanage.a.a
 * JD-Core Version:    0.6.2
 */