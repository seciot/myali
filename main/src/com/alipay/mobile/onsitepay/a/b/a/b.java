package com.alipay.mobile.onsitepay.a.b.a;

import com.alipay.livetradeprod.core.model.rpc.BindLbsUserReq;
import com.alipay.livetradeprod.core.model.rpc.BindLbsUserRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.lbsinfo.LBSInfoGather;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilelbs.common.service.facade.vo.Location;
import com.alipay.mobilesecurity.core.model.Tid;

final class b
  implements Runnable
{
  b(AppBundle parama, String paramString, Location paramLocation)
  {
  }

  public final void run()
  {
    try
    {
      BindLbsUserReq localBindLbsUserReq = new BindLbsUserReq();
      localBindLbsUserReq.userId = this.a;
      localBindLbsUserReq.location = this.b;
      Tid localTid = new TidGetter(AlipayApplication.getInstance().getMicroApplicationContext()).getClientTid();
      if (localTid != null);
      for (String str = localTid.getTid(); ; str = null)
      {
        localBindLbsUserReq.tid = str;
        if (((SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class)).bindLbsUser(localBindLbsUserReq).success)
          LBSInfoGather.getInstance(this.c.b).removeUpdates(this.c.a);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.b
 * JD-Core Version:    0.6.2
 */