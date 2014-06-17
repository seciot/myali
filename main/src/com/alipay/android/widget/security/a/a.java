package com.alipay.android.widget.security.a;

import android.content.Context;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.biz.gw.service.account.AccountManagerFacade;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import java.util.List;

public final class a
{
  public final String a = "AccountManagerFacadeBiz";
  protected RpcService b = (RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName());
  protected DeviceService c = (DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName());
  protected AccountManagerFacade d = (AccountManagerFacade)this.b.getRpcProxy(AccountManagerFacade.class);
  b e = null;
  protected Context f = AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext();
  String g = "";
  String h = "";
  String i = "";
  String j = "";
  String k = "";
  String l = "";
  protected Tid m = null;
  private Tid n = null;

  public a()
  {
    if (this.c != null)
    {
      MspDeviceInfoBean localMspDeviceInfoBean = this.c.queryCertification();
      if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
      {
        this.m = new Tid();
        this.m.setClientKey(localMspDeviceInfoBean.getMspkey());
        this.m.setImei(localMspDeviceInfoBean.getImei());
        this.m.setImsi(localMspDeviceInfoBean.getImsi());
        this.m.setTid(localMspDeviceInfoBean.getTid());
        this.m.setVimei(localMspDeviceInfoBean.getVimei());
        this.m.setVimsi(localMspDeviceInfoBean.getVimsi());
      }
    }
    DeviceInfoBean localDeviceInfoBean = this.c.queryDeviceInfo();
    if ((localDeviceInfoBean != null) && (localDeviceInfoBean.getWalletTid() != null))
    {
      this.n = new Tid();
      this.n.setClientKey(DeviceInfo.getInstance().getmClientKey());
      this.n.setImei(DeviceInfo.getInstance().getImei());
      this.n.setImsi(DeviceInfo.getInstance().getImsi());
      this.n.setTid(localDeviceInfoBean.getWalletTid());
    }
  }

  public final MobileSecurityResult a(MspDeviceInfoBean paramMspDeviceInfoBean, List<String> paramList)
  {
    Tid localTid = new Tid();
    localTid.setClientKey(paramMspDeviceInfoBean.getMspkey());
    localTid.setImei(paramMspDeviceInfoBean.getImei());
    localTid.setImsi(paramMspDeviceInfoBean.getImsi());
    localTid.setTid(paramMspDeviceInfoBean.getTid());
    try
    {
      MobileSecurityResult localMobileSecurityResult = this.d.updateWalletLoginAuth(localTid, paramList);
      return localMobileSecurityResult;
    }
    catch (RpcException localRpcException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.a.a
 * JD-Core Version:    0.6.2
 */