package com.alipay.mobile.common.ui.contacts.util;

import android.app.Activity;
import android.os.Handler;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobileprod.core.model.BaseRespVO;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSecurityEncryptor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.reflect.Type;

public abstract class RpcRequest<Req, Res>
{
  public static final String CACHE_DIR = "rpc_cache";
  private static String e = RpcRequest.class.getName();
  private String a;
  private boolean b;
  private Activity c;
  private Handler d = new Handler();

  public RpcRequest(Activity paramActivity)
  {
    this.c = paramActivity;
  }

  private static String a(String paramString)
  {
    try
    {
      FileInputStream localFileInputStream = new FileInputStream(new File(new File(AlipayApplication.getInstance().getCacheDir(), "rpc_cache"), paramString));
      byte[] arrayOfByte = new byte[localFileInputStream.available()];
      localFileInputStream.read(arrayOfByte);
      localFileInputStream.close();
      String str1 = new String(arrayOfByte);
      String str2 = TaobaoSecurityEncryptor.decrypt(AlipayApplication.getInstance(), str1);
      return str2;
    }
    catch (Exception localException)
    {
      new StringBuilder("readFile failed: ").append(localException.toString()).toString();
    }
    return null;
  }

  private void a(Req paramReq)
  {
    onPreExecute();
    Object localObject = null;
    try
    {
      localObject = onRpcRequest(paramReq);
      onPostExecute();
      if ((localObject != null) && ((localObject instanceof BaseRespVO)))
        if (((BaseRespVO)localObject).getResultStatus() == 100)
        {
          i = 1;
          if (i == 0)
            break label212;
          if (!TextUtils.isEmpty(this.a))
          {
            str1 = JSON.toJSONString(localObject);
            str2 = this.a;
            if (TextUtils.isEmpty(this.a));
          }
        }
    }
    catch (RpcException localRpcException)
    {
      try
      {
        while (true)
        {
          String str1;
          String str2;
          File localFile = new File(AlipayApplication.getInstance().getCacheDir(), "rpc_cache");
          if (!localFile.exists())
            localFile.mkdir();
          FileOutputStream localFileOutputStream = new FileOutputStream(new File(localFile, str2));
          localFileOutputStream.write(TaobaoSecurityEncryptor.encrypt(AlipayApplication.getInstance(), str1).getBytes());
          localFileOutputStream.close();
          onSuccess(localObject);
          return;
          localRpcException = localRpcException;
          onPostExecute();
          onRpcException(localRpcException);
          continue;
          i = 0;
        }
        int i = 0;
      }
      catch (Exception localException)
      {
        while (true)
          new StringBuilder("File write failed: ").append(localException.toString()).toString();
      }
      label212: onFail(localObject);
    }
  }

  private void b(String paramString)
  {
    if (this.c.isFinishing());
    do
    {
      return;
      if ((this.c instanceof BaseActivity))
      {
        ((BaseActivity)this.c).alert("", paramString, this.c.getString(R.string.confirm), new RpcRequest.4(this), null, null);
        return;
      }
    }
    while (!(this.c instanceof BaseFragmentActivity));
    ((BaseFragmentActivity)this.c).alert("", paramString, this.c.getString(R.string.confirm), new RpcRequest.5(this), null, null);
  }

  public void enableCache(String paramString)
  {
    this.a = paramString;
  }

  public void executeBackground(Req paramReq)
  {
    this.b = true;
    a(paramReq);
  }

  public void executeForeground(Req paramReq)
  {
    this.b = false;
    a(paramReq);
  }

  public Res loadCache(Req paramReq)
  {
    Type localType = ((java.lang.reflect.ParameterizedType)getClass().getGenericSuperclass()).getActualTypeArguments()[1];
    String str = a(this.a);
    if (TextUtils.isEmpty(str))
      return null;
    return JSON.parseObject(str, localType, new Feature[0]);
  }

  public void onFail(Res paramRes)
  {
    new StringBuilder("rpc onFail ").append(paramRes).toString();
    if (paramRes == null);
    String str;
    do
    {
      return;
      str = ((BaseRespVO)paramRes).getMemo();
    }
    while (TextUtils.isEmpty(str));
    this.d.post(new RpcRequest.1(this, str));
  }

  public void onPostExecute()
  {
    if (this.b)
      return;
    this.d.post(new RpcRequest.3(this));
  }

  public void onPreExecute()
  {
    if (this.b)
      return;
    this.d.post(new RpcRequest.2(this));
  }

  public void onRpcException(RpcException paramRpcException)
  {
    new StringBuilder("onRpcException ").append(paramRpcException).toString();
    if (paramRpcException.getCode() == 4)
    {
      b(AlipayApplication.getInstance().getString(R.string.network_error_wait_retry));
      return;
    }
    if ((paramRpcException.getCode() == 7) || (paramRpcException.getCode() == 5))
    {
      b(AlipayApplication.getInstance().getString(R.string.network_error_check_network));
      return;
    }
    b(AlipayApplication.getInstance().getString(R.string.network_error_check_network));
  }

  public abstract Res onRpcRequest(Req paramReq);

  public abstract void onSuccess(Res paramRes);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.RpcRequest
 * JD-Core Version:    0.6.2
 */