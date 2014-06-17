package com.alipay.mobile.security.accountmanager.AccountInfo.biz.impl;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alipay.kabaoprod.biz.financial.account.api.SecurityQrCodeManager;
import com.alipay.kabaoprod.biz.financial.account.result.SecurityAccountQrCodeInfoResult;
import com.alipay.kabaoprod.core.model.model.SecurityQrCodeInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.CacheManagerService;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode;
import com.alipay.mobile.security.accountmanager.AccountInfo.biz.SecurityAccountQrCode.BitmapListener;
import java.util.Date;

public class SecurityAccountQrCodeImpl extends SecurityAccountQrCode
{
  private static long e = 31536000000L;
  private static String f = "qrCode";
  private CacheManagerService a;
  private ImageLoaderService b;
  private SecurityAccountQrCodeInfoResult c;
  private SecurityQrCodeShowResult d;

  public SecurityQrCodeShowResult findQrCode(String paramString)
  {
    SecurityQrCodeShowResult localSecurityQrCodeShowResult = getCacheQrCodeData(paramString);
    if (localSecurityQrCodeShowResult == null)
    {
      putCacheQrCodeData(paramString);
      localSecurityQrCodeShowResult = getCacheQrCodeData(paramString);
    }
    return localSecurityQrCodeShowResult;
  }

  // ERROR //
  protected byte[] getByteArrByUrl(String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +15 -> 16
    //   4: ldc 82
    //   6: aload_1
    //   7: invokevirtual 88	java/lang/String:trim	()Ljava/lang/String;
    //   10: invokevirtual 92	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   13: ifeq +5 -> 18
    //   16: aconst_null
    //   17: areturn
    //   18: new 94	java/io/BufferedInputStream
    //   21: dup
    //   22: new 96	java/net/URL
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 98	java/net/URL:<init>	(Ljava/lang/String;)V
    //   30: invokevirtual 102	java/net/URL:openStream	()Ljava/io/InputStream;
    //   33: invokespecial 105	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   36: astore_2
    //   37: new 107	java/io/ByteArrayOutputStream
    //   40: dup
    //   41: sipush 20480
    //   44: invokespecial 110	java/io/ByteArrayOutputStream:<init>	(I)V
    //   47: astore_3
    //   48: sipush 5120
    //   51: newarray byte
    //   53: astore 11
    //   55: aload_2
    //   56: aload 11
    //   58: invokevirtual 116	java/io/InputStream:read	([B)I
    //   61: istore 12
    //   63: iload 12
    //   65: iconst_m1
    //   66: if_icmpeq +70 -> 136
    //   69: aload_3
    //   70: aload 11
    //   72: iconst_0
    //   73: iload 12
    //   75: invokevirtual 120	java/io/ByteArrayOutputStream:write	([BII)V
    //   78: goto -23 -> 55
    //   81: astore 7
    //   83: new 122	java/lang/StringBuilder
    //   86: dup
    //   87: ldc 124
    //   89: invokespecial 125	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   92: aload 7
    //   94: invokevirtual 128	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   97: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: ldc 134
    //   102: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: pop
    //   109: aload_2
    //   110: ifnull +7 -> 117
    //   113: aload_2
    //   114: invokevirtual 140	java/io/InputStream:close	()V
    //   117: aload_3
    //   118: ifnull -102 -> 16
    //   121: aload_3
    //   122: invokevirtual 141	java/io/ByteArrayOutputStream:close	()V
    //   125: aconst_null
    //   126: areturn
    //   127: astore 9
    //   129: aload 9
    //   131: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   134: aconst_null
    //   135: areturn
    //   136: aload_3
    //   137: invokevirtual 148	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   140: astore 13
    //   142: aload_2
    //   143: invokevirtual 140	java/io/InputStream:close	()V
    //   146: aload_3
    //   147: invokevirtual 141	java/io/ByteArrayOutputStream:close	()V
    //   150: aload 13
    //   152: areturn
    //   153: astore 15
    //   155: aload 15
    //   157: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   160: aload 13
    //   162: areturn
    //   163: astore 14
    //   165: aload 14
    //   167: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   170: goto -24 -> 146
    //   173: astore 10
    //   175: aload 10
    //   177: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   180: goto -63 -> 117
    //   183: astore 17
    //   185: aconst_null
    //   186: astore_2
    //   187: aconst_null
    //   188: astore_3
    //   189: aload 17
    //   191: astore 4
    //   193: aload_2
    //   194: ifnull +7 -> 201
    //   197: aload_2
    //   198: invokevirtual 140	java/io/InputStream:close	()V
    //   201: aload_3
    //   202: ifnull +7 -> 209
    //   205: aload_3
    //   206: invokevirtual 141	java/io/ByteArrayOutputStream:close	()V
    //   209: aload 4
    //   211: athrow
    //   212: astore 6
    //   214: aload 6
    //   216: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   219: goto -18 -> 201
    //   222: astore 5
    //   224: aload 5
    //   226: invokevirtual 144	java/io/IOException:printStackTrace	()V
    //   229: goto -20 -> 209
    //   232: astore 16
    //   234: aload 16
    //   236: astore 4
    //   238: aconst_null
    //   239: astore_3
    //   240: goto -47 -> 193
    //   243: astore 4
    //   245: goto -52 -> 193
    //   248: astore 7
    //   250: aconst_null
    //   251: astore_2
    //   252: aconst_null
    //   253: astore_3
    //   254: goto -171 -> 83
    //   257: astore 7
    //   259: aconst_null
    //   260: astore_3
    //   261: goto -178 -> 83
    //
    // Exception table:
    //   from	to	target	type
    //   48	55	81	java/lang/Exception
    //   55	63	81	java/lang/Exception
    //   69	78	81	java/lang/Exception
    //   136	142	81	java/lang/Exception
    //   121	125	127	java/io/IOException
    //   146	150	153	java/io/IOException
    //   142	146	163	java/io/IOException
    //   113	117	173	java/io/IOException
    //   18	37	183	finally
    //   197	201	212	java/io/IOException
    //   205	209	222	java/io/IOException
    //   37	48	232	finally
    //   48	55	243	finally
    //   55	63	243	finally
    //   69	78	243	finally
    //   83	109	243	finally
    //   136	142	243	finally
    //   18	37	248	java/lang/Exception
    //   37	48	257	java/lang/Exception
  }

