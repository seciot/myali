package com.alipay.mobile.common.transport.spdy.internal;

import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import javax.net.ssl.SSLSocket;

public class Platform
{
  private static final Platform a = a();
  private Constructor b;

  // ERROR //
  private static Platform a()
  {
    // Byte code:
    //   0: ldc 24
    //   2: ldc 26
    //   4: iconst_0
    //   5: anewarray 28	java/lang/Class
    //   8: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   11: astore_1
    //   12: ldc 34
    //   14: invokestatic 38	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   17: astore 19
    //   19: aload 19
    //   21: astore 12
    //   23: iconst_1
    //   24: anewarray 28	java/lang/Class
    //   27: astore 13
    //   29: aload 13
    //   31: iconst_0
    //   32: getstatic 44	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   35: aastore
    //   36: aload 12
    //   38: ldc 46
    //   40: aload 13
    //   42: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   45: astore 14
    //   47: aload 12
    //   49: ldc 48
    //   51: iconst_1
    //   52: anewarray 28	java/lang/Class
    //   55: dup
    //   56: iconst_0
    //   57: ldc 50
    //   59: aastore
    //   60: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   63: astore 15
    //   65: new 52	com/alipay/mobile/common/transport/spdy/internal/Platform$Android41
    //   68: dup
    //   69: aload_1
    //   70: aload 12
    //   72: aload 14
    //   74: aload 15
    //   76: aload 12
    //   78: ldc 54
    //   80: iconst_1
    //   81: anewarray 28	java/lang/Class
    //   84: dup
    //   85: iconst_0
    //   86: ldc 56
    //   88: aastore
    //   89: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   92: aload 12
    //   94: ldc 58
    //   96: iconst_0
    //   97: anewarray 28	java/lang/Class
    //   100: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   103: aconst_null
    //   104: invokespecial 61	com/alipay/mobile/common/transport/spdy/internal/Platform$Android41:<init>	(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/spdy/internal/Platform$1;)V
    //   107: astore 16
    //   109: aload 16
    //   111: areturn
    //   112: astore_0
    //   113: new 2	com/alipay/mobile/common/transport/spdy/internal/Platform
    //   116: dup
    //   117: invokespecial 62	com/alipay/mobile/common/transport/spdy/internal/Platform:<init>	()V
    //   120: areturn
    //   121: astore 10
    //   123: ldc 64
    //   125: invokestatic 38	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   128: astore 12
    //   130: goto -107 -> 23
    //   133: astore 17
    //   135: new 66	com/alipay/mobile/common/transport/spdy/internal/Platform$Android23
    //   138: dup
    //   139: aload_1
    //   140: aload 12
    //   142: aload 14
    //   144: aload 15
    //   146: aconst_null
    //   147: invokespecial 69	com/alipay/mobile/common/transport/spdy/internal/Platform$Android23:<init>	(Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/spdy/internal/Platform$1;)V
    //   150: astore 18
    //   152: aload 18
    //   154: areturn
    //   155: astore 11
    //   157: ldc 71
    //   159: invokestatic 38	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   162: astore 5
    //   164: new 73	java/lang/StringBuilder
    //   167: dup
    //   168: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   171: ldc 71
    //   173: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: ldc 80
    //   178: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   184: invokestatic 38	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   187: astore 6
    //   189: new 73	java/lang/StringBuilder
    //   192: dup
    //   193: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   196: ldc 71
    //   198: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: ldc 86
    //   203: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   209: invokestatic 38	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   212: astore 7
    //   214: new 73	java/lang/StringBuilder
    //   217: dup
    //   218: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   221: ldc 71
    //   223: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   226: ldc 88
    //   228: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   231: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   234: invokestatic 38	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   237: astore 8
    //   239: new 90	com/alipay/mobile/common/transport/spdy/internal/Platform$JdkWithJettyNpnPlatform
    //   242: dup
    //   243: aload_1
    //   244: aload 5
    //   246: ldc 92
    //   248: iconst_2
    //   249: anewarray 28	java/lang/Class
    //   252: dup
    //   253: iconst_0
    //   254: ldc 94
    //   256: aastore
    //   257: dup
    //   258: iconst_1
    //   259: aload 6
    //   261: aastore
    //   262: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   265: aload 5
    //   267: ldc 96
    //   269: iconst_1
    //   270: anewarray 28	java/lang/Class
    //   273: dup
    //   274: iconst_0
    //   275: ldc 94
    //   277: aastore
    //   278: invokevirtual 32	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   281: aload 7
    //   283: aload 8
    //   285: invokespecial 99	com/alipay/mobile/common/transport/spdy/internal/Platform$JdkWithJettyNpnPlatform:<init>	(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    //   288: astore 9
    //   290: aload 9
    //   292: areturn
    //   293: astore 4
    //   295: new 101	com/alipay/mobile/common/transport/spdy/internal/Platform$Java6
    //   298: dup
    //   299: aload_1
    //   300: aconst_null
    //   301: invokespecial 104	com/alipay/mobile/common/transport/spdy/internal/Platform$Java6:<init>	(Ljava/lang/reflect/Method;Lcom/alipay/mobile/common/transport/spdy/internal/Platform$1;)V
    //   304: areturn
    //   305: astore_3
    //   306: goto -11 -> 295
    //   309: astore_2
    //   310: goto -153 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   0	12	112	java/lang/NoSuchMethodException
    //   12	19	121	java/lang/ClassNotFoundException
    //   65	109	133	java/lang/NoSuchMethodException
    //   23	65	155	java/lang/ClassNotFoundException
    //   65	109	155	java/lang/ClassNotFoundException
    //   123	130	155	java/lang/ClassNotFoundException
    //   135	152	155	java/lang/ClassNotFoundException
    //   157	290	293	java/lang/ClassNotFoundException
    //   157	290	305	java/lang/NoSuchMethodException
    //   12	19	309	java/lang/NoSuchMethodException
    //   23	65	309	java/lang/NoSuchMethodException
    //   123	130	309	java/lang/NoSuchMethodException
    //   135	152	309	java/lang/NoSuchMethodException
  }

