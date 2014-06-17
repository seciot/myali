package com.alipay.mobile.security.authcenter.service;

import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.common.utils.ThreadUtil;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityDbHelper;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.LoginService;
import com.alipay.mobile.framework.service.ext.security.UserInfoService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.framework.service.ext.security.bean.UserMode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class AuthServiceImpl extends AuthService
{
  boolean a = false;
  private Object b = new Object();
  private Object c = new Object();
  private UserInfo d = null;
  private HashMap<Long, String> e = new HashMap();

  private AccountService a()
  {
    return (AccountService)getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName());
  }

  private boolean a(Bundle paramBundle)
  {
    try
    {
      new StringBuilder("开始唤起登陆界面").append(paramBundle).toString();
      getMicroApplicationContext().startApp(AuthService.class.getName(), "20000008", paramBundle);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private boolean a(d paramd)
  {
    new StringBuilder("innerAuth 线程 key=").append(Thread.currentThread().getId()).toString();
    boolean bool;
    synchronized (this.e)
    {
      new StringBuilder("添加等待线程 key=").append(Thread.currentThread().getId()).toString();
      this.e.put(Long.valueOf(Thread.currentThread().getId()), "wait");
      bool = b(paramd);
    }
    synchronized (this.e)
    {
      new StringBuilder("移除等待线程 key=").append(Thread.currentThread().getId()).toString();
      this.e.remove(Long.valueOf(Thread.currentThread().getId()));
      return bool;
      localObject1 = finally;
      throw localObject1;
    }
  }

  private boolean b(d paramd)
  {
    while (true)
    {
      boolean bool2;
      try
      {
        new StringBuilder("rpc登录前检查当前用户是否已经登录  loginContext.isSkipCheckIsLogin()=").append(paramd.h()).append(" ").toString();
        if (!paramd.h())
        {
          boolean bool3 = isLogin();
          if (bool3)
          {
            bool1 = true;
            return bool1;
          }
        }
        if ("canceled".equals((String)this.e.get(Long.valueOf(Thread.currentThread().getId()))))
        {
          bool1 = false;
          continue;
        }
        bool2 = c(paramd);
        if (bool2)
          break label200;
        synchronized (this.e)
        {
          Iterator localIterator = this.e.entrySet().iterator();
          if (localIterator.hasNext())
          {
            Long localLong = (Long)((Map.Entry)localIterator.next()).getKey();
            new StringBuilder("登录完成且登录失败，设置等待线程 为取消状态 key=").append(localLong).toString();
            this.e.put(localLong, "canceled");
          }
        }
      }
      finally
      {
      }
      label200: boolean bool1 = bool2;
    }
  }

  private boolean c(d paramd)
  {
    boolean bool = false;
    this.a = false;
    if (ThreadUtil.checkMainThread())
      throw new IllegalThreadStateException("can't in main thread call Auth Service .");
    new StringBuilder("开始登录。loginContext=").append(paramd).toString();
    int i;
    if (!paramd.f())
    {
      UserInfo localUserInfo1 = paramd.b();
      if ((localUserInfo1 != null) && (localUserInfo1.isAutoLogin()))
        i = 1;
    }
    while (true)
    {
      UserInfo localUserInfo2;
      int j;
      if (i != 0)
      {
        localUserInfo2 = paramd.b();
        if (localUserInfo2 == null)
        {
          j = 0;
          label88: if ((j == 0) || (!d(paramd)))
            break label314;
          this.a = true;
          label106: new StringBuilder("showAppflag =").append(bool).toString();
          if (!bool);
        }
      }
      try
      {
        synchronized (this.b)
        {
          this.b.wait();
          label143: new StringBuilder("isLoginSucess=").append(this.a).append(" loginContext=").append(paramd).toString();
          if ((!this.a) || (paramd.d()) || (!((GestureService)getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName())).setGesture(new c(this))));
        }
        try
        {
          synchronized (this.c)
          {
            this.c.wait();
            label236: new StringBuilder("登录结果。context=").append(paramd).toString();
            return this.a;
            i = 0;
            continue;
            if (!"false".equals(localUserInfo2.getGestureSkipStr()))
            {
              j = 0;
              break label88;
            }
            if (TextUtils.isEmpty(localUserInfo2.getGesturePwd()))
            {
              j = 0;
              break label88;
            }
            j = 1;
            break label88;
            label314: if (paramd.b() != null)
              paramd.a().putString("loginId", paramd.b().getLogonId());
            bool = a(paramd.a());
            break label106;
            localObject4 = finally;
            throw localObject4;
          }
        }
        catch (InterruptedException localInterruptedException1)
        {
          break label236;
        }
      }
      catch (InterruptedException localInterruptedException2)
      {
        break label143;
      }
    }
  }

  private boolean d(d paramd)
  {
    try
    {
      boolean bool = f(paramd);
      return bool;
    }
    catch (RuntimeException localRuntimeException)
    {
      paramd.a(Boolean.FALSE);
    }
    return false;
  }

  private boolean e(d paramd)
  {
    try
    {
      boolean bool1;
      if (!paramd.h())
      {
        boolean bool3 = isLogin();
        if (bool3)
          bool1 = true;
      }
      while (true)
      {
        return bool1;
        if ("canceled".equals((String)this.e.get(Long.valueOf(Thread.currentThread().getId()))))
        {
          bool1 = false;
        }
        else
        {
          boolean bool2 = f(paramd);
          bool1 = bool2;
        }
      }
    }
    finally
    {
    }
  }

  private boolean f(d paramd)
  {
    UserLoginResultBiz localUserLoginResultBiz = ((LoginService)getMicroApplicationContext().getExtServiceByInterface(LoginService.class.getName())).login(paramd.b().getLogonId(), null, null, null, null);
    String str;
    if (localUserLoginResultBiz != null)
    {
      if (1000 == localUserLoginResultBiz.getResultStatus())
      {
        UserInfoService localUserInfoService = (UserInfoService)getMicroApplicationContext().getExtServiceByInterface(UserInfoService.class.getName());
        if (localUserLoginResultBiz.getUserId() != null)
        {
          this.d = localUserInfoService.queryUserInfo(localUserLoginResultBiz.getUserId()).getUserInfo();
          paramd.a(Boolean.TRUE);
          return true;
        }
        paramd.a(Boolean.FALSE);
        return false;
      }
      new StringBuilder("免登服务失败 ").append(localUserLoginResultBiz.getResultStatus()).append(" ").append(localUserLoginResultBiz.getMemo()).toString();
      if (this.d != null)
      {
        str = this.d.getUserId();
        new StringBuilder("清除本地所以用戶免登狀態 userId=").append(str).toString();
      }
    }
    try
    {
      SecurityDbHelper.getInstance(getMicroApplicationContext().getApplicationContext()).updateUserAutoLoginFlag(str);
      try
      {
        label194: a().setCurrentLoginState("false");
        label203: paramd.a(Boolean.FALSE);
        return false;
        paramd.a(Boolean.FALSE);
        return false;
      }
      catch (Exception localException2)
      {
        break label203;
      }
    }
    catch (Exception localException1)
    {
      break label194;
    }
  }

  public boolean auth()
  {
    return auth(new Bundle());
  }

  public boolean auth(Bundle paramBundle)
  {
    UserInfo localUserInfo = getLastLoginedUserInfo();
    d locald = new d();
    locald.a(paramBundle);
    locald.a(localUserInfo);
    return a(locald);
  }

  public boolean autoAuth()
  {
    clearAuthLoginFlag();
    if (ThreadUtil.checkMainThread())
      throw new IllegalThreadStateException("can't in main thread call Auth Service .");
    UserInfo localUserInfo = getLastLoginedUserInfo();
    new StringBuilder("客户端免登请求线程 ").append(Thread.currentThread().getId()).toString();
    d locald;
    synchronized (this.e)
    {
      new StringBuilder("添加等待线程 (免登登录)key=").append(Thread.currentThread().getId()).toString();
      this.e.put(Long.valueOf(Thread.currentThread().getId()), "wait");
      locald = new d();
      locald.a(localUserInfo);
    }
    try
    {
      boolean bool = e(locald);
      synchronized (this.e)
      {
        new StringBuilder("移除等待线程(免登登录) key=").append(Thread.currentThread().getId()).toString();
        this.e.remove(Long.valueOf(Thread.currentThread().getId()));
        return bool;
        localObject1 = finally;
        throw localObject1;
      }
    }
    finally
    {
    }
  }

  public void cancelLogin()
  {
    notifyUnlockLoginApp(false, false);
    try
    {
      if (getMicroApplicationContext().findTopRunningApp().getAppId().equalsIgnoreCase("20000008"))
        getMicroApplicationContext().finishApp(AuthService.class.getName(), "20000008", null);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void clearAuthLoginFlag()
  {
    a().setCurrentLoginState("false");
  }

  public void clearLoginUserInfo()
  {
    this.d = null;
  }

  public UserInfo gestureGetUserInfo()
  {
    UserInfo localUserInfo = a().getUserInfoBySql(null, null);
    if (localUserInfo != null)
    {
      boolean bool1 = localUserInfo.isAutoLogin();
      boolean bool2 = a().getCurrentLoginState();
      if ((bool1) || (bool2));
    }
    else
    {
      return null;
    }
    return localUserInfo;
  }

  public UserInfo getLastLoginedUserInfo()
  {
    String str = a().getCurrentLoginUserId();
    int j;
    int i;
    if (str != null)
    {
      j = str.length();
      if (j != 0);
    }
    else
    {
      i = 1;
    }
    while (i == 0)
    {
      return a().queryAccountDetailInfoByUserId(str);
      for (int k = 0; ; k++)
      {
        if (k >= j)
          break label69;
        boolean bool = Character.isWhitespace(str.charAt(k));
        i = 0;
        if (!bool)
          break;
      }
      label69: i = 1;
    }
    return null;
  }

  public UserInfo getUserInfo()
  {
    String str = a().getCurrentLoginUserId();
    if ((str != null) && (isLogin()))
      this.d = a().queryAccountDetailInfoByUserId(str);
    if (this.d == null)
      clearAuthLoginFlag();
    return this.d;
  }

  public boolean isLogin()
  {
    return a().getCurrentLoginState();
  }

  public void notifyUnlockGestureApp()
  {
    try
    {
      synchronized (this.c)
      {
        this.c.notifyAll();
        label14: return;
      }
    }
    catch (Exception localException)
    {
      break label14;
    }
  }

  public void notifyUnlockLoginApp(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      synchronized (this.b)
      {
        this.a = paramBoolean1;
        this.b.notifyAll();
        label19: return;
      }
    }
    catch (Exception localException)
    {
      break label19;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  // ERROR //
  public UserInfo queryLatelyLoginUser()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 321	com/alipay/mobile/security/authcenter/service/AuthServiceImpl:a	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   4: invokevirtual 411	com/alipay/mobile/framework/service/ext/security/AccountService:getCurrentLoginLogonId	()Ljava/lang/String;
    //   7: astore 9
    //   9: aload 9
    //   11: astore_3
    //   12: new 58	java/lang/StringBuilder
    //   15: dup
    //   16: ldc_w 413
    //   19: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   22: aload_3
    //   23: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: pop
    //   30: aload_0
    //   31: invokespecial 321	com/alipay/mobile/security/authcenter/service/AuthServiceImpl:a	()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    //   34: invokevirtual 384	com/alipay/mobile/framework/service/ext/security/AccountService:getCurrentLoginUserId	()Ljava/lang/String;
    //   37: astore 12
    //   39: aload 12
    //   41: astore_2
    //   42: new 58	java/lang/StringBuilder
    //   45: dup
    //   46: ldc_w 415
    //   49: invokespecial 63	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload_2
    //   53: invokevirtual 130	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   59: pop
    //   60: aload_2
    //   61: astore 15
    //   63: aload_3
    //   64: astore 5
    //   66: aload 15
    //   68: astore 6
    //   70: aload 5
    //   72: ifnull +61 -> 133
    //   75: ldc_w 417
    //   78: aload 5
    //   80: invokevirtual 144	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   83: ifne +50 -> 133
    //   86: aload_0
    //   87: invokevirtual 39	com/alipay/mobile/security/authcenter/service/AuthServiceImpl:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   90: ldc 41
    //   92: invokevirtual 47	java/lang/Class:getName	()Ljava/lang/String;
    //   95: invokeinterface 53 2 0
    //   100: checkcast 41	com/alipay/mobile/framework/service/ext/security/AccountService
    //   103: aload 6
    //   105: invokevirtual 391	com/alipay/mobile/framework/service/ext/security/AccountService:queryAccountDetailInfoByUserId	(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    //   108: astore 8
    //   110: aload 8
    //   112: areturn
    //   113: astore_1
    //   114: aconst_null
    //   115: astore_2
    //   116: aconst_null
    //   117: astore_3
    //   118: aload_2
    //   119: astore 4
    //   121: aload_3
    //   122: astore 5
    //   124: aload 4
    //   126: astore 6
    //   128: goto -58 -> 70
    //   131: astore 7
    //   133: aconst_null
    //   134: areturn
    //   135: astore 10
    //   137: aconst_null
    //   138: astore_2
    //   139: goto -21 -> 118
    //   142: astore 13
    //   144: goto -26 -> 118
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	113	java/lang/Exception
    //   86	110	131	java/lang/Exception
    //   12	39	135	java/lang/Exception
    //   42	60	142	java/lang/Exception
  }

  public boolean rpcAuth()
  {
    clearAuthLoginFlag();
    d locald = new d();
    UserInfo localUserInfo = getUserInfo();
    locald.a(new Bundle());
    locald.a(localUserInfo);
    locald.e();
    return a(locald);
  }

  public boolean showActivityLogin(Bundle paramBundle, UserInfo paramUserInfo)
  {
    clearAuthLoginFlag();
    d locald = new d();
    locald.a(paramBundle);
    locald.a(paramUserInfo);
    locald.g();
    locald.i();
    locald.c();
    return a(locald);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.AuthServiceImpl
 * JD-Core Version:    0.6.2
 */