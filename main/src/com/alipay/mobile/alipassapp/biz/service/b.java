package com.alipay.mobile.alipassapp.biz.service;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import com.alibaba.fastjson.JSON;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdReq;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.alipassapp.biz.bean.GetDynamicIdReqExt;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.otp.OtpManager;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class b extends CreateDynamicCodeService
{
  private static final String a = b.class.getSimpleName();
  private Handler b;
  private String c;
  private HashMap<String, Integer> d = new HashMap();
  private HashMap<Object, Runnable> e = new HashMap();

  private static String a()
  {
    try
    {
      GetDynamicIdReq localGetDynamicIdReq = new GetDynamicIdReq();
      localGetDynamicIdReq.type = "bar_code";
      localGetDynamicIdReq.extInfos = JSON.toJSONString(new GetDynamicIdReqExt("alipass"));
      GetDynamicIdRes localGetDynamicIdRes = ((SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class)).getDynamicId(localGetDynamicIdReq);
      if ((localGetDynamicIdRes != null) && (localGetDynamicIdRes.success))
      {
        String str = localGetDynamicIdRes.dynamicId;
        return str;
      }
    }
    catch (RpcException localRpcException)
    {
      return null;
    }
    return null;
  }

  private static String a(String paramString)
  {
    int i = 0;
    int[] arrayOfInt1 = new int[paramString.length()];
    for (int j = 0; j < paramString.length(); j++)
      arrayOfInt1[j] = Integer.parseInt(paramString.substring(j, j + 1));
    int[] arrayOfInt2 = new int[6];
    int[] arrayOfInt3 = new int[10];
    int[] arrayOfInt4 = new int[10];
    System.arraycopy(arrayOfInt1, 2, arrayOfInt3, 0, 10);
    System.arraycopy(arrayOfInt1, 12, arrayOfInt2, 0, 6);
    while (i <= 9)
    {
      arrayOfInt4[i] = ((107 * arrayOfInt3[i] + arrayOfInt2[(i % 6)]) % 10);
      i++;
    }
    String str = "29" + a(arrayOfInt4) + a(arrayOfInt2);
    new StringBuilder("条码 加密前=").append(paramString).append("   加密后=").toString();
    return str;
  }

  private static String a(int[] paramArrayOfInt)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
      localStringBuffer.append(paramArrayOfInt[j]);
    return localStringBuffer.toString();
  }

  private static UserInfo b()
  {
    try
    {
      UserInfo localUserInfo = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getLastLoginedUserInfo();
      return localUserInfo;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String getAltText(Object paramObject)
  {
    if (this.e.get(paramObject) != null)
      return ((c)this.e.get(paramObject)).d();
    return "";
  }

  public Bitmap getBitmap(Object paramObject)
  {
    Bitmap localBitmap;
    if (this.e.get(paramObject) == null)
      localBitmap = null;
    do
    {
      return localBitmap;
      localBitmap = ((c)this.e.get(paramObject)).c();
    }
    while ((localBitmap == null) || (!localBitmap.isRecycled()));
    return null;
  }

  public String getDynamicCode()
  {
    Object localObject = null;
    OtpManager localOtpManager = (OtpManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(OtpManager.class.getName());
    String str1 = localOtpManager.getOtpNum();
    String str2;
    if ((str1 != null) && (!"".equals(str1)))
    {
      new StringBuilder("获取otp动态数据 dynamicNum=").append(str1).toString();
      if (b() == null)
      {
        if (StringUtils.isBlank((String)localObject))
          localObject = a();
        return localObject;
      }
      String str3 = localOtpManager.getIndex(b().getUserId());
      if ((str3 != null) && (!"".equals(str3)))
      {
        new StringBuilder("获取otp动态数据 index=").append(str3).toString();
        Object[] arrayOfObject1 = new Object[1];
        arrayOfObject1[0] = Long.valueOf(str3);
        String str4 = String.format("%010d", arrayOfObject1);
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = Long.valueOf(str1);
        String str5 = String.format("%06d", arrayOfObject2);
        str2 = a("29" + str4 + str5);
      }
    }
    while (true)
    {
      new StringBuilder("获取otp动态数据 返回数据：").append(str2).toString();
      localObject = str2;
      break;
      str2 = null;
      continue;
      str2 = null;
    }
  }

  public String getDynamicCodeWithPassId()
  {
    String str = getDynamicCode();
    if ((!StringUtils.isEmpty(this.c)) && (!StringUtils.isEmpty(str)))
      return str + this.c;
    return null;
  }

  public void init(Context paramContext, Handler paramHandler, int paramInt)
  {
    if ((paramHandler != null) && (paramHandler.getLooper() != Looper.getMainLooper()))
      throw new RuntimeException("Handler必须在主线程中实例化");
    this.b = paramHandler;
    this.d.clear();
    switch (paramInt)
    {
    case 6:
    default:
      return;
    case 1:
      this.d.put("dbarcode", Integer.valueOf(1));
      return;
    case 2:
      this.d.put("dqrcode", Integer.valueOf(2));
      return;
    case 4:
      this.d.put("dwave", Integer.valueOf(4));
      return;
    case 3:
      this.d.put("dbarcode", Integer.valueOf(1));
      this.d.put("dqrcode", Integer.valueOf(2));
      return;
    case 5:
      this.d.put("dbarcode", Integer.valueOf(1));
      this.d.put("dwave", Integer.valueOf(4));
      return;
    case 7:
    }
    this.d.put("dbarcode", Integer.valueOf(1));
    this.d.put("dqrcode", Integer.valueOf(2));
    this.d.put("dwave", Integer.valueOf(4));
  }

  public void onDestroy()
  {
    Iterator localIterator = this.e.values().iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).e();
    this.e.clear();
  }

  public void onPause()
  {
    Iterator localIterator = this.e.values().iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).a();
  }

  public void onRefresh()
  {
    Iterator localIterator = this.e.values().iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).f();
  }

  public void onResume()
  {
    Iterator localIterator = this.e.values().iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).b();
  }

  public void setHandler(Handler paramHandler)
  {
    if ((paramHandler != null) && (paramHandler.getLooper() != Looper.getMainLooper()))
      throw new RuntimeException("Handler必须在主线程中实例化");
    this.b = paramHandler;
  }

  public void setPassId(String paramString)
  {
    this.c = paramString;
  }

  public void startGetDynamicCode(Object paramObject)
  {
    if (this.e.get(paramObject) != null)
      return;
    c localc = new c(this);
    localc.a(paramObject);
    this.e.put(paramObject, localc);
    new Thread(localc).start();
  }

  public void update(String paramString1, Object paramObject, String paramString2)
  {
    c localc = (c)this.e.get(paramObject);
    if (localc == null)
      return;
    localc.a(paramString1);
    localc.b(paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.b
 * JD-Core Version:    0.6.2
 */