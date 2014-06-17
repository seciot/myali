package com.alipay.android.widget.security.msgreceiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobileapp.biz.rpc.taobao.ssotoken.CreateTaobaoSsoTokenFacade;
import com.alipay.mobileapp.biz.rpc.taobao.ssotoken.model.CreateTaobaoSsoTokenResult;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EReceiver;

@EReceiver
public class TaobaoSsoTokenWriteBackTrigger extends BroadcastReceiver
{
  private AlipayApplication a;
  private Handler b;

  private AccountService a()
  {
    return (AccountService)this.a.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName());
  }

  @Background
  void a(Context paramContext)
  {
    try
    {
      this.a = AlipayApplication.getInstance();
      AuthService localAuthService = (AuthService)this.a.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      CreateTaobaoSsoTokenFacade localCreateTaobaoSsoTokenFacade;
      String str1;
      String str2;
      String str3;
      String str4;
      UserInfo localUserInfo;
      if ((localAuthService != null) && (localAuthService.getUserInfo() != null) && (localAuthService.isLogin()))
      {
        localCreateTaobaoSsoTokenFacade = (CreateTaobaoSsoTokenFacade)((RpcService)this.a.getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(CreateTaobaoSsoTokenFacade.class);
        str1 = DeviceInfo.getInstance().getImei();
        str2 = DeviceInfo.getInstance().getImsi();
        str3 = DeviceInfo.getInstance().getmDid();
        str4 = TaobaoSsoLoginUtils.obtainTaobaoDeviceId(str3, paramContext);
        String str5 = a().getCurrentLoginUserId();
        if ((str5 == null) || (!a().getCurrentLoginState()))
          break label286;
        localUserInfo = a().queryAccountDetailInfoByUserId(str5);
        if (localUserInfo == null)
          break label286;
      }
      label286: for (String str6 = localUserInfo.getUserId(); ; str6 = null)
      {
        String.format("申请sso token参数,imei:%s,imsi:%s,did:%s,taobaoDeviceId:%s,userId:%s", new Object[] { str1, str2, str3, str4, str6 });
        CreateTaobaoSsoTokenResult localCreateTaobaoSsoTokenResult = localCreateTaobaoSsoTokenFacade.createTaobaoSsoToken(str6, str1, str2, str4);
        if (localCreateTaobaoSsoTokenResult != null)
        {
          boolean bool = localCreateTaobaoSsoTokenResult.isSuccess();
          String str7 = localCreateTaobaoSsoTokenResult.getNick();
          String str8 = localCreateTaobaoSsoTokenResult.getSsoToken();
          if ((!bool) || (StringUtils.isBlank(str7)) || (StringUtils.isBlank(str8)) || (!TaobaoSsoLoginUtils.writeSsoToken(str7, str8, paramContext)))
            String.format("回写sso token失败,nickName:%s,ssoToken:%s", new Object[] { str7, str8 });
        }
        return;
      }
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.alipay.security.login".equals(paramIntent.getAction()))
    {
      this.b = new Handler(paramContext.getMainLooper());
      this.b.postDelayed(new a(this, paramContext), 1000L);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.msgreceiver.TaobaoSsoTokenWriteBackTrigger
 * JD-Core Version:    0.6.2
 */