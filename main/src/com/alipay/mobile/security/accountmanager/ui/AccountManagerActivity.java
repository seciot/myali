package com.alipay.mobile.security.accountmanager.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.logging.Logger;
import com.alipay.mobile.common.logging.LoggerFactory;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.login.bean.LoginInfo;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.UserFlagEntity;
import com.alipay.mobilesecurity.core.model.account.GetAccountResult;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@EActivity(resName="security_userlistmanager")
public class AccountManagerActivity extends BaseActivity
  implements com.alipay.mobile.security.accountmanager.a.b
{
  private static final Logger k = LoggerFactory.getLogger("AccountManagerActivity");
  final String a = "AccountManagerActivity";

  @ViewById(resName="security_userListView")
  protected APListView b;
  protected com.alipay.mobile.security.accountmanager.b.a c;
  protected AccountService d;
  protected LoginService e;
  protected AuthService f;
  protected List<UserInfo> g;
  protected UserInfo h;
  protected com.alipay.mobile.security.accountmanager.a.a i;
  String j = "";
  private int l = 0;

  private void c(UserInfo paramUserInfo)
  {
    Bundle localBundle = new Bundle();
    if (paramUserInfo != null)
    {
      LoginInfo localLoginInfo = new LoginInfo();
      localLoginInfo.a(paramUserInfo.getLogonId());
      localLoginInfo.b(paramUserInfo.isWirelessUser());
      localBundle.putParcelable("loginInfo", localLoginInfo);
    }
    localBundle.putBoolean("source_accountSelectAccount", true);
    try
    {
      this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000008", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  protected final void a()
  {
    this.f.notifyUnlockLoginApp(false, false);
    b();
  }

  @UiThread
  public void a(int paramInt, Object paramObject)
  {
    dismissProgressDialog();
    List localList1;
    switch (paramInt)
    {
    default:
    case 1:
      do
      {
        return;
        Thread.currentThread().getName();
        GetAccountResult localGetAccountResult = (GetAccountResult)paramObject;
        if (localGetAccountResult == null)
          break;
        localList1 = localGetAccountResult.getUserIds();
      }
      while ((localList1 == null) || (localList1.size() <= 0));
      this.g.clear();
    case 2:
    }
    while (true)
    {
      try
      {
        this.d = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
        List localList2 = this.d.queryAccountList();
        ArrayList localArrayList = new ArrayList();
        StringBuffer localStringBuffer = new StringBuffer();
        Iterator localIterator1 = localList1.iterator();
        boolean bool2;
        boolean bool3;
        label280: boolean bool1;
        label433: MobileSecurityResult localMobileSecurityResult;
        UserInfo localUserInfo1;
        String str1;
        if (localIterator1.hasNext())
        {
          UserFlagEntity localUserFlagEntity = (UserFlagEntity)localIterator1.next();
          String str2 = localUserFlagEntity.getUserId();
          if (localList2 == null)
            break label1017;
          Iterator localIterator3 = localList2.iterator();
          if (!localIterator3.hasNext())
            break label1017;
          UserInfo localUserInfo5 = (UserInfo)localIterator3.next();
          if (!str2.equals(localUserInfo5.getUserId()))
            continue;
          localUserInfo5.setLogonId(localUserInfo5.getLogonId());
          if ((localUserFlagEntity.isLoginWithoutPwd()) && (localUserInfo5.isAutoLogin()))
          {
            bool2 = true;
            localUserInfo5.setAutoLogin(bool2);
            String str5 = localUserFlagEntity.getUserType();
            if ((TextUtils.isEmpty(str5)) || (!"wirelessUser".equalsIgnoreCase(str5)))
              break label527;
            bool3 = true;
            localUserInfo5.setWirelessUser(bool3);
            String str6 = localUserFlagEntity.getHeadImgUrl();
            if ((str6 != null) && (!"".equalsIgnoreCase(str6)))
            {
              new StringBuilder("，头像不为空，更新数据库头像：").append(str6).toString();
              localUserInfo5.setUserAvatar(str6);
            }
            localArrayList.add(localUserInfo5);
            localStringBuffer.append(localUserInfo5.getUserId());
            m = 1;
            if (m != 0)
              continue;
            UserInfo localUserInfo4 = new UserInfo();
            localUserInfo4.setLogonId(localUserFlagEntity.getLogonId());
            localUserInfo4.setUserId(localUserFlagEntity.getUserId());
            String str3 = localUserFlagEntity.getHeadImgUrl();
            localUserInfo4.setAutoLogin(false);
            String str4 = localUserFlagEntity.getUserType();
            if ((TextUtils.isEmpty(str4)) || (!"wirelessUser".equalsIgnoreCase(str4)))
              break label533;
            bool1 = true;
            localUserInfo4.setWirelessUser(bool1);
            if ((str3 != null) && (!"".equalsIgnoreCase(str3)))
            {
              new StringBuilder("，头像不为空，更新数据库头像：").append(str3).toString();
              localUserInfo4.setUserAvatar(str3);
            }
            localArrayList.add(localUserInfo4);
            continue;
          }
        }
      }
      catch (Exception localException3)
      {
      }
      while (true)
      {
        this.g.addAll(this.d.queryAccountList());
        a(this.g);
        return;
        bool2 = false;
        break;
        label527: bool3 = false;
        break label280;
        label533: bool1 = false;
        break label433;
        if ((this.h != null) && (!localStringBuffer.toString().contains(this.h.getUserId())))
          localArrayList.add(this.h);
        if (localArrayList.size() > 0)
        {
          this.d.cleanLocalAccountByUserId(null);
          Iterator localIterator2 = localArrayList.iterator();
          while (localIterator2.hasNext())
          {
            UserInfo localUserInfo3 = (UserInfo)localIterator2.next();
            if (this.d.addUserInfo(localUserInfo3))
              new StringBuilder("更新本地数据库成功 logouId=").append(localUserInfo3.getLogonId()).toString();
          }
        }
      }
      alert("", getResources().getString(R.string.al), getResources().getString(R.string.bZ), new g(this), null, null);
      return;
      localMobileSecurityResult = (MobileSecurityResult)paramObject;
      if (localMobileSecurityResult != null)
        if (("200".equalsIgnoreCase(localMobileSecurityResult.getResultCode())) || ("401".equalsIgnoreCase(localMobileSecurityResult.getResultCode())))
        {
          localUserInfo1 = (UserInfo)this.g.get(this.l);
          str1 = localUserInfo1.getUserId();
          this.f.clearLoginUserInfo();
          b(str1);
          this.g.remove(this.l);
        }
      try
      {
        Intent localIntent = new Intent("com.alipay.security.cleanAccount");
        localIntent.putExtra("userId", str1);
        LocalBroadcastManager.getInstance(this.mApp.getMicroApplicationContext().getApplicationContext()).sendBroadcast(localIntent);
        if ((this.h != null) && (this.h.getUserId() != null) && (this.h.getUserId().equals(localUserInfo1.getUserId())))
        {
          this.d.setCurrentLoginLogonId(null);
          this.d.setCurrentLoginState(null);
          this.d.setCurrentLoginUserId(null);
          try
          {
            if (this.l >= this.g.size())
              break label1011;
            localUserInfo2 = (UserInfo)this.g.get(this.l);
            b(localUserInfo2);
            SecurityUtil.a();
            this.h = null;
            return;
          }
          catch (Exception localException2)
          {
            new StringBuilder().append(localException2).toString();
            return;
          }
        }
        else
        {
          a(this.g);
          return;
          alert(null, localMobileSecurityResult.getMessage(), getResources().getString(R.string.bi), null, null, null);
          return;
          toast(getResources().getString(R.string.c), 1);
          return;
        }
      }
      catch (Exception localException1)
      {
        while (true)
        {
          continue;
          label1011: UserInfo localUserInfo2 = null;
        }
      }
      label1017: int m = 0;
    }
  }

  // ERROR //
  @Background
  protected void a(UserInfo paramUserInfo)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc 54
    //   3: invokevirtual 401	com/alipay/mobile/security/accountmanager/ui/AccountManagerActivity:showProgressDialog	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: getfield 403	com/alipay/mobile/security/accountmanager/ui/AccountManagerActivity:e	Lcom/alipay/mobile/framework/service/ext/security/LoginService;
    //   10: aload_1
    //   11: invokevirtual 82	com/alipay/mobile/framework/service/ext/security/bean/UserInfo:getLogonId	()Ljava/lang/String;
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokevirtual 409	com/alipay/mobile/framework/service/ext/security/LoginService:login	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    //   21: astore_3
    //   22: aload_0
    //   23: invokevirtual 138	com/alipay/mobile/security/accountmanager/ui/AccountManagerActivity:dismissProgressDialog	()V
    //   26: aload_3
    //   27: ifnull +27 -> 54
    //   30: sipush 1000
    //   33: aload_3
    //   34: invokevirtual 414	com/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz:getResultStatus	()I
    //   37: if_icmpne +17 -> 54
    //   40: aload_0
    //   41: ldc 54
    //   43: invokevirtual 415	com/alipay/mobile/security/accountmanager/ui/AccountManagerActivity:a	(Ljava/lang/String;)V
    //   46: return
    //   47: astore_2
    //   48: aload_0
    //   49: invokevirtual 138	com/alipay/mobile/security/accountmanager/ui/AccountManagerActivity:dismissProgressDialog	()V
    //   52: aload_2
    //   53: athrow
    //   54: aload_0
    //   55: aload_1
    //   56: invokespecial 68	com/alipay/mobile/security/accountmanager/ui/AccountManagerActivity:c	(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    //   59: return
    //   60: astore 4
    //   62: return
    //
    // Exception table:
    //   from	to	target	type
    //   6	22	47	java/lang/RuntimeException
    //   40	46	60	java/lang/Exception
  }

  @Background
  protected void a(String paramString)
  {
    GestureService localGestureService = (GestureService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName());
    if ("set".equals(paramString))
    {
      localGestureService.setGesture(new e(this));
      return;
    }
    localGestureService.gesture(new f(this));
  }

  @Background
  protected void a(String paramString1, String paramString2)
  {
    if (this.i != null)
      this.i.a(paramString1);
  }

  @UiThread
  protected void a(List<UserInfo> paramList)
  {
    String str = ((UserInfo)paramList.get(0)).getUserAvatar();
    new StringBuilder("upDateUI..").append(str).toString();
    this.c.a(paramList);
  }

  @UiThread
  protected void b()
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("actionType", "20000002");
    try
    {
      this.mApp.getMicroApplicationContext().startApp(this.mApp.getAppId(), "20000001", localBundle);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @Background
  protected void b(UserInfo paramUserInfo)
  {
    try
    {
      c(paramUserInfo);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @Background
  protected void b(String paramString)
  {
    this.d.cleanLocalAccountByUserId(paramString);
  }

  @Background
  protected void c()
  {
    if (this.i != null)
      showProgressDialog("", false, null);
    try
    {
      this.i.a();
      dismissProgressDialog();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      dismissProgressDialog();
      throw localRuntimeException;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    k.info("AccountManagerActivity 销毁");
    super.onDestroy();
  }

  protected void onResume()
  {
    super.onResume();
    this.i = new com.alipay.mobile.security.accountmanager.a.a(this.mApp, this);
    this.d = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.e = ((LoginService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(LoginService.class.getName()));
    this.f = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    if (this.f.isLogin())
      this.h = this.f.getUserInfo();
    if (this.h != null)
      this.j = this.h.getUserId();
    this.g = this.d.queryAccountList();
    this.c = new com.alipay.mobile.security.accountmanager.b.a(this, this.g, this.j);
    View localView = getLayoutInflater().inflate(R.layout.aY, null);
    ((APTableView)localView.findViewById(R.id.cK)).setOnClickListener(new a(this));
    if (this.b.getFooterViewsCount() <= 0)
      this.b.addFooterView(localView, null, true);
    this.b.setAdapter(this.c);
    this.b.setOnItemClickListener(new b(this));
    this.b.setOnItemLongClickListener(new c(this));
    c();
    dismissProgressDialog();
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if ((localBundle != null) && (true == localBundle.getBoolean("source_login")))
        a("set");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.AccountManagerActivity
 * JD-Core Version:    0.6.2
 */