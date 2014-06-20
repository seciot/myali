package com.alipay.mobile.onsitepay.a.b.a;

import android.os.SystemClock;
import com.alipay.livetradeprod.core.model.base.OnsiteQueryInfo;
import com.alipay.livetradeprod.core.model.rpc.QuerySellerReq;
import com.alipay.livetradeprod.core.model.rpc.QuerySellerRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.onsitepay.a.b.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

final class e
  implements Runnable
{
  e(d paramd)
  {
  }

  public final void run()
  {
    new StringBuilder("startPollingQuery loopNum=").append(d.a(this.a)).toString();
    while (d.a(this.a) > 0)
    {
      SystemClock.sleep(d.b(this.a));
      new StringBuilder("startPollingQuery loopNum=").append(d.a(this.a)).append(" isLoopFinish=").append(d.c(this.a)).append(" sonicHashMap.size=").append(this.a.a.size()).toString();
      if ((d.c(this.a)) || (this.a.a.size() <= 0))
        break;
      new StringBuilder("loopQueryPayThread loopNum=").append(d.a(this.a)).toString();
      SoundWavePayRpcFacade localSoundWavePayRpcFacade;
      QuerySellerReq localQuerySellerReq;
      ArrayList localArrayList;
      try
      {
        localSoundWavePayRpcFacade = (SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class);
        localQuerySellerReq = new QuerySellerReq();
        localArrayList = new ArrayList();
        Iterator localIterator = this.a.a.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          String str1 = (String)localEntry.getKey();
          String str2 = (String)localEntry.getValue();
          OnsiteQueryInfo localOnsiteQueryInfo = new OnsiteQueryInfo();
          localOnsiteQueryInfo.dynamicId = str2;
          localOnsiteQueryInfo.userId = str1;
          new StringBuilder("sonicId=").append(str2).append(" userId=").append(str1).toString();
          localArrayList.add(localOnsiteQueryInfo);
        }
      }
      catch (Exception localException)
      {
        d.removeBundle(this.a);
        localException.printStackTrace();
      }
      continue;
      localQuerySellerReq.queryList = localArrayList;
      QuerySellerRes localQuerySellerRes = localSoundWavePayRpcFacade.querySellerSoundWavePayRes(localQuerySellerReq);
      if ((localQuerySellerRes != null) && (localQuerySellerRes.success))
      {
        List localList = localQuerySellerRes.tradeInfo;
        if ((localList != null) && (localList.size() > 0))
          d.d(this.a).a(localList);
      }
      d.removeBundle(this.a);
    }
    d.f(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.e
 * JD-Core Version:    0.6.2
 */