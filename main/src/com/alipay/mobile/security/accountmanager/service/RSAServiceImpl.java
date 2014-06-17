package com.alipay.mobile.security.accountmanager.service;

import android.os.Bundle;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.security.RSAHelper;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobilegw.biz.shared.processer.getRsaKey.GetRsaKeyService;
import com.alipay.mobilegw.biz.shared.processer.getRsaKey.RSAPKeyResult;

public class RSAServiceImpl extends RSAService
{
  private static String a = null;
  private static String b;
  private long c;

  public String RSAEncrypt(String paramString, boolean paramBoolean)
  {
    try
    {
      getRsaKey();
      new StringBuilder("rsa公钥：").append(a).append(";rsa公钥时间戳：").append(b).toString();
      String str1 = a;
      String str2 = null;
      if (str1 != null)
      {
        if (paramBoolean)
          paramString = paramString + b;
        str2 = RSAHelper.encrypt(paramString, a);
        new StringBuilder("获取rsa公钥成功，进行密码加密 encryptCurrentPwd=").append(str2).toString();
      }
      return str2;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("{[info=RSAEncrypt],[msg=").append(localRpcException.getCode()).append(" ").append(localRpcException.getMessage()).append("]}").toString();
      throw localRpcException;
    }
  }

  public String getRsaKey()
  {
    try
    {
      RSAPKeyResult localRSAPKeyResult = ((GetRsaKeyService)((RpcService)getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(GetRsaKeyService.class)).getRSAKey();
      if (localRSAPKeyResult != null)
      {
        a = localRSAPKeyResult.getRsaPK();
        b = localRSAPKeyResult.getRsaTS();
        long l = System.currentTimeMillis();
        if ((b != null) && (b.length() > 0) && (l.length() > 3))
          this.c = (Long.parseLong(b) - Long.parseLong(l.substring(3)));
        String str = a;
        return str;
      }
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("请求 rsa 服务器失败 ").append(localRpcException.getCode()).append(" ").append(localRpcException.getMessage()).toString();
      throw localRpcException;
    }
    return null;
  }

  public String getRsaTS()
  {
    if (b != null)
      return b;
    getRsaKey();
    return b;
  }

  public long getSafeRSATS()
  {
    if (this.c != 0L)
      return this.c;
    getRsaKey();
    return this.c;
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.service.RSAServiceImpl
 * JD-Core Version:    0.6.2
 */