package com.alipay.mobile.security.accountmanager.service;

import android.os.Bundle;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.SecurityCache;
import com.alipay.mobile.framework.service.ext.security.UserInfoService;
import com.alipay.mobile.framework.service.ext.security.UserInfoServiceCallBack;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserMode;
import com.alipay.mobilesecurity.biz.gw.service.account.mobilebind.MobileBindManagerFacade;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryReq;
import com.alipay.mobilesecurity.core.model.mobilebind.MobileBindQueryRes;

public class UserInfoServiceImpl extends UserInfoService
{
  final String a = "UserInfoServiceImpl";

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public UserMode queryUserInfo(String paramString)
  {
    UserMode localUserMode = new UserMode();
    try
    {
      UserInfo localUserInfo2 = SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).findUserInfo(paramString);
      localUserInfo1 = localUserInfo2;
      localUserMode.setUserInfo(localUserInfo1);
      localUserMode.setUserExtInfo(SecurityCache.userExtInfo);
      return localUserMode;
    }
    catch (Exception localException)
    {
      while (true)
        UserInfo localUserInfo1 = null;
    }
  }

  public void queryphoneBindingState(String paramString, UserInfoServiceCallBack paramUserInfoServiceCallBack)
  {
    MobileBindManagerFacade localMobileBindManagerFacade = (MobileBindManagerFacade)((RpcService)getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileBindManagerFacade.class);
    MobileBindQueryReq localMobileBindQueryReq = new MobileBindQueryReq();
    localMobileBindQueryReq.setLogonId(paramString);
    try
    {
      String str = localMobileBindManagerFacade.queryBindMobile(localMobileBindQueryReq).getBindMobile();
      new StringBuilder("返回查询手机的绑定 bindMobile=").append(str).toString();
      paramUserInfoServiceCallBack.getBindMobile(str);
      return;
    }
    catch (RpcException localRpcException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.UserInfoServiceImpl
 * JD-Core Version:    0.6.2
 */