  public SecurityQrCodeShowResult getCacheQrCodeData(String paramString)
  {
    if (this.a == null)
      this.a = ((CacheManagerService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(CacheManagerService.class.getName()));
    try
    {
      Object localObject = this.a.getValue(paramString, "accountQrCode");
      if (localObject != null)
      {
        if ((localObject instanceof SecurityQrCodeShowResult))
          return (SecurityQrCodeShowResult)localObject;
        SecurityQrCodeShowResult localSecurityQrCodeShowResult = (SecurityQrCodeShowResult)JSON.parseObject(new String((byte[])localObject), SecurityQrCodeShowResult.class);
        return localSecurityQrCodeShowResult;
      }
    }
    catch (Throwable localThrowable)
    {
      new StringBuilder("{[info=getCacheQrCodeData], [msg=").append(localThrowable.getMessage()).append("]}").toString();
      return null;
    }
    return null;
  }

  public SecurityQrCodeShowResult getCacheQrCodeData(String paramString, SecurityAccountQrCode.BitmapListener paramBitmapListener)
  {
    return null;
  }

  public SecurityAccountQrCodeInfoResult getQrCodeDataByRpc()
  {
    SecurityAccountQrCodeInfoResult localSecurityAccountQrCodeInfoResult = ((SecurityQrCodeManager)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SecurityQrCodeManager.class)).getAccountQrCodeInfo();
    if ((localSecurityAccountQrCodeInfoResult != null) && (localSecurityAccountQrCodeInfoResult.isSuccess()))
      return localSecurityAccountQrCodeInfoResult;
    return null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = ((CacheManagerService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(CacheManagerService.class.getName()));
    this.b = ((ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName()));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void putCacheQrCodeData(String paramString)
  {
    if (this.a == null)
      this.a = ((CacheManagerService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(CacheManagerService.class.getName()));
    if (this.b == null)
      this.b = ((ImageLoaderService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(ImageLoaderService.class.getName()));
    this.c = getQrCodeDataByRpc();
    byte[] arrayOfByte1;
    if ((this.c != null) && (this.c.getQrCodInfo() != null) && (this.c.getQrCodInfo().getQrcodeImageUrl() != null))
    {
      arrayOfByte1 = getByteArrByUrl(this.c.getQrCodInfo().getQrcodeImageUrl());
      if (arrayOfByte1 != null)
        break label118;
    }
    label280: label284: 
    while (true)
    {
      return;
      label118: this.d = new SecurityQrCodeShowResult();
      this.d.setAccountQrCodeInfoResult(this.c);
      this.d.setQrCodeImgByteArr(arrayOfByte1);
      SecurityQrCodeShowResult localSecurityQrCodeShowResult1 = this.d;
      byte[] arrayOfByte2;
      SecurityQrCodeShowResult localSecurityQrCodeShowResult2;
      Date localDate;
      if (localSecurityQrCodeShowResult1 == null)
      {
        arrayOfByte2 = null;
        localSecurityQrCodeShowResult2 = getCacheQrCodeData(paramString);
        localDate = new Date();
        if (localSecurityQrCodeShowResult2 == null)
          break label280;
      }
      for (SecurityAccountQrCodeInfoResult localSecurityAccountQrCodeInfoResult = localSecurityQrCodeShowResult2.getAccountQrCodeInfoResult(); ; localSecurityAccountQrCodeInfoResult = null)
      {
        if ((localSecurityAccountQrCodeInfoResult != null) && ((this.c == null) || (this.c.getQrCodInfo() == null) || (localSecurityAccountQrCodeInfoResult.getQrCodInfo() == null) || (localSecurityAccountQrCodeInfoResult.getQrCodInfo().getQrcodeImageUrl() == this.c.getQrCodInfo().getQrcodeImageUrl())))
          break label284;
        this.a.put2Cache(paramString, null, "accountQrCode", this.d, arrayOfByte2, localDate.getTime(), e, f);
        return;
        arrayOfByte2 = JSON.toJSONString(localSecurityQrCodeShowResult1).getBytes();
        break;
      }
    }
  }

  public void saveQrImgToDCIM(BaseActivity paramBaseActivity, Bitmap paramBitmap)
  {
    new Thread(new a(this, paramBitmap, paramBaseActivity)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.biz.impl.SecurityAccountQrCodeImpl
 * JD-Core Version:    0.6.2
 */