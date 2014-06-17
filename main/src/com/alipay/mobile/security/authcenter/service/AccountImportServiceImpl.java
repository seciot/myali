package com.alipay.mobile.security.authcenter.service;

import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AccountImportService;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobilesecurity.core.model.UserFlagEntity;
import com.alipay.mobilesecurity.core.model.account.GetAccountResult;
import java.util.ArrayList;
import java.util.List;

public class AccountImportServiceImpl extends AccountImportService
{
  private static final String a = AccountImportServiceImpl.class.getName();
  private MicroApplicationContext b;
  private DeviceServiceImpl c;
  private List<UserInfo> d;
  private List<UserInfo> e;
  private AccountService f;

  private MspDeviceInfoBean a()
  {
    try
    {
      MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.b.getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
      return localMspDeviceInfoBean;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public List<UserInfo> getUserListFromResult(GetAccountResult paramGetAccountResult)
  {
    List localList = paramGetAccountResult.getUserIds();
    if (localList != null)
    {
      ArrayList localArrayList = new ArrayList();
      int i = 0;
      if (i < localList.size())
      {
        UserFlagEntity localUserFlagEntity = (UserFlagEntity)localList.get(i);
        UserInfo localUserInfo = new UserInfo();
        localUserInfo.setAutoLogin(localUserFlagEntity.isLoginWithoutPwd());
        localUserInfo.setLogonId(localUserFlagEntity.getLogonId());
        localUserInfo.setUserId(localUserFlagEntity.getUserId());
        localUserInfo.setUserAvatar(localUserFlagEntity.getHeadImgUrl());
        String str2 = localUserFlagEntity.getUserType();
        if ((!TextUtils.isEmpty(str2)) && ("wirelessUser".equalsIgnoreCase(str2)));
        for (boolean bool = true; ; bool = false)
        {
          localUserInfo.setWirelessUser(bool);
          localArrayList.add(localUserInfo);
          i++;
          break;
        }
      }
      if (localArrayList.size() == 1)
      {
        String str1 = ((UserInfo)localArrayList.get(0)).getUserId();
        this.f.setCurrentLoginUserId(str1);
      }
      return localArrayList;
    }
    return null;
  }

  public List<UserInfo> importMspAccount()
  {
    new Thread(new a(this)).start();
    try
    {
      synchronized (a)
      {
        a.wait(8000L);
        return this.d;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  public List<UserInfo> importSSOAccount()
  {
    new Thread(new b(this)).start();
    try
    {
      try
      {
        "ssoTag".wait(8000L);
        return this.e;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.b = getMicroApplicationContext();
    this.c = ((DeviceServiceImpl)this.b.getExtServiceByInterface(DeviceService.class.getName()));
    this.f = ((AccountService)getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.AccountImportServiceImpl
 * JD-Core Version:    0.6.2
 */