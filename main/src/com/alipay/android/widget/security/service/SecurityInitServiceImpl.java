package com.alipay.android.widget.security.service;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityShareStore;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.SecurityInitService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobileapp.common.service.facade.authcenter.facade.MobileTerminalFacade;
import com.alipay.mobileapp.common.service.facade.authcenter.model.TidVerifyReq;
import com.alipay.mobileapp.common.service.facade.authcenter.model.TidVerifyRes;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import com.googlecode.androidannotations.annotations.EBean;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;

@EBean
public class SecurityInitServiceImpl extends SecurityInitService
{
  final String a = "SecurityInitServiceImpl";
  final String b = "appVersion";
  protected DeviceService c;
  String d = SecurityInitServiceImpl.class.getName();
  private MicroApplicationContext e;
  private AuthService f;
  private boolean g;
  private boolean h;
  private com.alipay.android.widget.security.a.a i;

  private MspDeviceInfoBean a()
  {
    try
    {
      MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
      return localMspDeviceInfoBean;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private void a(UserInfo paramUserInfo)
  {
    if ((paramUserInfo == null) || (!paramUserInfo.isAutoLogin()))
      b(paramUserInfo);
  }

  private void b()
  {
    try
    {
      ((AuthService)this.e.getExtServiceByInterface(AuthService.class.getName())).showActivityLogin(null, null);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder().append(localException.getMessage()).toString();
    }
  }

  private void b(UserInfo paramUserInfo)
  {
    int j;
    if ((paramUserInfo != null) && (paramUserInfo.isAutoLogin()))
    {
      boolean bool1 = "false".equals(paramUserInfo.getGestureSkipStr());
      j = 0;
      if ((!bool1) && (j == 0));
    }
    while (this.g)
      try
      {
        boolean bool3 = this.f.autoAuth();
        if ((!this.g) && (!bool3))
          b();
        return;
        String str = paramUserInfo.getGesturePwd();
        j = 0;
        if (str == null)
          break;
        boolean bool2 = "".equals(paramUserInfo.getGesturePwd());
        j = 0;
        if (bool2)
          break;
        j = 1;
      }
      catch (RpcException localRpcException)
      {
        new StringBuilder("免登失败，异常信息").append(localRpcException.getStackTrace()).toString();
        return;
      }
    b();
  }

  private void c()
  {
    ((DeviceService)getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).generateDid(new c(this));
  }

  public boolean addDeviceInfo(DeviceInfoBean paramDeviceInfoBean)
  {
    if (paramDeviceInfoBean != null)
    {
      SecurityShareStore.putString(getMicroApplicationContext().getApplicationContext(), "walletTid", paramDeviceInfoBean.getWalletTid());
      CacheSet.getInstance(getMicroApplicationContext().getApplicationContext()).putBoolean("isUpdateAutoLoginKey", true);
      return true;
    }
    return false;
  }

  public void copyMspTidToWalletId()
  {
    DeviceInfoBean localDeviceInfoBean = this.c.queryDeviceInfo();
    String str = localDeviceInfoBean.getWalletTid();
    new StringBuilder("current walletTid in client is ").append(str).toString();
    if (TextUtils.isEmpty(str))
    {
      MspDeviceInfoBean localMspDeviceInfoBean = a();
      if ((localMspDeviceInfoBean != null) && (!StringUtils.isEmpty(localMspDeviceInfoBean.getTid())))
      {
        localDeviceInfoBean.setWalletTid(localMspDeviceInfoBean.getTid());
        addDeviceInfo(localDeviceInfoBean);
      }
    }
  }

  protected void handleUpdateLoginResult(MobileSecurityResult paramMobileSecurityResult)
  {
    DeviceInfoBean localDeviceInfoBean;
    if ((paramMobileSecurityResult != null) && (paramMobileSecurityResult.isSuccess()))
    {
      localDeviceInfoBean = this.c.queryDeviceInfo();
      if (localDeviceInfoBean != null)
        break label24;
    }
    label24: MspDeviceInfoBean localMspDeviceInfoBean;
    do
    {
      return;
      localMspDeviceInfoBean = a();
    }
    while ((localMspDeviceInfoBean == null) || (StringUtils.isEmpty(localMspDeviceInfoBean.getTid())));
    localDeviceInfoBean.setWalletTid(localMspDeviceInfoBean.getTid());
    addDeviceInfo(localDeviceInfoBean);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.e = AlipayApplication.getInstance().getMicroApplicationContext();
    this.f = ((AuthService)this.e.getExtServiceByInterface(AuthService.class.getName()));
    this.c = ((DeviceService)this.e.getExtServiceByInterface(DeviceService.class.getName()));
    this.i = new com.alipay.android.widget.security.a.a();
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void securityInit(Intent paramIntent)
  {
    String str = paramIntent.getStringExtra("inited_param");
    if ((!TextUtils.isEmpty(str)) && (com.alipay.mobilesecurity.a.a.a.a(Uri.parse(str))));
    for (int j = 1; j != 0; j = 0)
    {
      new StringBuilder("淘系sso token登录，不做安全模块初始化,intent uri:").append(paramIntent.getData()).toString();
      return;
    }
    if (SecurityUtil.c(str))
    {
      new StringBuilder("在不需要自动登陆set中所以不做安全模块初始化和免登操作,intent uri:").append(paramIntent.getData()).toString();
      return;
    }
    DeviceInfo.getSecurityInstance();
    new Thread(new a(paramIntent)).start();
  }

  public void securityInitStart()
  {
    try
    {
      if (this.h)
      {
        c();
        return;
      }
      DeviceInfoBean localDeviceInfoBean1 = ((DeviceService)getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryDeviceInfo();
      if (!TextUtils.isEmpty(localDeviceInfoBean1.getWalletTid()))
      {
        UserInfo localUserInfo = this.f.getUserInfo();
        if ((localUserInfo != null) && (localUserInfo.isAutoLogin()))
        {
          MobileTerminalFacade localMobileTerminalFacade = (MobileTerminalFacade)((RpcService)getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(MobileTerminalFacade.class);
          TidVerifyReq localTidVerifyReq = new TidVerifyReq();
          if (CacheSet.getInstance(getMicroApplicationContext().getApplicationContext()).getBoolean("isUpdateAutoLoginKey", false))
          {
            MspDeviceInfoBean localMspDeviceInfoBean2 = a();
            Tid localTid = null;
            if (localMspDeviceInfoBean2 != null)
            {
              localTid = new Tid();
              localTid.setClientKey(localMspDeviceInfoBean2.getMspkey());
              localTid.setImei(localMspDeviceInfoBean2.getImei());
              localTid.setImsi(localMspDeviceInfoBean2.getImsi());
              localTid.setTid(localMspDeviceInfoBean2.getTid());
              localTid.setVimei(localMspDeviceInfoBean2.getVimei());
              localTid.setVimsi(localMspDeviceInfoBean2.getVimsi());
            }
            if (localTid != null)
            {
              localTidVerifyReq.setClientKey(localTid.getClientKey());
              localTidVerifyReq.setImei(localTid.getImei());
              localTidVerifyReq.setImsi(localTid.getImsi());
              localTidVerifyReq.setTid(localTid.getTid());
              localTidVerifyReq.setVimei(localTid.getVimei());
              localTidVerifyReq.setVimsi(localTid.getVimsi());
            }
          }
          TidVerifyRes localTidVerifyRes;
          while (true)
          {
            try
            {
              localTidVerifyRes = localMobileTerminalFacade.verifyTid(localTidVerifyReq);
              if ((localTidVerifyRes == null) || (!localTidVerifyRes.isSuccess()))
                break;
              b(localUserInfo);
              return;
            }
            catch (RuntimeException localRuntimeException)
            {
              a(localUserInfo);
              return;
            }
            localTidVerifyReq.setClientKey(DeviceInfo.getInstance().getmClientKey());
            localTidVerifyReq.setImei(DeviceInfo.getInstance().getImei());
            localTidVerifyReq.setImsi(DeviceInfo.getInstance().getImsi());
            localTidVerifyReq.setTid(localDeviceInfoBean1.getWalletTid());
            continue;
            localTidVerifyReq.setClientKey(DeviceInfo.getInstance().getmClientKey());
            localTidVerifyReq.setImei(DeviceInfo.getInstance().getImei());
            localTidVerifyReq.setImsi(DeviceInfo.getInstance().getImsi());
            localTidVerifyReq.setTid(localDeviceInfoBean1.getWalletTid());
          }
          if (localTidVerifyRes.getResultCode() == 7006)
          {
            new StringBuilder("验证did 请求服务器响应失败 ").append(localTidVerifyRes.getResultCode()).append(" ").append(localTidVerifyRes.getMessage()).toString();
            SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).updateUserAutoLoginFlag(null);
            boolean bool = CacheSet.getInstance(getMicroApplicationContext().getApplicationContext()).getBoolean("isUpdateAutoLoginKey", false);
            if (!bool)
              break label637;
          }
          while (true)
          {
            try
            {
              ((PayHelperServcie)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(PayHelperServcie.class.getName())).resetTID();
              DeviceInfoBean localDeviceInfoBean2 = this.c.queryDeviceInfo();
              if (localDeviceInfoBean2 != null)
              {
                String str = localDeviceInfoBean2.getWalletTid();
                new StringBuilder("walletTid=").append(str).toString();
                MspDeviceInfoBean localMspDeviceInfoBean1 = a();
                if ((localMspDeviceInfoBean1 != null) && (!StringUtils.isEmpty(localMspDeviceInfoBean1.getTid())) && ((str == null) || (StringUtils.isEmpty(str.trim())) || (!localMspDeviceInfoBean1.getTid().equals(str.trim()))))
                {
                  localDeviceInfoBean2.setWalletTid(localMspDeviceInfoBean1.getTid());
                  addDeviceInfo(localDeviceInfoBean2);
                }
              }
              a(localUserInfo);
              return;
            }
            catch (Exception localException2)
            {
              localException2.printStackTrace();
              continue;
            }
            label637: DeviceInfo.getInstance().refleshClientKey();
            c();
          }
        }
        b(null);
        return;
      }
      c();
      return;
    }
    catch (Exception localException1)
    {
    }
  }

  public void updateWalletLoginAuth(List<String> paramList)
  {
    try
    {
      BackgroundExecutor.execute(new d(this, paramList));
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("更新免登关系异常:").append(localException.getMessage()).toString();
    }
  }

  private final class a
    implements Runnable
  {
    Intent a;

    public a(Intent arg2)
    {
      Object localObject;
      this.a = localObject;
    }

    public final void run()
    {
      synchronized (SecurityInitServiceImpl.this.d)
      {
        SecurityInitServiceImpl.access$002(SecurityInitServiceImpl.this, this.a.getBooleanExtra("toBiz", false));
        SecurityInitServiceImpl.access$102(SecurityInitServiceImpl.this, this.a.getBooleanExtra("genTid", false));
        SecurityInitServiceImpl.this.securityInitStart();
        return;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.SecurityInitServiceImpl
 * JD-Core Version:    0.6.2
 */