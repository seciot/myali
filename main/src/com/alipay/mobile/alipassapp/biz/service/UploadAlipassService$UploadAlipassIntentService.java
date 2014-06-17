package com.alipay.mobile.alipassapp.biz.service;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
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

public class UploadAlipassService$UploadAlipassIntentService extends IntentService
{
  private com.alipay.mobile.alipassapp.biz.a.a a = null;
  private com.alipay.mobile.alipassapp.biz.common.a b;
  private com.alipay.mobile.alipassapp.biz.a c;
  private MicroApplicationContext d;
  private int e;

  public UploadAlipassService$UploadAlipassIntentService()
  {
    super("UploadAlipassIntentService");
    UploadAlipassService.a();
  }

  private int a(Object paramObject)
  {
    try
    {
      if ((paramObject instanceof AlipassListCache))
      {
        AlipassListCache localAlipassListCache = (AlipassListCache)paramObject;
        DeletePassResult localDeletePassResult2 = this.c.a(localAlipassListCache.getPassId(), false);
        if (((localDeletePassResult2 != null) && (localDeletePassResult2.success)) || ((!localDeletePassResult2.success) && ((StringUtils.equals(localDeletePassResult2.resultCode, "1501")) || (StringUtils.equals(localDeletePassResult2.resultCode, "1502")))))
        {
          localAlipassListCache.setStatus(4);
          boolean bool3 = this.a.a(localAlipassListCache);
          UploadAlipassService.a();
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
        this.b.d(localAlipassOffline.getPassPath().substring(1 + localAlipassOffline.getPassPath().lastIndexOf("/")));
        if (localAlipassOffline.getPassId() != null)
        {
          DeletePassResult localDeletePassResult1 = this.c.a(localAlipassOffline.getPassId(), false);
          if ((localDeletePassResult1 != null) && (localDeletePassResult1.success))
          {
            localAlipassOffline.setStatus(4);
            boolean bool2 = this.a.a(localAlipassOffline);
            UploadAlipassService.a();
            StringBuilder localStringBuilder2 = new StringBuilder("alipass离线删除成功，");
            if (!bool2)
              break label401;
            str2 = "更新状态成功";
            localStringBuilder2.append(str2).append("; AlipassOffline is ").append(localAlipassOffline.toString()).toString();
          }
          return localAlipassOffline.getId();
        }
        localAlipassOffline.setStatus(4);
        boolean bool1 = this.a.a(localAlipassOffline);
        UploadAlipassService.a();
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
      LogCatLog.v(UploadAlipassService.a(), localRpcException.getMessage());
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
        Object localObject2 = this.a.a(paramString, j, paramClass);
        localObject1 = localObject2;
        if (localObject1 != null)
        {
          if (!a(paramString))
            UploadAlipassService.a();
        }
        else
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
    if (this.d == null)
      return false;
    AuthService localAuthService = (AuthService)this.d.getExtServiceByInterface(AuthService.class.getName());
    return (localAuthService != null) && (localAuthService.getUserInfo() != null) && (localAuthService.getUserInfo().getUserId() != null) && (localAuthService.getUserInfo().getUserId().equals(paramString));
  }

  public void onDestroy()
  {
    UploadAlipassService.a();
    if (this.a != null)
    {
      this.a.a();
      this.a = null;
    }
    super.onDestroy();
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      Bundle localBundle = paramIntent.getExtras();
      if (localBundle == null)
        continue;
      String str1 = localBundle.getString("userId");
      if (str1 == null)
        continue;
      if (this.a == null)
        this.a = new com.alipay.mobile.alipassapp.biz.a.a.a(this);
      if (this.d == null)
        this.d = AlipayApplication.getInstance().getMicroApplicationContext();
      if (this.b == null)
        this.b = new com.alipay.mobile.alipassapp.biz.common.a(this);
      if (this.c == null)
        this.c = new com.alipay.mobile.alipassapp.biz.c.a(this.d);
      this.e = localBundle.getInt("action", 0);
      if (this.e == 0);
      try
      {
        Thread.sleep(localBundle.getInt("delaytime", 0));
        int k;
        if (this.d != null)
        {
          AuthService localAuthService = (AuthService)this.d.getExtServiceByInterface(AuthService.class.getName());
          if ((localAuthService != null) && (localAuthService.isLogin()) && (localAuthService.getUserInfo() != null))
          {
            k = 1;
            if (k != 0)
            {
              UploadAlipassService.a();
              ((d)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(d.class.getName())).a(localBundle.getBoolean("support_interval", false));
            }
            if ((this.e == 0) || (this.e == 1))
            {
              UploadAlipassService.a();
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
              AlipassOffline localAlipassOffline2 = this.a.a(str1, l1);
              localAlipassOffline1 = localAlipassOffline2;
              if (localAlipassOffline1 != null)
              {
                l2 = localAlipassOffline1.getTimestamp();
                if (!a(str1))
                {
                  UploadAlipassService.a();
                  new StringBuilder("alipass:上传失败，不合法用户，文件路径：").append(localAlipassOffline1.getPassPath()).toString();
                }
              }
              else
              {
                UploadAlipassService.a();
                if ((this.e != 0) && (this.e != 2))
                  break;
                UploadAlipassService.a();
                a(str1, AlipassListCache.class);
                UploadAlipassService.a();
                UploadAlipassService.a();
                a(str1, AlipassOffline.class);
                UploadAlipassService.a();
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
              UploadAlipassService.a();
              new StringBuilder("alipass开始上传：").append(localAlipassOffline1.toString()).toString();
              str2 = localAlipassOffline1.getPassPath();
              if (!new File(str2).exists())
                break label843;
            }
          }
          str3 = this.b.c(str2.substring(1 + str2.lastIndexOf("/")));
          if (str3 != null);
          try
          {
            PassAddResult localPassAddResult = this.c.b(str3, localAlipassOffline1.getUserId());
            if ((localPassAddResult != null) && (localPassAddResult.success))
            {
              UploadAlipassService.a();
              new StringBuilder("alipass上传成功，passId: ").append(localPassAddResult.getPassId()).toString();
              localAlipassOffline1.setStatus(2);
              localAlipassOffline1.setPassId(localPassAddResult.getPassId());
              boolean bool2 = this.a.a(localAlipassOffline1);
              UploadAlipassService.a();
              StringBuilder localStringBuilder2 = new StringBuilder("alipass:");
              if (!bool2)
                break label849;
              str5 = "更新离线数据状态成功";
              localStringBuilder2.append(str5).toString();
              i = j;
              l1 = l2;
            }
            else
            {
              if ((localPassAddResult == null) || (localPassAddResult.success) || ("1511".equals(localPassAddResult.resultCode)))
                break label857;
              UploadAlipassService.a();
              new StringBuilder("alipass:服务器返回失败，上传失败，删除本地数据，ResultCode=").append(localPassAddResult.resultCode).toString();
              localAlipassOffline1.setStatus(4);
              boolean bool1 = this.a.a(localAlipassOffline1);
              UploadAlipassService.a();
              StringBuilder localStringBuilder1 = new StringBuilder("alipass:");
              if (!bool1)
                break label868;
              str4 = "更新离线数据状态成功";
              localStringBuilder1.append(str4).toString();
              break label857;
              localAlipassOffline1.setStatus(4);
              this.a.a(localAlipassOffline1);
              UploadAlipassService.a();
              new StringBuilder("上传失败，文件不存在，文件路径：").append(localAlipassOffline1.getPassPath()).toString();
              i = j;
              l1 = l2;
            }
          }
          catch (RpcException localRpcException)
          {
            UploadAlipassService.a();
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
          label843: String str3 = null;
          continue;
          label849: String str5 = "更新离线数据状态失败";
          continue;
          label857: int i = j;
          long l1 = l2;
          continue;
          label868: String str4 = "更新离线数据状态失败";
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.UploadAlipassService.UploadAlipassIntentService
 * JD-Core Version:    0.6.2
 */