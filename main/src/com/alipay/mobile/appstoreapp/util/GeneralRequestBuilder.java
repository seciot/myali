package com.alipay.mobile.appstoreapp.util;

import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobileapp.common.service.facade.app.facade.QueryAppstoreReq;
import com.alipay.mobileapp.common.service.facade.app.facade.QueryMyAppReq;
import java.util.List;

public class GeneralRequestBuilder
{
  public static QueryAppstoreReq a(List<String> paramList)
  {
    DeviceInfo localDeviceInfo = DeviceInfo.createInstance(AlipayApplication.getInstance().getApplicationContext());
    QueryAppstoreReq localQueryAppstoreReq = new QueryAppstoreReq();
    localQueryAppstoreReq.platform = "Android";
    localQueryAppstoreReq.resolution = (localDeviceInfo.getmScreenWidth() + "*" + localDeviceInfo.getmScreenHeight());
    localQueryAppstoreReq.myAppIds = paramList;
    return localQueryAppstoreReq;
  }

  public static QueryMyAppReq a()
  {
    DeviceInfo localDeviceInfo = DeviceInfo.createInstance(AlipayApplication.getInstance().getApplicationContext());
    AppInfo localAppInfo = AppInfo.getInstance();
    QueryMyAppReq localQueryMyAppReq = new QueryMyAppReq();
    localQueryMyAppReq.channel = localAppInfo.getmChannels();
    localQueryMyAppReq.platform = "Android";
    localQueryMyAppReq.platformVersion = localDeviceInfo.getmSystemVersion();
    localQueryMyAppReq.productID = localAppInfo.getProductID();
    localQueryMyAppReq.productVersion = localAppInfo.getmProductVersion();
    localQueryMyAppReq.resolution = (localDeviceInfo.getmScreenWidth() + "*" + localDeviceInfo.getmScreenHeight());
    localQueryMyAppReq.userAgent = localDeviceInfo.getUserAgent();
    return localQueryMyAppReq;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.util.GeneralRequestBuilder
 * JD-Core Version:    0.6.2
 */