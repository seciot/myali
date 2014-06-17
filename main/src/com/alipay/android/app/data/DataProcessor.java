package com.alipay.android.app.data;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.PayEngine;
import com.alipay.android.app.exception.UnZipException;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.FrameUtils;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.FrameData;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import com.alipay.android.lib.plusin.protocol.RequestWrapper;
import com.alipay.android.lib.plusin.ui.WindowData;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;
import java.util.Calendar;
import java.util.LinkedList;
import java.util.Queue;
import org.json.JSONArray;
import org.json.JSONObject;

public class DataProcessor
  implements DataSourceObserver
{
  private BizData a;
  private String b;
  private long c;
  private RequestWrapper d;
  private c e;
  private Queue f;
  private c g;
  private long h;
  private int i;
  private String j = "";
  private String k;
  private String l;
  private boolean m = false;
  private boolean n;
  private ProtocolType o;
  private Object p = new Object();
  private boolean q = false;
  private boolean r = false;
  private boolean s = true;
  private boolean t = false;

  public DataProcessor(BizData paramBizData)
  {
    this.a = paramBizData;
    this.e = c.a;
    this.f = new LinkedList();
    this.f.add(this.e);
    this.d = new RequestWrapper(paramBizData.k());
    paramBizData.l().a(this);
    this.h = 0L;
    this.i = 0;
  }

  public static void a()
  {
  }

  private void a(Exception paramException)
  {
    int i1;
    int i2;
    if (this.a.l().a() == null)
    {
      i1 = 1;
      if ((this.o != ProtocolType.a) || (i1 != 0))
        break label52;
      i2 = 1;
    }
    while (true)
    {
      this.a.i().a(this, paramException, i2);
      return;
      i1 = 0;
      break;
      label52: ProtocolType localProtocolType1 = this.o;
      ProtocolType localProtocolType2 = ProtocolType.b;
      i2 = 0;
      if (localProtocolType1 == localProtocolType2)
      {
        i2 = 0;
        if (i1 == 0)
          i2 = 4;
      }
    }
  }

  private boolean a(c paramc)
  {
    boolean bool = true;
    while (true)
    {
      try
      {
        if (paramc == c.g)
        {
          this.e = c.g;
          this.g = c.g;
          this.f.clear();
          this.f.add(c.g);
          this.a.e();
          return bool;
        }
        if (paramc == c.c)
        {
          this.e = c.c;
          this.g = c.c;
          this.f.clear();
          this.f.add(c.c);
          this.a.e();
          continue;
        }
      }
      finally
      {
      }
      if (((this.n) || (this.g != paramc)) && (!this.f.contains(paramc)) && (!this.f.contains(c.f)))
      {
        this.g = paramc;
        this.f.add(paramc);
        this.a.e();
      }
      else
      {
        bool = false;
      }
    }
  }

  private boolean l()
  {
    if (this.m);
    Object localObject;
    int i1;
    do
    {
      do
      {
        return true;
        localObject = this.a.l().a();
      }
      while ((localObject != null) && (((FrameData)localObject).i().g()));
      this.m = false;
      this.n = false;
      i1 = 0;
      if (this.f.size() > 0)
        this.e = ((c)this.f.peek());
    }
    while (this.e == c.c);
    if (this.e == c.g)
      return false;
    if (this.e == c.f)
      return false;
    p();
    Context localContext = GlobalContext.a().b();
    Request localRequest = this.a.g().a();
    if (localRequest == null)
    {
      JSONObject localJSONObject2 = this.a.g().d();
      localRequest = FrameUtils.a(this.a.k(), this.b, localJSONObject2, this.s);
    }
    this.o = localRequest.d();
    this.a.g().f();
    int i2;
    try
    {
      FrameData localFrameData = this.d.a(localContext, localRequest);
      localObject = localFrameData;
      if (localObject != null)
      {
        if ((localObject != null) && ((localObject instanceof WindowData)));
        switch (((WindowData)localObject).c())
        {
        case -9:
        case -8:
        case -7:
        case -6:
        case -5:
        case -4:
        case -3:
        case -2:
        case -1:
        case 0:
        case 3:
        default:
          i2 = 0;
          this.m = ((FrameData)localObject).i().g();
          if ((i2 != 0) || (this.m))
          {
            bool = true;
            this.n = bool;
            this.h = ((FrameData)localObject).i().f();
            this.i = ((FrameData)localObject).j();
            this.a.l().a((FrameData)localObject);
          }
          break;
        case -10:
        case 1:
        case 2:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        }
      }
    }
    catch (UnZipException localUnZipException)
    {
      try
      {
        while (true)
        {
          JSONObject localJSONObject1 = ((FrameData)localObject).k();
          if (localJSONObject1 == null)
            break;
          JSONArray localJSONArray = localJSONObject1.optJSONArray("global_functions");
          if (localJSONArray == null)
            break;
          for (int i3 = 0; i3 < localJSONArray.length(); i3++)
            this.a.g().a(localJSONArray.getJSONObject(i3).optString("script"));
          localUnZipException = localUnZipException;
          this.s = false;
          Response localResponse = this.a.g().e();
          if (localResponse != null)
          {
            localResponse.b();
            continue;
            i2 = 1;
          }
        }
        boolean bool = false;
      }
      catch (Exception localException)
      {
        LogUtils.a(localException);
      }
    }
    while (true)
    {
      if (this.n)
      {
        p();
        if ((this.m) && ((!this.t) || (TextUtils.isEmpty(this.j))))
        {
          this.j = "";
          this.j = ((FrameData)localObject).i().h();
          this.k = ((FrameData)localObject).i().i();
        }
        if (i2 != 0)
          return false;
        return this.m;
      }
      i1 = i2;
      break;
      i2 = i1;
    }
  }

  private boolean m()
  {
    try
    {
      boolean bool = this.a.l().b();
      if (bool)
        this.a.l().e();
      return bool;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    return true;
  }

  private boolean n()
  {
    try
    {
      boolean bool = this.a.l().c();
      return bool;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    return true;
  }

  private boolean o()
  {
    try
    {
      boolean bool = this.a.l().d();
      if (bool)
        this.a.l().e();
      return bool;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    return true;
  }

  private void p()
  {
    long l1 = Calendar.getInstance().getTimeInMillis();
    long l2;
    if (this.h == 0L)
      l2 = 0L;
    while (true)
    {
      if ((l2 > 0L) && (this.i > 0) && (this.i - l2 > 0L));
      try
      {
        Thread.sleep(this.i - l2);
        return;
        l2 = l1 - this.h;
      }
      catch (InterruptedException localInterruptedException)
      {
        LogUtils.a(localInterruptedException);
      }
    }
  }

  public final void a(FrameData paramFrameData)
  {
    if ((paramFrameData instanceof WindowData))
    {
      WindowData localWindowData = (WindowData)paramFrameData;
      if (localWindowData != null)
        this.l = localWindowData.a();
      this.a.i().a(this, localWindowData);
    }
  }

  public final void a(String paramString, long paramLong)
  {
    this.b = paramString;
    this.c = paramLong;
  }

  protected final boolean a(Request paramRequest)
  {
    this.a.g().a(paramRequest);
    return a(c.a);
  }

  public final boolean a(String paramString1, String paramString2)
  {
    try
    {
      this.a.l().e();
      String str1 = "resultStatus={" + paramString1 + "}";
      String str2 = str1 + ";";
      this.j = (str2 + "result=" + paramString2);
      this.t = true;
      label92: return a(c.c);
    }
    catch (Exception localException)
    {
      break label92;
    }
  }

  public final String b()
  {
    if (TextUtils.isEmpty(this.j))
      this.j = PayEngine.a(GlobalContext.a().c().n(), "6001", "");
    return this.j;
  }

  public final String c()
  {
    return this.k;
  }

  public final long d()
  {
    return this.c;
  }

  // ERROR //
  public final boolean e()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: iload_1
    //   3: ifne +208 -> 211
    //   6: aload_0
    //   7: getfield 70	com/alipay/android/app/data/DataProcessor:f	Ljava/util/Queue;
    //   10: invokeinterface 341 1 0
    //   15: ifne +196 -> 211
    //   18: aload_0
    //   19: invokespecial 162	com/alipay/android/app/data/DataProcessor:p	()V
    //   22: aload_0
    //   23: aload_0
    //   24: getfield 70	com/alipay/android/app/data/DataProcessor:f	Ljava/util/Queue;
    //   27: invokeinterface 344 1 0
    //   32: checkcast 61	com/alipay/android/app/data/c
    //   35: putfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   38: getstatic 349	com/alipay/android/app/data/d:a	[I
    //   41: aload_0
    //   42: getfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   45: invokevirtual 352	com/alipay/android/app/data/c:ordinal	()I
    //   48: iaload
    //   49: tableswitch	default:+333 -> 382, 1:+338->387, 2:+43->92, 3:+51->100, 4:+59->108, 5:+67->116, 6:+75->124, 7:+113->162
    //   93: invokespecial 354	com/alipay/android/app/data/DataProcessor:l	()Z
    //   96: istore_1
    //   97: goto -95 -> 2
    //   100: aload_0
    //   101: invokespecial 356	com/alipay/android/app/data/DataProcessor:m	()Z
    //   104: istore_1
    //   105: goto -103 -> 2
    //   108: aload_0
    //   109: invokespecial 358	com/alipay/android/app/data/DataProcessor:n	()Z
    //   112: istore_1
    //   113: goto -111 -> 2
    //   116: aload_0
    //   117: invokespecial 360	com/alipay/android/app/data/DataProcessor:o	()Z
    //   120: istore_1
    //   121: goto -119 -> 2
    //   124: aload_0
    //   125: getfield 59	com/alipay/android/app/data/DataProcessor:a	Lcom/alipay/android/app/data/BizData;
    //   128: invokevirtual 173	com/alipay/android/app/data/BizData:g	()Lcom/alipay/android/app/data/ValidatedFrameData;
    //   131: invokevirtual 361	com/alipay/android/app/data/ValidatedFrameData:b	()V
    //   134: aload_0
    //   135: getfield 59	com/alipay/android/app/data/DataProcessor:a	Lcom/alipay/android/app/data/BizData;
    //   138: invokevirtual 91	com/alipay/android/app/data/BizData:l	()Lcom/alipay/android/app/data/DataSource;
    //   141: invokevirtual 362	com/alipay/android/app/data/DataSource:f	()V
    //   144: aload_0
    //   145: getfield 70	com/alipay/android/app/data/DataProcessor:f	Ljava/util/Queue;
    //   148: getstatic 63	com/alipay/android/app/data/c:a	Lcom/alipay/android/app/data/c;
    //   151: invokeinterface 76 2 0
    //   156: pop
    //   157: iconst_0
    //   158: istore_1
    //   159: goto -157 -> 2
    //   162: aload_0
    //   163: getfield 288	com/alipay/android/app/data/DataProcessor:l	Ljava/lang/String;
    //   166: invokestatic 253	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   169: ifeq +10 -> 179
    //   172: aload_0
    //   173: ldc_w 364
    //   176: putfield 288	com/alipay/android/app/data/DataProcessor:l	Ljava/lang/String;
    //   179: aload_0
    //   180: getfield 57	com/alipay/android/app/data/DataProcessor:m	Z
    //   183: ifne +13 -> 196
    //   186: invokestatic 369	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   189: aload_0
    //   190: getfield 288	com/alipay/android/app/data/DataProcessor:l	Ljava/lang/String;
    //   193: invokevirtual 370	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/String;)V
    //   196: aload_0
    //   197: getfield 59	com/alipay/android/app/data/DataProcessor:a	Lcom/alipay/android/app/data/BizData;
    //   200: invokevirtual 91	com/alipay/android/app/data/BizData:l	()Lcom/alipay/android/app/data/DataSource;
    //   203: invokevirtual 263	com/alipay/android/app/data/DataSource:e	()V
    //   206: iconst_1
    //   207: istore_1
    //   208: goto -206 -> 2
    //   211: aload_0
    //   212: aconst_null
    //   213: putfield 124	com/alipay/android/app/data/DataProcessor:g	Lcom/alipay/android/app/data/c;
    //   216: aload_0
    //   217: aconst_null
    //   218: putfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   221: iload_1
    //   222: ireturn
    //   223: astore 5
    //   225: aload_0
    //   226: invokestatic 167	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   229: invokevirtual 324	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   232: invokeinterface 328 1 0
    //   237: ldc_w 372
    //   240: ldc 43
    //   242: invokestatic 335	com/alipay/android/app/PayEngine:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   245: putfield 45	com/alipay/android/app/data/DataProcessor:j	Ljava/lang/String;
    //   248: aload_0
    //   249: aload 5
    //   251: invokespecial 374	com/alipay/android/app/data/DataProcessor:a	(Ljava/lang/Exception;)V
    //   254: aload_0
    //   255: aconst_null
    //   256: putfield 124	com/alipay/android/app/data/DataProcessor:g	Lcom/alipay/android/app/data/c;
    //   259: aload_0
    //   260: aconst_null
    //   261: putfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   264: iconst_0
    //   265: ireturn
    //   266: astore 4
    //   268: aload_0
    //   269: invokestatic 167	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   272: invokevirtual 324	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   275: invokeinterface 376 1 0
    //   280: ldc_w 330
    //   283: ldc 43
    //   285: invokestatic 335	com/alipay/android/app/PayEngine:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   288: putfield 45	com/alipay/android/app/data/DataProcessor:j	Ljava/lang/String;
    //   291: aload_0
    //   292: aload 4
    //   294: invokespecial 374	com/alipay/android/app/data/DataProcessor:a	(Ljava/lang/Exception;)V
    //   297: aload_0
    //   298: aconst_null
    //   299: putfield 124	com/alipay/android/app/data/DataProcessor:g	Lcom/alipay/android/app/data/c;
    //   302: aload_0
    //   303: aconst_null
    //   304: putfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   307: iconst_0
    //   308: ireturn
    //   309: astore_3
    //   310: aload_3
    //   311: invokestatic 247	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   314: invokestatic 369	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   317: aload_3
    //   318: ldc_w 378
    //   321: invokevirtual 381	com/alipay/android/app/monitor/MonitorThread:b	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   324: aload_0
    //   325: invokestatic 167	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   328: invokevirtual 324	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   331: invokeinterface 383 1 0
    //   336: ldc_w 330
    //   339: ldc 43
    //   341: invokestatic 335	com/alipay/android/app/PayEngine:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   344: putfield 45	com/alipay/android/app/data/DataProcessor:j	Ljava/lang/String;
    //   347: aload_0
    //   348: aload_3
    //   349: invokespecial 374	com/alipay/android/app/data/DataProcessor:a	(Ljava/lang/Exception;)V
    //   352: aload_0
    //   353: aconst_null
    //   354: putfield 124	com/alipay/android/app/data/DataProcessor:g	Lcom/alipay/android/app/data/c;
    //   357: aload_0
    //   358: aconst_null
    //   359: putfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   362: iconst_0
    //   363: ireturn
    //   364: astore_2
    //   365: aload_0
    //   366: aconst_null
    //   367: putfield 124	com/alipay/android/app/data/DataProcessor:g	Lcom/alipay/android/app/data/c;
    //   370: aload_0
    //   371: aconst_null
    //   372: putfield 65	com/alipay/android/app/data/DataProcessor:e	Lcom/alipay/android/app/data/c;
    //   375: aload_2
    //   376: athrow
    //   377: astore 6
    //   379: goto -183 -> 196
    //   382: iconst_1
    //   383: istore_1
    //   384: goto -382 -> 2
    //   387: iconst_0
    //   388: istore_1
    //   389: goto -387 -> 2
    //
    // Exception table:
    //   from	to	target	type
    //   6	92	223	com/alipay/android/app/exception/NetErrorException
    //   92	97	223	com/alipay/android/app/exception/NetErrorException
    //   100	105	223	com/alipay/android/app/exception/NetErrorException
    //   108	113	223	com/alipay/android/app/exception/NetErrorException
    //   116	121	223	com/alipay/android/app/exception/NetErrorException
    //   124	157	223	com/alipay/android/app/exception/NetErrorException
    //   162	179	223	com/alipay/android/app/exception/NetErrorException
    //   179	196	223	com/alipay/android/app/exception/NetErrorException
    //   196	206	223	com/alipay/android/app/exception/NetErrorException
    //   6	92	266	com/alipay/android/app/exception/FailOperatingException
    //   92	97	266	com/alipay/android/app/exception/FailOperatingException
    //   100	105	266	com/alipay/android/app/exception/FailOperatingException
    //   108	113	266	com/alipay/android/app/exception/FailOperatingException
    //   116	121	266	com/alipay/android/app/exception/FailOperatingException
    //   124	157	266	com/alipay/android/app/exception/FailOperatingException
    //   162	179	266	com/alipay/android/app/exception/FailOperatingException
    //   179	196	266	com/alipay/android/app/exception/FailOperatingException
    //   196	206	266	com/alipay/android/app/exception/FailOperatingException
    //   6	92	309	java/lang/Exception
    //   92	97	309	java/lang/Exception
    //   100	105	309	java/lang/Exception
    //   108	113	309	java/lang/Exception
    //   116	121	309	java/lang/Exception
    //   124	157	309	java/lang/Exception
    //   196	206	309	java/lang/Exception
    //   6	92	364	finally
    //   92	97	364	finally
    //   100	105	364	finally
    //   108	113	364	finally
    //   116	121	364	finally
    //   124	157	364	finally
    //   162	179	364	finally
    //   179	196	364	finally
    //   196	206	364	finally
    //   225	254	364	finally
    //   268	297	364	finally
    //   310	352	364	finally
    //   162	179	377	java/lang/Exception
    //   179	196	377	java/lang/Exception
  }

  public final boolean f()
  {
    return a(c.a);
  }

  public final boolean g()
  {
    return a(c.b);
  }

  public final boolean h()
  {
    return a(c.e);
  }

  public final boolean i()
  {
    return a(c.d);
  }

  public final boolean j()
  {
    try
    {
      this.a.l().e();
      label10: return a(c.c);
    }
    catch (Exception localException)
    {
      break label10;
    }
  }

  public final boolean k()
  {
    return a(c.g);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.DataProcessor
 * JD-Core Version:    0.6.2
 */