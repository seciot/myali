package com.alipay.mobile.alipassapp.biz.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListPreloadReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResultConvertor;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PreLoadPassListResult;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
{
  private static final Object d = new Object();
  private com.alipay.mobile.alipassapp.biz.a.a a;
  private com.alipay.mobile.alipassapp.biz.a b;
  private Context c;

  public d(MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = new com.alipay.mobile.alipassapp.biz.a.a.a(paramMicroApplicationContext.getApplicationContext());
    this.b = new com.alipay.mobile.alipassapp.biz.c.a(paramMicroApplicationContext);
    this.c = paramMicroApplicationContext.getApplicationContext();
  }

  public d(ActivityApplication paramActivityApplication, Context paramContext)
  {
    this.a = new com.alipay.mobile.alipassapp.biz.a.a.a(paramActivityApplication, paramContext);
    this.b = new com.alipay.mobile.alipassapp.biz.c.a(paramActivityApplication);
    this.c = paramContext;
  }

  private void a(String paramString1, boolean paramBoolean, com.alipay.mobile.alipassapp.biz.model.a parama, PassListResult paramPassListResult, String paramString2)
  {
    if (paramBoolean);
    try
    {
      if (this.a != null)
      {
        this.a.a(paramPassListResult, paramString1);
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        List localList1 = this.a.c();
        List localList2 = this.a.d();
        List localList3 = paramPassListResult.getPassTimelineList();
        if ((localList3 != null) && (localList3.size() > 0))
        {
          Iterator localIterator1 = localList3.iterator();
          while (localIterator1.hasNext())
          {
            PassTimelineInfo localPassTimelineInfo1 = (PassTimelineInfo)localIterator1.next();
            List localList4 = localPassTimelineInfo1.getPassList();
            if ((localList4 != null) && (localList4.size() != 0))
            {
              PassTimelineInfo localPassTimelineInfo2 = new PassTimelineInfo();
              localPassTimelineInfo2.setPassDate(localPassTimelineInfo1.getPassDate());
              ArrayList localArrayList3 = new ArrayList();
              Iterator localIterator2 = localList4.iterator();
              while (localIterator2.hasNext())
              {
                PassBaseInfo localPassBaseInfo = (PassBaseInfo)localIterator2.next();
                if ((!localList1.contains(localPassBaseInfo.passId)) && (!localList2.contains(localPassBaseInfo.passId)))
                  localArrayList3.add(localPassBaseInfo);
                localArrayList2.add(localPassBaseInfo.passId);
              }
              localPassTimelineInfo2.setPassList(localArrayList3);
              localArrayList1.add(localPassTimelineInfo2);
            }
          }
        }
        this.a.a(localArrayList1, paramString1, paramPassListResult.getHasPast());
        this.a.a(localArrayList2, paramString1);
        this.a.b(localArrayList2, paramString1);
        this.a.a(c(), paramString1, localArrayList2);
        parama.a = c(paramString1);
        parama.a.success = true;
        String str = c() + paramString1;
        if ((str != null) && (paramString2 != null))
          this.c.getSharedPreferences("alipass_setting", 0).edit().putString(str, paramString2).commit();
      }
      else
      {
        parama.a = paramPassListResult;
        return;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
    }
    catch (java.sql.SQLException localSQLException1)
    {
    }
    catch (IllegalStateException localIllegalStateException)
    {
    }
    catch (android.database.SQLException localSQLException)
    {
    }
  }

  private static String c()
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if ((localAuthService != null) && (localAuthService.getUserInfo() != null))
      return localAuthService.getUserInfo().getUserId();
    return null;
  }

  private String e(String paramString)
  {
    if (paramString == null)
      return null;
    return this.c.getSharedPreferences("alipass_setting", 0).getString(paramString, null);
  }

  // ERROR //
  public final com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: getstatic 19	com/alipay/mobile/alipassapp/biz/common/d:d	Ljava/lang/Object;
    //   3: astore_3
    //   4: aload_3
    //   5: monitorenter
    //   6: aconst_null
    //   7: astore 4
    //   9: aload_0
    //   10: getfield 33	com/alipay/mobile/alipassapp/biz/common/d:a	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   13: ifnull +119 -> 132
    //   16: aload_0
    //   17: getfield 33	com/alipay/mobile/alipassapp/biz/common/d:a	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   20: aload_2
    //   21: aload_1
    //   22: invokeinterface 225 3 0
    //   27: istore 11
    //   29: new 227	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult
    //   32: dup
    //   33: invokespecial 228	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:<init>	()V
    //   36: astore 6
    //   38: aload 6
    //   40: iload 11
    //   42: putfield 229	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:success	Z
    //   45: new 155	java/lang/StringBuilder
    //   48: dup
    //   49: ldc 231
    //   51: invokespecial 233	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: iload 11
    //   56: invokevirtual 236	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   59: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: pop
    //   63: aload_3
    //   64: monitorexit
    //   65: aload 6
    //   67: areturn
    //   68: astore 10
    //   70: aload 4
    //   72: astore 6
    //   74: goto -11 -> 63
    //   77: astore 7
    //   79: aload_3
    //   80: monitorexit
    //   81: aload 7
    //   83: athrow
    //   84: astore 9
    //   86: aconst_null
    //   87: astore 6
    //   89: goto -26 -> 63
    //   92: astore 15
    //   94: goto -31 -> 63
    //   97: astore 8
    //   99: aconst_null
    //   100: astore 6
    //   102: goto -39 -> 63
    //   105: astore 14
    //   107: goto -44 -> 63
    //   110: astore 5
    //   112: aconst_null
    //   113: astore 6
    //   115: goto -52 -> 63
    //   118: astore 13
    //   120: goto -57 -> 63
    //   123: astore 12
    //   125: aload 6
    //   127: astore 4
    //   129: goto -59 -> 70
    //   132: iconst_0
    //   133: istore 11
    //   135: goto -106 -> 29
    //
    // Exception table:
    //   from	to	target	type
    //   9	29	68	java/sql/SQLException
    //   29	38	68	java/sql/SQLException
    //   9	29	77	finally
    //   29	38	77	finally
    //   38	63	77	finally
    //   63	65	77	finally
    //   9	29	84	java/lang/NullPointerException
    //   29	38	84	java/lang/NullPointerException
    //   38	63	92	java/lang/NullPointerException
    //   9	29	97	android/database/SQLException
    //   29	38	97	android/database/SQLException
    //   38	63	105	android/database/SQLException
    //   9	29	110	java/lang/IllegalStateException
    //   29	38	110	java/lang/IllegalStateException
    //   38	63	118	java/lang/IllegalStateException
    //   38	63	123	java/sql/SQLException
  }

  public final PassListResult a(String paramString)
  {
    try
    {
      synchronized (d)
      {
        com.alipay.mobile.alipassapp.biz.a.a locala = this.a;
        localObject2 = null;
        if (locala != null)
        {
          PassListResult localPassListResult = this.a.d(paramString);
          localObject2 = localPassListResult;
        }
        return localObject2;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
        localObject2 = null;
    }
    catch (android.database.SQLException localSQLException1)
    {
      while (true)
        localObject2 = null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      while (true)
        localObject2 = null;
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
        Object localObject2 = null;
    }
  }

  // ERROR //
  public final com.alipay.mobile.alipassapp.biz.model.a a(com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq paramPassListReq, boolean paramBoolean)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore_3
    //   2: getstatic 19	com/alipay/mobile/alipassapp/biz/common/d:d	Ljava/lang/Object;
    //   5: astore 5
    //   7: aload 5
    //   9: monitorenter
    //   10: aload_1
    //   11: ifnonnull +8 -> 19
    //   14: aload 5
    //   16: monitorexit
    //   17: aconst_null
    //   18: areturn
    //   19: new 146	com/alipay/mobile/alipassapp/biz/model/a
    //   22: dup
    //   23: aconst_null
    //   24: iconst_2
    //   25: invokespecial 244	com/alipay/mobile/alipassapp/biz/model/a:<init>	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;I)V
    //   28: astore 6
    //   30: aload_1
    //   31: aload_0
    //   32: new 155	java/lang/StringBuilder
    //   35: dup
    //   36: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   39: invokestatic 138	com/alipay/mobile/alipassapp/biz/common/d:c	()Ljava/lang/String;
    //   42: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: aload_1
    //   46: invokevirtual 249	com/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq:getPassCategory	()Ljava/lang/String;
    //   49: invokevirtual 160	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokespecial 251	com/alipay/mobile/alipassapp/biz/common/d:e	(Ljava/lang/String;)Ljava/lang/String;
    //   58: invokevirtual 254	com/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq:setUpdateFlag	(Ljava/lang/String;)V
    //   61: aload_0
    //   62: getfield 39	com/alipay/mobile/alipassapp/biz/common/d:b	Lcom/alipay/mobile/alipassapp/biz/a;
    //   65: aload_1
    //   66: invokeinterface 259 2 0
    //   71: astore 9
    //   73: aload 9
    //   75: ifnull +137 -> 212
    //   78: aload 9
    //   80: getfield 153	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:success	Z
    //   83: ifne +129 -> 212
    //   86: aload 9
    //   88: invokevirtual 262	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getUpdateFlag	()Ljava/lang/String;
    //   91: ifnull +84 -> 175
    //   94: aload 9
    //   96: invokevirtual 262	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getUpdateFlag	()Ljava/lang/String;
    //   99: aload_1
    //   100: invokevirtual 263	com/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq:getUpdateFlag	()Ljava/lang/String;
    //   103: invokevirtual 268	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   106: ifeq +69 -> 175
    //   109: aload_0
    //   110: aload_1
    //   111: invokevirtual 249	com/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq:getPassCategory	()Ljava/lang/String;
    //   114: invokevirtual 144	com/alipay/mobile/alipassapp/biz/common/d:c	(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    //   117: astore 14
    //   119: aload 14
    //   121: aload 9
    //   123: invokevirtual 128	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getHasPast	()I
    //   126: invokevirtual 272	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:setHasPast	(I)V
    //   129: aload_0
    //   130: aload_1
    //   131: invokevirtual 249	com/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq:getPassCategory	()Ljava/lang/String;
    //   134: iload_2
    //   135: aload 6
    //   137: aload 14
    //   139: aload 9
    //   141: invokevirtual 262	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getUpdateFlag	()Ljava/lang/String;
    //   144: invokespecial 274	com/alipay/mobile/alipassapp/biz/common/d:a	(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V
    //   147: aload 9
    //   149: invokevirtual 278	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getPassListPreLoaderInterval	()Ljava/lang/Long;
    //   152: ifnonnull +48 -> 200
    //   155: aload 6
    //   157: lload_3
    //   158: invokevirtual 281	com/alipay/mobile/alipassapp/biz/model/a:a	(J)V
    //   161: aload 5
    //   163: monitorexit
    //   164: aload 6
    //   166: areturn
    //   167: astore 8
    //   169: aload 5
    //   171: monitorexit
    //   172: aload 8
    //   174: athrow
    //   175: aload 6
    //   177: aload 9
    //   179: putfield 149	com/alipay/mobile/alipassapp/biz/model/a:a	Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;
    //   182: goto -35 -> 147
    //   185: astore 7
    //   187: aload 6
    //   189: aload 7
    //   191: putfield 284	com/alipay/mobile/alipassapp/biz/model/a:e	Ljava/lang/Exception;
    //   194: aload 5
    //   196: monitorexit
    //   197: aload 6
    //   199: areturn
    //   200: aload 9
    //   202: invokevirtual 278	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getPassListPreLoaderInterval	()Ljava/lang/Long;
    //   205: invokevirtual 290	java/lang/Long:longValue	()J
    //   208: lstore_3
    //   209: goto -54 -> 155
    //   212: aload 9
    //   214: invokevirtual 278	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getPassListPreLoaderInterval	()Ljava/lang/Long;
    //   217: ifnonnull +34 -> 251
    //   220: lload_3
    //   221: lstore 10
    //   223: aload 6
    //   225: lload 10
    //   227: invokevirtual 281	com/alipay/mobile/alipassapp/biz/model/a:a	(J)V
    //   230: aload_0
    //   231: aload_1
    //   232: invokevirtual 249	com/alipay/kabaoprod/biz/mwallet/pass/request/PassListReq:getPassCategory	()Ljava/lang/String;
    //   235: iload_2
    //   236: aload 6
    //   238: aload 9
    //   240: aload 9
    //   242: invokevirtual 262	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getUpdateFlag	()Ljava/lang/String;
    //   245: invokespecial 274	com/alipay/mobile/alipassapp/biz/common/d:a	(Ljava/lang/String;ZLcom/alipay/mobile/alipassapp/biz/model/a;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult;Ljava/lang/String;)V
    //   248: goto -54 -> 194
    //   251: aload 9
    //   253: invokevirtual 278	com/alipay/kabaoprod/biz/mwallet/pass/result/PassListResult:getPassListPreLoaderInterval	()Ljava/lang/Long;
    //   256: invokevirtual 290	java/lang/Long:longValue	()J
    //   259: lstore 12
    //   261: lload 12
    //   263: lstore 10
    //   265: goto -42 -> 223
    //
    // Exception table:
    //   from	to	target	type
    //   19	30	167	finally
    //   30	73	167	finally
    //   78	147	167	finally
    //   147	155	167	finally
    //   155	161	167	finally
    //   161	164	167	finally
    //   175	182	167	finally
    //   187	194	167	finally
    //   194	197	167	finally
    //   200	209	167	finally
    //   212	220	167	finally
    //   223	248	167	finally
    //   251	261	167	finally
    //   30	73	185	com/alipay/mobile/common/rpc/RpcException
    //   78	147	185	com/alipay/mobile/common/rpc/RpcException
    //   147	155	185	com/alipay/mobile/common/rpc/RpcException
    //   155	161	185	com/alipay/mobile/common/rpc/RpcException
    //   175	182	185	com/alipay/mobile/common/rpc/RpcException
    //   200	209	185	com/alipay/mobile/common/rpc/RpcException
    //   212	220	185	com/alipay/mobile/common/rpc/RpcException
    //   223	248	185	com/alipay/mobile/common/rpc/RpcException
    //   251	261	185	com/alipay/mobile/common/rpc/RpcException
  }

  // ERROR //
  public final Object a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: getstatic 19	com/alipay/mobile/alipassapp/biz/common/d:d	Ljava/lang/Object;
    //   3: astore_3
    //   4: aload_3
    //   5: monitorenter
    //   6: iload_2
    //   7: ifeq +61 -> 68
    //   10: aload_0
    //   11: getfield 33	com/alipay/mobile/alipassapp/biz/common/d:a	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   14: ifnull +216 -> 230
    //   17: aload_0
    //   18: getfield 33	com/alipay/mobile/alipassapp/biz/common/d:a	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   21: aload_1
    //   22: invokeinterface 294 2 0
    //   27: istore 21
    //   29: new 227	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult
    //   32: dup
    //   33: invokespecial 228	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:<init>	()V
    //   36: astore 5
    //   38: aload 5
    //   40: iload 21
    //   42: putfield 229	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:success	Z
    //   45: new 155	java/lang/StringBuilder
    //   48: dup
    //   49: ldc 231
    //   51: invokespecial 233	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   54: iload 21
    //   56: invokevirtual 236	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   59: invokevirtual 163	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: pop
    //   63: aload_3
    //   64: monitorexit
    //   65: aload 5
    //   67: areturn
    //   68: aload_0
    //   69: getfield 39	com/alipay/mobile/alipassapp/biz/common/d:b	Lcom/alipay/mobile/alipassapp/biz/a;
    //   72: aload_1
    //   73: iconst_1
    //   74: invokeinterface 297 3 0
    //   79: astore 11
    //   81: aload 11
    //   83: astore 5
    //   85: aload 5
    //   87: ifnull -24 -> 63
    //   90: aload 5
    //   92: getfield 229	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:success	Z
    //   95: ifeq -32 -> 63
    //   98: aload_0
    //   99: getfield 33	com/alipay/mobile/alipassapp/biz/common/d:a	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   102: aload_1
    //   103: invokeinterface 294 2 0
    //   108: pop
    //   109: goto -46 -> 63
    //   112: astore 10
    //   114: aload_3
    //   115: monitorexit
    //   116: aload 10
    //   118: areturn
    //   119: astore 9
    //   121: aload_3
    //   122: monitorexit
    //   123: aload 9
    //   125: athrow
    //   126: astore 8
    //   128: aconst_null
    //   129: astore 5
    //   131: goto -68 -> 63
    //   134: astore 15
    //   136: goto -73 -> 63
    //   139: astore 7
    //   141: aconst_null
    //   142: astore 5
    //   144: goto -81 -> 63
    //   147: astore 14
    //   149: goto -86 -> 63
    //   152: astore 6
    //   154: aconst_null
    //   155: astore 5
    //   157: goto -94 -> 63
    //   160: astore 13
    //   162: goto -99 -> 63
    //   165: astore 4
    //   167: aconst_null
    //   168: astore 5
    //   170: goto -107 -> 63
    //   173: astore 12
    //   175: goto -112 -> 63
    //   178: astore 20
    //   180: aconst_null
    //   181: astore 5
    //   183: goto -120 -> 63
    //   186: astore 25
    //   188: goto -125 -> 63
    //   191: astore 19
    //   193: aconst_null
    //   194: astore 5
    //   196: goto -133 -> 63
    //   199: astore 24
    //   201: goto -138 -> 63
    //   204: astore 18
    //   206: aconst_null
    //   207: astore 5
    //   209: goto -146 -> 63
    //   212: astore 23
    //   214: goto -151 -> 63
    //   217: astore 17
    //   219: aconst_null
    //   220: astore 5
    //   222: goto -159 -> 63
    //   225: astore 22
    //   227: goto -164 -> 63
    //   230: iconst_0
    //   231: istore 21
    //   233: goto -204 -> 29
    //
    // Exception table:
    //   from	to	target	type
    //   68	81	112	com/alipay/mobile/common/rpc/RpcException
    //   90	109	112	com/alipay/mobile/common/rpc/RpcException
    //   10	29	119	finally
    //   29	38	119	finally
    //   38	63	119	finally
    //   68	81	119	finally
    //   90	109	119	finally
    //   114	116	119	finally
    //   68	81	126	java/lang/NullPointerException
    //   90	109	134	java/lang/NullPointerException
    //   68	81	139	java/lang/IllegalStateException
    //   90	109	147	java/lang/IllegalStateException
    //   68	81	152	android/database/SQLException
    //   90	109	160	android/database/SQLException
    //   68	81	165	java/sql/SQLException
    //   90	109	173	java/sql/SQLException
    //   10	29	178	java/lang/NullPointerException
    //   29	38	178	java/lang/NullPointerException
    //   38	63	186	java/lang/NullPointerException
    //   10	29	191	java/lang/IllegalStateException
    //   29	38	191	java/lang/IllegalStateException
    //   38	63	199	java/lang/IllegalStateException
    //   10	29	204	android/database/SQLException
    //   29	38	204	android/database/SQLException
    //   38	63	212	android/database/SQLException
    //   10	29	217	java/sql/SQLException
    //   29	38	217	java/sql/SQLException
    //   38	63	225	java/sql/SQLException
  }

  public final void a()
  {
    synchronized (d)
    {
      if (this.a != null)
      {
        this.a.a();
        this.a = null;
      }
      return;
    }
  }

  public final PassListResult b(String paramString)
  {
    try
    {
      com.alipay.mobile.alipassapp.biz.a.a locala = this.a;
      Object localObject = null;
      if (locala != null)
      {
        PassListResult localPassListResult = this.a.d(paramString);
        localObject = localPassListResult;
      }
      return localObject;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (android.database.SQLException localSQLException1)
    {
      return null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      return null;
    }
    catch (java.sql.SQLException localSQLException)
    {
    }
    return null;
  }

  public final Long b()
  {
    while (true)
    {
      com.alipay.mobile.alipassapp.biz.model.a locala;
      PreLoadPassListResult localPreLoadPassListResult;
      synchronized (d)
      {
        try
        {
          c("TRAVEL");
          locala = new com.alipay.mobile.alipassapp.biz.model.a(new PassListResult(), 2);
          PassListPreloadReq localPassListPreloadReq = new PassListPreloadReq();
          localPassListPreloadReq.setTravelUpdateFlag(e(c() + "TRAVEL"));
          localPassListPreloadReq.setCouponUpdateFlag(e(c() + "COUPON"));
          localPreLoadPassListResult = this.b.a(localPassListPreloadReq);
          if (StringUtils.equals(localPreLoadPassListResult.getTravelUpdateFlag(), localPassListPreloadReq.getTravelUpdateFlag()))
          {
            a("TRAVEL", true, locala, c("TRAVEL"), localPreLoadPassListResult.getTravelUpdateFlag());
            if (StringUtils.equals(localPreLoadPassListResult.getCouponUpdateFlag(), localPassListPreloadReq.getCouponUpdateFlag()))
            {
              a("COUPON", true, locala, c("COUPON"), localPreLoadPassListResult.getCouponUpdateFlag());
              Long localLong2 = localPreLoadPassListResult.getPassListPreLoaderInterval();
              return localLong2;
            }
          }
          else
          {
            a("TRAVEL", true, locala, PassListResultConvertor.converTravelListFromPreLoadPassList(localPreLoadPassListResult), localPreLoadPassListResult.getTravelUpdateFlag());
            continue;
          }
        }
        catch (RpcException localRpcException)
        {
          Long localLong1 = Long.valueOf(0L);
          return localLong1;
        }
      }
      a("COUPON", true, locala, PassListResultConvertor.converCouponListFromPreLoadPassList(localPreLoadPassListResult), localPreLoadPassListResult.getCouponUpdateFlag());
    }
  }

  public final PassListResult c(String paramString)
  {
    try
    {
      synchronized (d)
      {
        com.alipay.mobile.alipassapp.biz.a.a locala = this.a;
        localObject2 = null;
        if (locala != null)
        {
          PassListResult localPassListResult = this.a.a(paramString);
          localObject2 = localPassListResult;
        }
        return localObject2;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
        localObject2 = null;
    }
    catch (android.database.SQLException localSQLException1)
    {
      while (true)
        localObject2 = null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      while (true)
        localObject2 = null;
    }
    catch (java.sql.SQLException localSQLException)
    {
      while (true)
        Object localObject2 = null;
    }
  }

  public final PassListResult d(String paramString)
  {
    try
    {
      com.alipay.mobile.alipassapp.biz.a.a locala = this.a;
      Object localObject = null;
      if (locala != null)
      {
        PassListResult localPassListResult = this.a.a(paramString);
        localObject = localPassListResult;
      }
      return localObject;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (android.database.SQLException localSQLException1)
    {
      return null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      return null;
    }
    catch (java.sql.SQLException localSQLException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.d
 * JD-Core Version:    0.6.2
 */