package com.alipay.mobile.alipassapp.biz.service;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassAddResult;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOffline;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.io.File;
import java.sql.SQLException;

public class f extends Handler
{
  private static final String a = f.class.getSimpleName();
  private com.alipay.mobile.alipassapp.biz.a.a b = null;
  private com.alipay.mobile.alipassapp.biz.common.a c;
  private com.alipay.mobile.alipassapp.biz.a d;
  private MicroApplicationContext e;
  private int f;

  public f()
  {
  }

  public f(Looper paramLooper)
  {
    super(paramLooper);
  }

  private int a(Object paramObject)
  {
    try
    {
      if ((paramObject instanceof AlipassListCache))
      {
        AlipassListCache localAlipassListCache = (AlipassListCache)paramObject;
        DeletePassResult localDeletePassResult2 = this.d.a(localAlipassListCache.getPassId(), false);
        if (((localDeletePassResult2 != null) && (localDeletePassResult2.success)) || ((!localDeletePassResult2.success) && ((StringUtils.equals(localDeletePassResult2.resultCode, "1501")) || (StringUtils.equals(localDeletePassResult2.resultCode, "1502")))))
        {
          localAlipassListCache.setStatus(4);
          boolean bool3 = this.b.a(localAlipassListCache);
          StringBuilder localStringBuilder3 = new StringBuilder("alipass缓存删除成功，");
          if (bool3)
          {
            str3 = "更新状态成功";
            localStringBuilder3.append(str3).append("; AlipassListCache is ").append(localAlipassListCache.toString()).toString();
          }
        }
        else
        {
          return localAlipassListCache.getId();
        }
      }
      else if ((paramObject instanceof AlipassOffline))
      {
        AlipassOffline localAlipassOffline = (AlipassOffline)paramObject;
        this.c.d(localAlipassOffline.getPassPath().substring(1 + localAlipassOffline.getPassPath().lastIndexOf("/")));
        if (localAlipassOffline.getPassId() != null)
        {
          DeletePassResult localDeletePassResult1 = this.d.a(localAlipassOffline.getPassId(), false);
          if ((localDeletePassResult1 != null) && (localDeletePassResult1.success))
          {
            localAlipassOffline.setStatus(4);
            boolean bool2 = this.b.a(localAlipassOffline);
            StringBuilder localStringBuilder2 = new StringBuilder("alipass离线删除成功，");
            if (!bool2)
              break label401;
            str2 = "更新状态成功";
            localStringBuilder2.append(str2).append("; AlipassOffline is ").append(localAlipassOffline.toString()).toString();
          }
          return localAlipassOffline.getId();
        }
        localAlipassOffline.setStatus(4);
        boolean bool1 = this.b.a(localAlipassOffline);
        StringBuilder localStringBuilder1 = new StringBuilder("alipass离线删除成功，");
        if (bool1);
        for (String str1 = "更新状态成功"; ; str1 = "更新状态失败")
        {
          localStringBuilder1.append(str1).append("; AlipassOffline is ").append(localAlipassOffline.toString()).toString();
          break;
        }
      }
    }
    catch (RpcException localRpcException)
    {
      LogCatLog.v(a, localRpcException.getMessage());
      return 0;
    }
    catch (SQLException localSQLException)
    {
      while (true)
      {
        return 0;
        String str3 = "更新状态失败";
        continue;
        label401: String str2 = "更新状态失败";
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
    }
    return 0;
  }

  private void a(String paramString, Class<?> paramClass)
  {
    int i = 0;
    int j = -1000;
    while (true)
    {
      int k = i + 1;
      if (i <= 1000);
      try
      {
        Object localObject2 = this.b.a(paramString, j, paramClass);
        localObject1 = localObject2;
        if ((localObject1 == null) || (!a(paramString)))
          return;
        j = a(localObject1);
        i = k;
      }
      catch (SQLException localSQLException)
      {
        while (true)
          localObject1 = null;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        while (true)
          Object localObject1 = null;
      }
    }
  }

  private boolean a(String paramString)
  {
    if (this.e == null)
      return false;
    AuthService localAuthService = (AuthService)this.e.getExtServiceByInterface(AuthService.class.getName());
    return (localAuthService != null) && (localAuthService.getUserInfo() != null) && (localAuthService.getUserInfo().getUserId() != null) && (localAuthService.getUserInfo().getUserId().equals(paramString));
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage == null)
      return;
    Bundle localBundle = paramMessage.getData();
    String str1;
    if (localBundle != null)
    {
      str1 = localBundle.getString("userId");
      if (str1 != null)
      {
        if (this.b == null)
          this.b = new com.alipay.mobile.alipassapp.biz.a.a.a(AlipayApplication.getInstance());
        if (this.e == null)
          this.e = AlipayApplication.getInstance().getMicroApplicationContext();
        if (this.c == null)
          this.c = new com.alipay.mobile.alipassapp.biz.common.a(AlipayApplication.getInstance());
        if (this.d == null)
          this.d = new com.alipay.mobile.alipassapp.biz.c.a(this.e);
        this.f = localBundle.getInt("action", 0);
        if (this.f != 0);
      }
    }
    try
    {
      Thread.sleep(localBundle.getInt("delaytime", 0));
      int k;
      if (this.e != null)
      {
        AuthService localAuthService = (AuthService)this.e.getExtServiceByInterface(AuthService.class.getName());
        if ((localAuthService != null) && (localAuthService.isLogin()) && (localAuthService.getUserInfo() != null))
        {
          k = 1;
          if (k != 0)
            ((d)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(d.class.getName())).a(localBundle.getBoolean("support_interval", false));
          if ((this.f == 0) || (this.f == 1))
          {
            l1 = System.currentTimeMillis();
            i = 0;
          }
        }
      }
      while (true)
      {
        AlipassOffline localAlipassOffline1;
        String str2;
        while (true)
        {
          j = i + 1;
          if (i <= 1000);
          try
          {
            AlipassOffline localAlipassOffline2 = this.b.a(str1, l1);
            localAlipassOffline1 = localAlipassOffline2;
            if (localAlipassOffline1 != null)
            {
              l2 = localAlipassOffline1.getTimestamp();
              if (!a(str1))
                new StringBuilder("alipass:上传失败，不合法用户，文件路径：").append(localAlipassOffline1.getPassPath()).toString();
            }
            else
            {
              if ((this.f == 0) || (this.f == 2))
              {
                a(str1, AlipassListCache.class);
                a(str1, AlipassOffline.class);
              }
              super.handleMessage(paramMessage);
              return;
              k = 0;
            }
          }
          catch (SQLException localSQLException2)
          {
            while (true)
              localAlipassOffline1 = null;
          }
          catch (IllegalStateException localIllegalStateException1)
          {
            while (true)
              localAlipassOffline1 = null;
            new StringBuilder("alipass开始上传：").append(localAlipassOffline1.toString()).toString();
            str2 = localAlipassOffline1.getPassPath();
            if (!new File(str2).exists())
              break label852;
          }
        }
        str3 = this.c.c(str2.substring(1 + str2.lastIndexOf("/")));
        if (str3 != null);
        try
        {
          PassAddResult localPassAddResult = this.d.b(str3, localAlipassOffline1.getUserId());
          if ((localPassAddResult != null) && (localPassAddResult.success))
          {
            new StringBuilder("alipass上传成功，passId: ").append(localPassAddResult.getPassId()).toString();
            localAlipassOffline1.setStatus(2);
            localAlipassOffline1.setPassId(localPassAddResult.getPassId());
            boolean bool2 = this.b.a(localAlipassOffline1);
            StringBuilder localStringBuilder2 = new StringBuilder("alipass:");
            if (!bool2)
              break label858;
            str5 = "更新离线数据状态成功";
            localStringBuilder2.append(str5).toString();
            i = j;
            l1 = l2;
          }
          else
          {
            if ((localPassAddResult == null) || (localPassAddResult.success) || ("1511".equals(localPassAddResult.resultCode)))
              break label866;
            new StringBuilder("alipass:服务器返回失败，上传失败，删除本地数据，ResultCode=").append(localPassAddResult.resultCode).toString();
            localAlipassOffline1.setStatus(4);
            boolean bool1 = this.b.a(localAlipassOffline1);
            StringBuilder localStringBuilder1 = new StringBuilder("alipass:");
            if (!bool1)
              break label877;
            str4 = "更新离线数据状态成功";
            localStringBuilder1.append(str4).toString();
            break label866;
            localAlipassOffline1.setStatus(4);
            this.b.a(localAlipassOffline1);
            new StringBuilder("上传失败，文件不存在，文件路径：").append(localAlipassOffline1.getPassPath()).toString();
            i = j;
            l1 = l2;
          }
        }
        catch (RpcException localRpcException)
        {
          new StringBuilder("rpc异常，上传失败，code=").append(localRpcException.getCode()).toString();
          i = j;
          l1 = l2;
        }
        catch (SQLException localSQLException1)
        {
          i = j;
          l1 = l2;
        }
        catch (IllegalStateException localIllegalStateException2)
        {
          i = j;
          l1 = l2;
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
      {
        int j;
        long l2;
        continue;
        label852: String str3 = null;
        continue;
        label858: String str5 = "更新离线数据状态失败";
        continue;
        label866: int i = j;
        long l1 = l2;
        continue;
        label877: String str4 = "更新离线数据状态失败";
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.f
 * JD-Core Version:    0.6.2
 */