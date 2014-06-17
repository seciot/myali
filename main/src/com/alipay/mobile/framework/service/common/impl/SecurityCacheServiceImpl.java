package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.DiskCacheService;
import com.alipay.mobile.framework.service.common.GenericMemCacheService;
import com.alipay.mobile.framework.service.common.SecurityCacheService;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSecurityEncryptor;

public class SecurityCacheServiceImpl extends SecurityCacheService
{
  private final String a = "SecurityCacheServiceImpl";
  private DiskCacheService b = (DiskCacheService)this.d.findServiceByInterface(DiskCacheService.class.getName());
  private GenericMemCacheService c = (GenericMemCacheService)this.d.findServiceByInterface(GenericMemCacheService.class.getName());
  private MicroApplicationContext d = AlipayApplication.getInstance().getMicroApplicationContext();
  private boolean e = true;
  private boolean f = true;
  private boolean g = true;
  private int h = 2592000;

  private byte[] a(String paramString1, String paramString2)
  {
    while (true)
    {
      try
      {
        this.b.open();
        byte[] arrayOfByte1 = this.b.get(paramString1, paramString2);
        AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
        boolean bool = this.e;
        if ((bool) && (localAlipayApplication != null) && (arrayOfByte1 != null))
        {
          try
          {
            String str = TaobaoSecurityEncryptor.decrypt(localAlipayApplication, new String(arrayOfByte1));
            if (!StringUtils.isEmpty(str))
            {
              arrayOfByte1 = str.getBytes();
              new StringBuilder("decrypt result: ").append(arrayOfByte1).toString();
              arrayOfByte2 = arrayOfByte1;
              if (arrayOfByte2 == null)
                break label158;
              return arrayOfByte2;
            }
            arrayOfByte2 = null;
            continue;
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
          }
        }
        else
        {
          arrayOfByte2 = arrayOfByte1;
          continue;
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return null;
      }
      finally
      {
        this.b.close();
      }
      label158: byte[] arrayOfByte2 = null;
    }
  }

  public <T> T get(String paramString1, String paramString2, TypeReference<T> paramTypeReference)
  {
    try
    {
      if (this.f)
      {
        Object localObject2 = this.c.get(paramString1, paramString2);
        if (localObject2 != null)
          return localObject2;
      }
      if (this.g)
      {
        byte[] arrayOfByte = a(paramString1, paramString2);
        if (arrayOfByte != null)
        {
          Object localObject1 = JSON.parseObject(new String(arrayOfByte), paramTypeReference, new Feature[0]);
          return localObject1;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public <T> T get(String paramString1, String paramString2, Class<T> paramClass)
  {
    byte[] arrayOfByte;
    try
    {
      if (this.f)
      {
        Object localObject2 = this.c.get(paramString1, paramString2);
        if ((localObject2 != null) && (paramClass.isInstance(localObject2)))
          return localObject2;
      }
      if (this.g)
      {
        arrayOfByte = a(paramString1, paramString2);
        if (arrayOfByte != null)
        {
          if (paramClass.equals([B.class))
            break label108;
          String str = new String(arrayOfByte);
          if (!paramClass.equals(String.class))
          {
            Object localObject1 = JSON.parseObject(str, paramClass);
            return localObject1;
          }
          return str;
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      arrayOfByte = null;
    }
    label108: return arrayOfByte;
  }

  public byte[] getBytes(String paramString1, String paramString2)
  {
    return (byte[])get(paramString1, paramString2, [B.class);
  }

  public String getString(String paramString1, String paramString2)
  {
    return (String)get(paramString1, paramString2, String.class);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void remove(String paramString)
  {
    if (this.f)
      this.c.remove(paramString);
    if (this.g)
      this.b.remove(paramString);
  }

  public void set(String paramString1, String paramString2, Object paramObject)
  {
    set(paramString1, null, paramString2, paramObject, System.currentTimeMillis(), this.h, "txt");
  }

  // ERROR //
  public void set(String paramString1, String paramString2, String paramString3, Object paramObject, long paramLong1, long paramLong2, String paramString4)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokestatic 93	com/alipay/mobile/common/utils/StringUtils:isEmpty	(Ljava/lang/String;)Z
    //   4: ifne +8 -> 12
    //   7: aload 4
    //   9: ifnonnull +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 30	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:f	Z
    //   17: ifeq +15 -> 32
    //   20: aload_0
    //   21: getfield 67	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:c	Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;
    //   24: aload_1
    //   25: aload_2
    //   26: aload_3
    //   27: aload 4
    //   29: invokevirtual 175	com/alipay/mobile/framework/service/common/GenericMemCacheService:put	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    //   32: aload 4
    //   34: instanceof 78
    //   37: ifne +139 -> 176
    //   40: aload 4
    //   42: invokestatic 179	com/alibaba/fastjson/JSON:toJSONString	(Ljava/lang/Object;)Ljava/lang/String;
    //   45: astore 14
    //   47: aload_0
    //   48: getfield 32	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:g	Z
    //   51: ifeq +205 -> 256
    //   54: aload 14
    //   56: invokevirtual 97	java/lang/String:getBytes	()[B
    //   59: astore 15
    //   61: aload_0
    //   62: getfield 63	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:b	Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    //   65: invokevirtual 73	com/alipay/mobile/framework/service/common/DiskCacheService:open	()V
    //   68: iconst_1
    //   69: istore 11
    //   71: invokestatic 41	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   74: astore 20
    //   76: aload_0
    //   77: getfield 28	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:e	Z
    //   80: ifeq +56 -> 136
    //   83: aload 20
    //   85: ifnull +51 -> 136
    //   88: aload 15
    //   90: ifnull +46 -> 136
    //   93: aload 20
    //   95: aload 15
    //   97: invokestatic 183	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:encrypt	(Landroid/content/ContextWrapper;[B)[B
    //   100: astore 15
    //   102: aload 15
    //   104: ifnull +32 -> 136
    //   107: new 99	java/lang/StringBuilder
    //   110: dup
    //   111: ldc 185
    //   113: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   116: aload 15
    //   118: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   121: ldc 187
    //   123: invokevirtual 190	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload 15
    //   128: arraylength
    //   129: invokevirtual 193	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   132: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: pop
    //   136: aload 15
    //   138: astore 19
    //   140: aload 19
    //   142: ifnull +21 -> 163
    //   145: aload_0
    //   146: getfield 63	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:b	Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    //   149: aload_1
    //   150: aload_2
    //   151: aload_3
    //   152: aload 19
    //   154: lload 5
    //   156: lload 7
    //   158: aload 9
    //   160: invokevirtual 196	com/alipay/mobile/framework/service/common/DiskCacheService:put	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJJLjava/lang/String;)V
    //   163: iload 11
    //   165: ifeq -153 -> 12
    //   168: aload_0
    //   169: getfield 63	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:b	Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    //   172: invokevirtual 114	com/alipay/mobile/framework/service/common/DiskCacheService:close	()V
    //   175: return
    //   176: aload 4
    //   178: checkcast 78	java/lang/String
    //   181: astore 14
    //   183: goto -136 -> 47
    //   186: astore 16
    //   188: aload 15
    //   190: astore 17
    //   192: aload 16
    //   194: invokevirtual 117	java/lang/Exception:printStackTrace	()V
    //   197: aload 17
    //   199: astore 19
    //   201: goto -61 -> 140
    //   204: astore 12
    //   206: iconst_0
    //   207: istore 13
    //   209: iload 13
    //   211: ifeq -199 -> 12
    //   214: aload_0
    //   215: getfield 63	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:b	Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    //   218: invokevirtual 114	com/alipay/mobile/framework/service/common/DiskCacheService:close	()V
    //   221: return
    //   222: astore 10
    //   224: iconst_0
    //   225: istore 11
    //   227: iload 11
    //   229: ifeq +10 -> 239
    //   232: aload_0
    //   233: getfield 63	com/alipay/mobile/framework/service/common/impl/SecurityCacheServiceImpl:b	Lcom/alipay/mobile/framework/service/common/DiskCacheService;
    //   236: invokevirtual 114	com/alipay/mobile/framework/service/common/DiskCacheService:close	()V
    //   239: aload 10
    //   241: athrow
    //   242: astore 10
    //   244: goto -17 -> 227
    //   247: astore 18
    //   249: iload 11
    //   251: istore 13
    //   253: goto -44 -> 209
    //   256: iconst_0
    //   257: istore 11
    //   259: goto -96 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   71	83	186	java/lang/Exception
    //   93	102	186	java/lang/Exception
    //   107	136	186	java/lang/Exception
    //   13	32	204	java/lang/Exception
    //   32	47	204	java/lang/Exception
    //   47	68	204	java/lang/Exception
    //   176	183	204	java/lang/Exception
    //   13	32	222	finally
    //   32	47	222	finally
    //   47	68	222	finally
    //   176	183	222	finally
    //   71	83	242	finally
    //   93	102	242	finally
    //   107	136	242	finally
    //   145	163	242	finally
    //   192	197	242	finally
    //   145	163	247	java/lang/Exception
    //   192	197	247	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.SecurityCacheServiceImpl
 * JD-Core Version:    0.6.2
 */