package com.alipay.mobile.security.authcenter.msp;

import android.content.Context;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.android.app.helper.Tid;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;

public class QueryMspCertification
{
  Context a;
  final String b = "QueryMspCertification";

  public QueryMspCertification(Context paramContext)
  {
    this.a = paramContext;
  }

  public MspDeviceInfoBean queryMspTid()
  {
    LogCatLog.d("QueryMspCertification", "调用移动快捷获取tid 开始");
    MspDeviceInfoBean localMspDeviceInfoBean = new MspDeviceInfoBean();
    PayHelperServcie localPayHelperServcie = (PayHelperServcie)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(PayHelperServcie.class.getName());
    try
    {
      Tid localTid2 = localPayHelperServcie.loadOrCreateTID();
      localTid1 = localTid2;
      if (localTid1 != null)
      {
        String str1 = localTid1.getTid();
        String str2 = localTid1.getTidSeed();
        String str3 = localPayHelperServcie.getIMEI();
        String str4 = localPayHelperServcie.getIMSI();
        String str5 = localPayHelperServcie.getVirtualImei();
        String str6 = localPayHelperServcie.getVirtualImsi();
        LogCatLog.d("QueryMspCertification", "调用移动快捷获取tid=" + str1 + "  key=" + str2 + " imei=" + str3 + " imsi=" + str4);
        localMspDeviceInfoBean.setImei(str3);
        localMspDeviceInfoBean.setImsi(str4);
        localMspDeviceInfoBean.setMspkey(str2);
        localMspDeviceInfoBean.setTid(str1);
        localMspDeviceInfoBean.setVimei(str5);
        localMspDeviceInfoBean.setVimsi(str6);
      }
      return localMspDeviceInfoBean;
    }
    catch (Exception localException)
    {
      while (true)
      {
        LogCatLog.d("QueryMspCertification", "调用移动快捷获取tid 失败，可能未安装最新移动快捷");
        Tid localTid1 = null;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.msp.QueryMspCertification
 * JD-Core Version:    0.6.2
 */