  public static Platform get()
  {
    return a;
  }

  public void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    paramSocket.connect(paramInetSocketAddress, paramInt);
  }

  public void enableTlsExtensions(SSLSocket paramSSLSocket, String paramString)
  {
  }

  public int getMtu(Socket paramSocket)
  {
    return 1400;
  }

  public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
  {
    return null;
  }

  public String getPrefix()
  {
    return "OkHttp";
  }

  public void logW(String paramString)
  {
    System.out.println(paramString);
  }

  public OutputStream newDeflaterOutputStream(OutputStream paramOutputStream, Deflater paramDeflater, boolean paramBoolean)
  {
    try
    {
      Constructor localConstructor = this.b;
      if (localConstructor == null)
      {
        Class[] arrayOfClass = new Class[3];
        arrayOfClass[0] = OutputStream.class;
        arrayOfClass[1] = Deflater.class;
        arrayOfClass[2] = Boolean.TYPE;
        localConstructor = DeflaterOutputStream.class.getConstructor(arrayOfClass);
        this.b = localConstructor;
      }
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = paramOutputStream;
      arrayOfObject[1] = paramDeflater;
      arrayOfObject[2] = Boolean.valueOf(paramBoolean);
      OutputStream localOutputStream = (OutputStream)localConstructor.newInstance(arrayOfObject);
      return localOutputStream;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new UnsupportedOperationException("Cannot SPDY; no SYNC_FLUSH available");
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof RuntimeException));
      for (RuntimeException localRuntimeException = (RuntimeException)localInvocationTargetException.getCause(); ; localRuntimeException = new RuntimeException(localInvocationTargetException.getCause()))
        throw localRuntimeException;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new RuntimeException(localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new AssertionError();
  }

  public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
  {
  }

  public void supportTlsIntolerantServer(SSLSocket paramSSLSocket)
  {
    paramSSLSocket.setEnabledProtocols(new String[] { "SSLv3" });
  }

  public void tagSocket(Socket paramSocket)
  {
  }

  public URI toUriLenient(URL paramURL)
  {
    return paramURL.toURI();
  }

  public void untagSocket(Socket paramSocket)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Platform
 * JD-Core Version:    0.6.2
 */