package com.alipay.mobile.alipassapp.biz.a.a;

import android.content.Context;
import com.alibaba.fastjson.JSON;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.kabaoprod.core.model.model.PassInfo;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import com.alipay.mobile.alipassapp.biz.bean.AlipassDetailCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListStatus;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOffline;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOfflineV2;
import com.alipay.mobile.alipassapp.biz.common.b;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.utils.FileUtils;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.taobao.sso.util.TaobaoSecurityEncryptor;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.dao.Dao.CreateOrUpdateStatus;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.support.DatabaseConnection;
import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class a
  implements com.alipay.mobile.alipassapp.biz.a.a
{
  private static final String a = a.class.getSimpleName();
  private static final Object j = new Object();
  private Context b;
  private ActivityApplication c;
  private com.alipay.mobile.alipassapp.biz.b.a d;
  private Dao<AlipassListCache, Integer> e;
  private Dao<AlipassDetailCache, Integer> f;
  private Dao<AlipassListStatus, Integer> g;
  private Dao<AlipassOffline, Integer> h;
  private Dao<AlipassOfflineV2, Integer> i;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  public a(ActivityApplication paramActivityApplication, Context paramContext)
  {
    this.b = paramContext;
    this.c = paramActivityApplication;
  }

  private static void a(PassInfoResult paramPassInfoResult, String paramString)
  {
    try
    {
      if (ReadSettingServerUrl.isDebug(AlipayApplication.getInstance()))
      {
        paramPassInfoResult.setPassInfo((PassInfo)b.b(paramString, PassInfo.class));
        return;
      }
      paramPassInfoResult.setPassInfo((PassInfo)b.b(TaobaoSecurityEncryptor.decrypt(AlipayApplication.getInstance(), paramString), PassInfo.class));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static void a(AlipassDetailCache paramAlipassDetailCache, PassInfo paramPassInfo)
  {
    try
    {
      if (ReadSettingServerUrl.isDebug(AlipayApplication.getInstance()))
      {
        paramAlipassDetailCache.setPassInfo(JSON.toJSONString(paramPassInfo));
        return;
      }
      paramAlipassDetailCache.setPassInfo(TaobaoSecurityEncryptor.encrypt(AlipayApplication.getInstance(), JSON.toJSONString(paramPassInfo)));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static void b(AlipassOffline paramAlipassOffline)
  {
    if (paramAlipassOffline.getPassPath() == null)
      return;
    try
    {
      FileUtils.delFiles(new File(paramAlipassOffline.getPassPath()));
      FileUtils.delFiles(new File(paramAlipassOffline.getPassPath().substring(0, paramAlipassOffline.getPassPath().lastIndexOf("."))));
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.getMessage();
    }
  }

  private com.alipay.mobile.alipassapp.biz.b.a f()
  {
    if (this.d == null)
      this.d = new com.alipay.mobile.alipassapp.biz.b.a(this.b, this);
    return this.d;
  }

  private Dao<AlipassListCache, Integer> g()
  {
    if (this.e == null)
      this.e = f().a();
    return this.e;
  }

  private Dao<AlipassDetailCache, Integer> h()
  {
    if (this.f == null)
      this.f = f().b();
    return this.f;
  }

  private Dao<AlipassListStatus, Integer> i()
  {
    if (this.g == null)
      this.g = f().c();
    return this.g;
  }

  private Dao<AlipassOffline, Integer> j()
  {
    if (this.h == null)
      this.h = f().d();
    return this.h;
  }

  private String k()
  {
    if (this.c != null);
    for (AuthService localAuthService = (AuthService)this.c.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()); (localAuthService == null) || (localAuthService.getUserInfo() == null); localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()))
      return null;
    return localAuthService.getUserInfo().getUserId();
  }

  public final PassInfoResult a(String paramString1, String paramString2)
  {
    PassInfoResult localPassInfoResult;
    AlipassDetailCache localAlipassDetailCache;
    synchronized (j)
    {
      localPassInfoResult = new PassInfoResult();
      localPassInfoResult.success = false;
      String str = k();
      if ((str == null) || (paramString1 == null))
        return localPassInfoResult;
      List localList = h().queryBuilder().where().eq("userId", str).and().eq("passId", paramString1).query();
      new StringBuilder("cache detail size is ").append(localList.size()).toString();
      if (localList.size() > 0)
      {
        localAlipassDetailCache = (AlipassDetailCache)localList.get(0);
        localAlipassDetailCache.toString();
        if ((localAlipassDetailCache.getGmtModified() != null) && (localAlipassDetailCache.getGmtModified().trim().length() > 0) && (paramString2 != null) && (paramString2.trim().length() > 0))
        {
          long l1 = Long.parseLong(localAlipassDetailCache.getGmtModified());
          long l2 = Long.parseLong(paramString2);
          if (l1 < l2);
        }
      }
    }
    try
    {
      a(localPassInfoResult, localAlipassDetailCache.getPassInfo());
      localPassInfoResult.success = true;
      label218: if (localAlipassDetailCache.getBizType() != null)
        localAlipassDetailCache.getBizType().length();
      return localPassInfoResult;
      localObject2 = finally;
      throw localObject2;
    }
    catch (Exception localException)
    {
      break label218;
    }
  }

  // ERROR //
  public final PassInfoResult a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: getstatic 42	com/alipay/mobile/alipassapp/biz/a/a/a:j	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: aload_1
    //   9: ifnull +11 -> 20
    //   12: aload_2
    //   13: ifnull +7 -> 20
    //   16: aload_3
    //   17: ifnonnull +12 -> 29
    //   20: getstatic 37	com/alipay/mobile/alipassapp/biz/a/a/a:a	Ljava/lang/String;
    //   23: pop
    //   24: aload 4
    //   26: monitorexit
    //   27: aconst_null
    //   28: areturn
    //   29: aload_0
    //   30: invokespecial 195	com/alipay/mobile/alipassapp/biz/a/a/a:h	()Lcom/j256/ormlite/dao/Dao;
    //   33: invokeinterface 201 1 0
    //   38: invokevirtual 207	com/j256/ormlite/stmt/QueryBuilder:where	()Lcom/j256/ormlite/stmt/Where;
    //   41: ldc_w 273
    //   44: aload_1
    //   45: invokevirtual 215	com/j256/ormlite/stmt/Where:eq	(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    //   48: invokevirtual 218	com/j256/ormlite/stmt/Where:and	()Lcom/j256/ormlite/stmt/Where;
    //   51: ldc 209
    //   53: aload_2
    //   54: invokevirtual 215	com/j256/ormlite/stmt/Where:eq	(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    //   57: invokevirtual 218	com/j256/ormlite/stmt/Where:and	()Lcom/j256/ormlite/stmt/Where;
    //   60: ldc_w 275
    //   63: aload_3
    //   64: invokevirtual 215	com/j256/ormlite/stmt/Where:eq	(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    //   67: invokevirtual 224	com/j256/ormlite/stmt/Where:query	()Ljava/util/List;
    //   70: astore 7
    //   72: aload 7
    //   74: invokeinterface 235 1 0
    //   79: ifle +43 -> 122
    //   82: new 72	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult
    //   85: dup
    //   86: invokespecial 187	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:<init>	()V
    //   89: astore 8
    //   91: aload 8
    //   93: aload 7
    //   95: iconst_0
    //   96: invokeinterface 246 2 0
    //   101: checkcast 91	com/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache
    //   104: invokevirtual 265	com/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache:getPassInfo	()Ljava/lang/String;
    //   107: invokestatic 267	com/alipay/mobile/alipassapp/biz/a/a/a:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;Ljava/lang/String;)V
    //   110: aload 8
    //   112: iconst_1
    //   113: putfield 191	com/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult:success	Z
    //   116: aload 4
    //   118: monitorexit
    //   119: aload 8
    //   121: areturn
    //   122: aload 4
    //   124: monitorexit
    //   125: aconst_null
    //   126: areturn
    //   127: astore 5
    //   129: aload 4
    //   131: monitorexit
    //   132: aload 5
    //   134: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   20	27	127	finally
    //   29	119	127	finally
  }

  public final PassListResult a(String paramString)
  {
    long l1;
    PassListResult localPassListResult;
    long l4;
    Map localMap;
    synchronized (j)
    {
      l1 = System.currentTimeMillis();
      localPassListResult = new PassListResult();
      String str = k();
      if ((str == null) || (paramString == null))
      {
        localPassListResult.success = false;
        return localPassListResult;
      }
      long l2 = System.currentTimeMillis();
      List localList1 = g().queryBuilder().where().eq("userId", str).and().eq("bizType", paramString).and().eq("status", Integer.valueOf(0)).query();
      new StringBuilder("cache list size is ").append(localList1.size()).append(",userId=").append(str).append(",bizType=").append(paramString).toString();
      new StringBuilder("queryBuilderTime is ").append(System.currentTimeMillis() - l2).toString();
      long l3 = System.currentTimeMillis();
      List localList2 = i().queryBuilder().where().eq("userId", str).and().eq("bizType", paramString).query();
      if (localList2.size() > 0)
      {
        localPassListResult.setHasPast(((AlipassListStatus)localList2.get(0)).getHasPast());
        new StringBuilder("hasPast value is ").append(localPassListResult.getHasPast()).toString();
        new StringBuilder("listStatusQueryBuilderTime is ").append(System.currentTimeMillis() - l3).toString();
        l4 = System.currentTimeMillis();
        localMap = Collections.synchronizedMap(new LinkedHashMap());
        Iterator localIterator1 = localList1.iterator();
        while (localIterator1.hasNext())
        {
          AlipassListCache localAlipassListCache = (AlipassListCache)localIterator1.next();
          try
          {
            if (!localMap.containsKey(localAlipassListCache.getDate()))
              localMap.put(localAlipassListCache.getDate(), new ArrayList());
            ((List)localMap.get(localAlipassListCache.getDate())).add(b.b(localAlipassListCache.getPassBaseInfo(), PassBaseInfo.class));
          }
          catch (Exception localException)
          {
          }
        }
      }
      localPassListResult.setHasPast(0);
    }
    new StringBuilder("fasejsonTime is ").append(System.currentTimeMillis() - l4).toString();
    long l5 = System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator2 = localMap.keySet().iterator();
    while (localIterator2.hasNext())
    {
      PassTimelineInfo localPassTimelineInfo = new PassTimelineInfo();
      localPassTimelineInfo.setPassDate((String)localIterator2.next());
      localPassTimelineInfo.setPassList((List)localMap.get(localPassTimelineInfo.getPassDate()));
      localArrayList.add(localPassTimelineInfo);
    }
    localPassListResult.setPassTimelineList(localArrayList);
    boolean bool;
    if (localPassListResult.getPassTimelineList().size() != 0)
    {
      bool = true;
      localPassListResult.success = bool;
      if (localPassListResult.getPassTimelineList().size() == 0)
        break label680;
    }
    label680: for (int k = 1; ; k = 0)
    {
      localPassListResult.setHasCurrent(k);
      new StringBuilder("passTimelineListTime is ").append(System.currentTimeMillis() - l5).toString();
      new StringBuilder("queryCacheList finish!!!!! total time is ").append(System.currentTimeMillis() - l1).toString();
      return localPassListResult;
      bool = false;
      break;
    }
  }

  public final AlipassOffline a(String paramString, long paramLong)
  {
    Object localObject1 = j;
    if (paramString == null)
      return null;
    try
    {
      List localList = j().queryBuilder().orderBy("timestamp", false).limit(Long.valueOf(1L)).where().eq("userId", paramString).and().eq("status", Integer.valueOf(1)).and().lt("timestamp", Long.valueOf(paramLong)).query();
      if (localList.size() > 0)
      {
        AlipassOffline localAlipassOffline = (AlipassOffline)localList.get(0);
        return localAlipassOffline;
      }
    }
    finally
    {
      localObject2 = finally;
      throw localObject2;
    }
    return null;
  }

  public final Object a(String paramString, int paramInt, Class<?> paramClass)
  {
    Object localObject1 = j;
    if (paramString == null)
      return null;
    try
    {
      if (AlipassListCache.class.getName().equals(paramClass.getName()))
      {
        List localList2 = g().queryBuilder().orderBy("id", true).limit(Long.valueOf(1L)).where().eq("userId", paramString).and().eq("status", Integer.valueOf(3)).and().gt("id", Integer.valueOf(paramInt)).query();
        if (localList2.size() <= 0)
          break label234;
        Object localObject4 = localList2.get(0);
        return localObject4;
      }
    }
    finally
    {
    }
    if (AlipassOffline.class.getName().equals(paramClass.getName()))
    {
      List localList1 = j().queryBuilder().orderBy("id", true).limit(Long.valueOf(1L)).where().eq("userId", paramString).and().eq("status", Integer.valueOf(3)).and().gt("id", Integer.valueOf(paramInt)).query();
      if (localList1.size() > 0)
      {
        Object localObject3 = localList1.get(0);
        return localObject3;
      }
    }
    label234: return null;
  }

  public final void a()
  {
    if (this.d != null)
    {
      this.d.close();
      this.d = null;
    }
    this.e = null;
    this.f = null;
    this.g = null;
    this.h = null;
    this.i = null;
  }

  public final void a(PassInfoResult paramPassInfoResult, String paramString, int paramInt)
  {
    String str1;
    synchronized (j)
    {
      if ((paramPassInfoResult == null) || (paramPassInfoResult.getPassInfo() == null) || (paramPassInfoResult.getPassInfo().getPassBaseInfo() == null))
        return;
      str1 = k();
      if ((paramPassInfoResult.getPassInfo().getPassBaseInfo().passId == null) || (str1 == null))
        return;
    }
    List localList = h().queryBuilder().where().eq("passId", paramPassInfoResult.getPassInfo().getPassBaseInfo().passId).query();
    String str2 = "";
    if (localList.size() > 0)
      str2 = ((AlipassDetailCache)localList.get(0)).getCustomerId();
    DeleteBuilder localDeleteBuilder = h().deleteBuilder();
    localDeleteBuilder.where().eq("passId", paramPassInfoResult.getPassInfo().getPassBaseInfo().passId).and().eq("userId", str1);
    localDeleteBuilder.delete();
    AlipassDetailCache localAlipassDetailCache = new AlipassDetailCache();
    if ((paramPassInfoResult.getPassInfo().getPassBaseInfo().passId == null) || (paramPassInfoResult.getPassInfo().getPassBaseInfo().gmtModified == null));
    while (true)
    {
      return;
      try
      {
        localAlipassDetailCache.setUserId(str1);
        localAlipassDetailCache.setPassId(paramPassInfoResult.getPassInfo().getPassBaseInfo().passId);
        a(localAlipassDetailCache, paramPassInfoResult.getPassInfo());
        localAlipassDetailCache.setGmtModified(paramPassInfoResult.getPassInfo().getPassBaseInfo().gmtModified);
        if (paramString == null)
          paramString = "";
        localAlipassDetailCache.setBizType(paramString);
        localAlipassDetailCache.setIsClicked(paramInt);
        localAlipassDetailCache.setCustomerId(str2);
        Dao.CreateOrUpdateStatus localCreateOrUpdateStatus = h().createOrUpdate(localAlipassDetailCache);
        localAlipassDetailCache.toString();
        new StringBuilder("NumLinesChanged=").append(localCreateOrUpdateStatus.getNumLinesChanged()).append(", isCreated=").append(localCreateOrUpdateStatus.isCreated()).append(", isUpdated=").append(localCreateOrUpdateStatus.isUpdated()).toString();
      }
      catch (Exception localException)
      {
      }
    }
  }

  public final void a(PassListResult paramPassListResult, String paramString)
  {
    while (true)
    {
      int k;
      int m;
      int n;
      synchronized (j)
      {
        String str = k();
        if ((str == null) || (paramString == null))
          return;
        List localList1 = j().queryBuilder().where().eq("userId", str).and().eq("status", Integer.valueOf(2)).and().eq("bizType", paramString).query();
        if (localList1.size() > 0)
        {
          k = 0;
          if (k < localList1.size())
          {
            DeleteBuilder localDeleteBuilder2 = j().deleteBuilder();
            localDeleteBuilder2.where().eq("id", Integer.valueOf(((AlipassOffline)localList1.get(k)).getId()));
            if (localDeleteBuilder2.delete() <= 0)
              break label483;
            b((AlipassOffline)localList1.get(k));
            break label483;
          }
        }
        List localList2 = j().queryBuilder().where().eq("userId", str).and().eq("status", Integer.valueOf(1)).and().eq("bizType", paramString).query();
        if ((paramPassListResult == null) || (!paramPassListResult.success) || (paramPassListResult.getPassTimelineList() == null))
          break label480;
        List localList3 = paramPassListResult.getPassTimelineList();
        m = 0;
        if (m >= localList3.size())
          break label480;
        List localList4 = ((PassTimelineInfo)localList3.get(m)).getPassList();
        if (localList4 == null)
          break label474;
        n = 0;
        if (n >= localList4.size())
          break label474;
        PassBaseInfo localPassBaseInfo = (PassBaseInfo)localList4.get(n);
        if (localPassBaseInfo != null)
        {
          int i1 = 0;
          if (i1 < localList2.size())
          {
            if (localPassBaseInfo.partnerId.equals(((AlipassOffline)localList2.get(i1)).getPartnerId()))
            {
              boolean bool = localPassBaseInfo.serialNumber.equals(((AlipassOffline)localList2.get(i1)).getSerialNumber());
              if (!bool);
            }
            try
            {
              DeleteBuilder localDeleteBuilder1 = j().deleteBuilder();
              localDeleteBuilder1.where().eq("id", Integer.valueOf(((AlipassOffline)localList2.get(i1)).getId()));
              if (localDeleteBuilder1.delete() > 0)
                b((AlipassOffline)localList2.get(i1));
              i1++;
            }
            catch (SQLException localSQLException)
            {
              localSQLException.getMessage();
              continue;
            }
          }
        }
      }
      n++;
      continue;
      label474: m++;
      continue;
      label480: return;
      label483: k++;
    }
  }

  // ERROR //
  public final void a(String paramString1, String paramString2, List<String> paramList)
  {
    // Byte code:
    //   0: getstatic 42	com/alipay/mobile/alipassapp/biz/a/a/a:j	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: aload_1
    //   9: ifnull +7 -> 16
    //   12: aload_2
    //   13: ifnonnull +11 -> 24
    //   16: getstatic 37	com/alipay/mobile/alipassapp/biz/a/a/a:a	Ljava/lang/String;
    //   19: pop
    //   20: aload 4
    //   22: monitorexit
    //   23: return
    //   24: aload_0
    //   25: invokespecial 195	com/alipay/mobile/alipassapp/biz/a/a/a:h	()Lcom/j256/ormlite/dao/Dao;
    //   28: invokeinterface 201 1 0
    //   33: invokevirtual 207	com/j256/ormlite/stmt/QueryBuilder:where	()Lcom/j256/ormlite/stmt/Where;
    //   36: ldc 209
    //   38: aload_1
    //   39: invokevirtual 215	com/j256/ormlite/stmt/Where:eq	(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    //   42: invokevirtual 218	com/j256/ormlite/stmt/Where:and	()Lcom/j256/ormlite/stmt/Where;
    //   45: ldc_w 275
    //   48: aload_2
    //   49: invokevirtual 215	com/j256/ormlite/stmt/Where:eq	(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;
    //   52: invokevirtual 224	com/j256/ormlite/stmt/Where:query	()Ljava/util/List;
    //   55: astore 7
    //   57: iconst_0
    //   58: istore 8
    //   60: iload 8
    //   62: aload 7
    //   64: invokeinterface 235 1 0
    //   69: if_icmpge +50 -> 119
    //   72: aload_3
    //   73: aload 7
    //   75: iload 8
    //   77: invokeinterface 246 2 0
    //   82: checkcast 91	com/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache
    //   85: invokevirtual 546	com/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache:getPassId	()Ljava/lang/String;
    //   88: invokeinterface 549 2 0
    //   93: ifne +38 -> 131
    //   96: aload_0
    //   97: aload_1
    //   98: aload 7
    //   100: iload 8
    //   102: invokeinterface 246 2 0
    //   107: checkcast 91	com/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache
    //   110: invokevirtual 546	com/alipay/mobile/alipassapp/biz/bean/AlipassDetailCache:getPassId	()Ljava/lang/String;
    //   113: invokevirtual 552	com/alipay/mobile/alipassapp/biz/a/a/a:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   116: goto +15 -> 131
    //   119: aload 4
    //   121: monitorexit
    //   122: return
    //   123: astore 5
    //   125: aload 4
    //   127: monitorexit
    //   128: aload 5
    //   130: athrow
    //   131: iinc 8 1
    //   134: goto -74 -> 60
    //
    // Exception table:
    //   from	to	target	type
    //   16	23	123	finally
    //   24	57	123	finally
    //   60	116	123	finally
    //   119	122	123	finally
  }

  // ERROR //
  public final void a(List<AlipassOffline> paramList)
  {
    // Byte code:
    //   0: getstatic 42	com/alipay/mobile/alipassapp/biz/a/a/a:j	Ljava/lang/Object;
    //   3: astore_2
    //   4: aload_2
    //   5: monitorenter
    //   6: aload_0
    //   7: invokespecial 143	com/alipay/mobile/alipassapp/biz/a/a/a:f	()Lcom/alipay/mobile/alipassapp/biz/b/a;
    //   10: invokevirtual 556	com/alipay/mobile/alipassapp/biz/b/a:getConnectionSource	()Lcom/j256/ormlite/support/ConnectionSource;
    //   13: invokeinterface 562 1 0
    //   18: astore 4
    //   20: aload_0
    //   21: invokespecial 143	com/alipay/mobile/alipassapp/biz/a/a/a:f	()Lcom/alipay/mobile/alipassapp/biz/b/a;
    //   24: invokevirtual 157	com/alipay/mobile/alipassapp/biz/b/a:d	()Lcom/j256/ormlite/dao/Dao;
    //   27: aload 4
    //   29: iconst_0
    //   30: invokeinterface 566 3 0
    //   35: aload 4
    //   37: ldc_w 568
    //   40: invokeinterface 574 2 0
    //   45: astore 5
    //   47: new 576	java/util/concurrent/CopyOnWriteArrayList
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 579	java/util/concurrent/CopyOnWriteArrayList:<init>	(Ljava/util/Collection;)V
    //   55: astore 6
    //   57: aload 6
    //   59: invokevirtual 580	java/util/concurrent/CopyOnWriteArrayList:iterator	()Ljava/util/Iterator;
    //   62: astore 10
    //   64: aload 10
    //   66: invokeinterface 345 1 0
    //   71: ifeq +62 -> 133
    //   74: aload 10
    //   76: invokeinterface 349 1 0
    //   81: checkcast 102	com/alipay/mobile/alipassapp/biz/bean/AlipassOffline
    //   84: astore 11
    //   86: aload_0
    //   87: invokespecial 143	com/alipay/mobile/alipassapp/biz/a/a/a:f	()Lcom/alipay/mobile/alipassapp/biz/b/a;
    //   90: invokevirtual 157	com/alipay/mobile/alipassapp/biz/b/a:d	()Lcom/j256/ormlite/dao/Dao;
    //   93: aload 11
    //   95: invokeinterface 498 2 0
    //   100: pop
    //   101: goto -37 -> 64
    //   104: astore 8
    //   106: aload 4
    //   108: aload 5
    //   110: invokeinterface 584 2 0
    //   115: aload_0
    //   116: invokespecial 143	com/alipay/mobile/alipassapp/biz/a/a/a:f	()Lcom/alipay/mobile/alipassapp/biz/b/a;
    //   119: invokevirtual 157	com/alipay/mobile/alipassapp/biz/b/a:d	()Lcom/j256/ormlite/dao/Dao;
    //   122: aload 4
    //   124: iconst_1
    //   125: invokeinterface 566 3 0
    //   130: aload_2
    //   131: monitorexit
    //   132: return
    //   133: aload 4
    //   135: aload 5
    //   137: invokeinterface 587 2 0
    //   142: aload_0
    //   143: invokespecial 143	com/alipay/mobile/alipassapp/biz/a/a/a:f	()Lcom/alipay/mobile/alipassapp/biz/b/a;
    //   146: invokevirtual 157	com/alipay/mobile/alipassapp/biz/b/a:d	()Lcom/j256/ormlite/dao/Dao;
    //   149: aload 4
    //   151: iconst_1
    //   152: invokeinterface 566 3 0
    //   157: goto -27 -> 130
    //   160: astore_3
    //   161: aload_2
    //   162: monitorexit
    //   163: aload_3
    //   164: athrow
    //   165: astore 7
    //   167: aload_0
    //   168: invokespecial 143	com/alipay/mobile/alipassapp/biz/a/a/a:f	()Lcom/alipay/mobile/alipassapp/biz/b/a;
    //   171: invokevirtual 157	com/alipay/mobile/alipassapp/biz/b/a:d	()Lcom/j256/ormlite/dao/Dao;
    //   174: aload 4
    //   176: iconst_1
    //   177: invokeinterface 566 3 0
    //   182: aload 7
    //   184: athrow
    //   185: astore 9
    //   187: goto -72 -> 115
    //
    // Exception table:
    //   from	to	target	type
    //   57	64	104	java/lang/Exception
    //   64	101	104	java/lang/Exception
    //   133	142	104	java/lang/Exception
    //   6	57	160	finally
    //   115	130	160	finally
    //   130	132	160	finally
    //   142	157	160	finally
    //   167	185	160	finally
    //   57	64	165	finally
    //   64	101	165	finally
    //   106	115	165	finally
    //   133	142	165	finally
    //   106	115	185	java/sql/SQLException
  }

  public final void a(List<String> paramList, String paramString)
  {
    while (true)
    {
      int k;
      synchronized (j)
      {
        String str = k();
        if ((str == null) || (paramString == null))
          return;
        DeleteBuilder localDeleteBuilder1 = j().deleteBuilder();
        localDeleteBuilder1.where().eq("userId", str).and().eq("status", Integer.valueOf(4)).and().eq("bizType", paramString);
        localDeleteBuilder1.delete();
        List localList = j().queryBuilder().where().eq("userId", str).and().eq("status", Integer.valueOf(3)).and().eq("bizType", paramString).query();
        if ((localList != null) && (localList.size() > 0))
        {
          k = 0;
          if (k < localList.size())
          {
            if ((((AlipassOffline)localList.get(k)).getPassId() != null) && (paramList.contains(((AlipassOffline)localList.get(k)).getPassId())))
              break label260;
            DeleteBuilder localDeleteBuilder2 = j().deleteBuilder();
            localDeleteBuilder2.where().eq("id", Integer.valueOf(((AlipassOffline)localList.get(k)).getId()));
            localDeleteBuilder2.delete();
            break label260;
          }
        }
        return;
      }
      label260: k++;
    }
  }

  public final void a(List<PassTimelineInfo> paramList, String paramString, int paramInt)
  {
    String str;
    DatabaseConnection localDatabaseConnection;
    Savepoint localSavepoint;
    CopyOnWriteArrayList localCopyOnWriteArrayList;
    synchronized (j)
    {
      str = k();
      if ((str == null) || (paramString == null))
        return;
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        PassTimelineInfo localPassTimelineInfo = (PassTimelineInfo)localIterator1.next();
        List localList = localPassTimelineInfo.getPassList();
        if ((localList != null) && (localList.size() != 0))
        {
          Iterator localIterator3 = localList.iterator();
          while (localIterator3.hasNext())
          {
            PassBaseInfo localPassBaseInfo = (PassBaseInfo)localIterator3.next();
            if ((localPassBaseInfo.passId == null) || (localPassBaseInfo.gmtModified != null))
              try
              {
                AlipassListCache localAlipassListCache2 = new AlipassListCache();
                localAlipassListCache2.setBizType(paramString);
                localAlipassListCache2.setDate(localPassTimelineInfo.getPassDate());
                localAlipassListCache2.setUserId(str);
                localAlipassListCache2.setPassBaseInfo(JSON.toJSONString(localPassBaseInfo));
                localAlipassListCache2.setPassId(localPassBaseInfo.passId);
                localAlipassListCache2.setGmtModified(localPassBaseInfo.gmtModified);
                localArrayList.add(localAlipassListCache2);
              }
              catch (Exception localException)
              {
              }
          }
        }
      }
      localDatabaseConnection = f().getConnectionSource().getReadWriteConnection();
      g().setAutoCommit(localDatabaseConnection, false);
      localSavepoint = localDatabaseConnection.setSavePoint("temp");
      localCopyOnWriteArrayList = new CopyOnWriteArrayList(localArrayList);
    }
    try
    {
      DeleteBuilder localDeleteBuilder2 = g().deleteBuilder();
      localDeleteBuilder2.where().eq("bizType", paramString).and().eq("userId", str).and().eq("status", Integer.valueOf(0));
      int k = localDeleteBuilder2.delete();
      new StringBuilder("clean list, delete row=").append(k).toString();
      Iterator localIterator2 = localCopyOnWriteArrayList.iterator();
      while (localIterator2.hasNext())
      {
        AlipassListCache localAlipassListCache1 = (AlipassListCache)localIterator2.next();
        try
        {
          g().createOrUpdate(localAlipassListCache1);
        }
        catch (SQLException localSQLException2)
        {
        }
      }
      localDatabaseConnection.commit(localSavepoint);
      g().setAutoCommit(localDatabaseConnection, true);
      DeleteBuilder localDeleteBuilder1 = i().deleteBuilder();
      localDeleteBuilder1.where().eq("bizType", paramString).and().eq("userId", str);
      localDeleteBuilder1.delete();
      AlipassListStatus localAlipassListStatus = new AlipassListStatus();
      localAlipassListStatus.setBizType(paramString);
      localAlipassListStatus.setUserId(str);
      localAlipassListStatus.setHasPast(paramInt);
      i().createOrUpdate(localAlipassListStatus);
      return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (SQLException localSQLException1)
    {
      while (true)
      {
        localDatabaseConnection.rollback(localSavepoint);
        g().setAutoCommit(localDatabaseConnection, true);
      }
    }
    finally
    {
      g().setAutoCommit(localDatabaseConnection, true);
    }
  }

  public final boolean a(AlipassListCache paramAlipassListCache)
  {
    synchronized (j)
    {
      if (g().update(paramAlipassListCache) > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }

  public final boolean a(AlipassOffline paramAlipassOffline)
  {
    synchronized (j)
    {
      List localList = j().queryBuilder().where().eq("userId", paramAlipassOffline.getUserId()).and().eq("partnerId", paramAlipassOffline.getPartnerId()).and().eq("serialNumber", paramAlipassOffline.getSerialNumber()).query();
      if (localList.size() > 0)
      {
        AlipassOffline localAlipassOffline = (AlipassOffline)localList.get(0);
        localAlipassOffline.setPassId(paramAlipassOffline.getPassId());
        if (paramAlipassOffline.getStatus() > localAlipassOffline.getStatus())
          localAlipassOffline.setStatus(paramAlipassOffline.getStatus());
        if (j().update(localAlipassOffline) > 0);
        for (boolean bool = true; ; bool = false)
          return bool;
      }
      return false;
    }
  }

  public final boolean a(String paramString, AlipassOffline paramAlipassOffline)
  {
    synchronized (j)
    {
      if ((paramAlipassOffline.getPartnerId() != null) && (paramAlipassOffline.getSerialNumber() != null) && (j().queryBuilder().where().eq("partnerId", paramAlipassOffline.getPartnerId()).and().eq("serialNumber", paramAlipassOffline.getSerialNumber()).and().eq("userId", paramString).query().size() > 0))
        return false;
      AlipassOffline localAlipassOffline = new AlipassOffline();
      localAlipassOffline.setUserId(paramString);
      localAlipassOffline.setBizType(paramAlipassOffline.getBizType());
      localAlipassOffline.setPassPath(paramAlipassOffline.getPassPath());
      localAlipassOffline.setPassBaseInfo(paramAlipassOffline.getPassBaseInfo());
      localAlipassOffline.setPartnerId(paramAlipassOffline.getPartnerId());
      localAlipassOffline.setSerialNumber(paramAlipassOffline.getSerialNumber());
      localAlipassOffline.setTimestamp(System.currentTimeMillis());
      int k = j().create(localAlipassOffline);
      boolean bool = false;
      if (k == 1)
        bool = true;
      return bool;
    }
  }

  public final boolean a(String paramString1, String paramString2, String paramString3, PassInfoResult paramPassInfoResult)
  {
    Object localObject1 = j;
    if (paramPassInfoResult != null);
    try
    {
      if ((paramPassInfoResult.getPassInfo() == null) || (paramPassInfoResult.getPassInfo().getPassBaseInfo() == null) || (paramPassInfoResult.getPassInfo().getPassBaseInfo().passId == null))
        return false;
      if (paramString2 == null)
        return false;
    }
    finally
    {
    }
    DeleteBuilder localDeleteBuilder = h().deleteBuilder();
    localDeleteBuilder.where().eq("passId", paramPassInfoResult.getPassInfo().getPassBaseInfo().passId).and().eq("userId", paramString2);
    localDeleteBuilder.delete();
    if (g().queryBuilder().where().eq("passId", paramPassInfoResult.getPassInfo().getPassBaseInfo().passId).and().eq("userId", paramString2).query().size() == 0)
    {
      AlipassListCache localAlipassListCache = new AlipassListCache();
      localAlipassListCache.setBizType(paramString3);
      localAlipassListCache.setDate("");
      localAlipassListCache.setUserId(paramString2);
      localAlipassListCache.setPassBaseInfo(JSON.toJSONString(paramPassInfoResult.getPassInfo().getPassBaseInfo()));
      localAlipassListCache.setPassId(paramPassInfoResult.getPassInfo().getPassBaseInfo().passId);
      localAlipassListCache.setGmtModified(paramPassInfoResult.getPassInfo().getPassBaseInfo().gmtModified);
      g().createOrUpdate(localAlipassListCache);
    }
    AlipassDetailCache localAlipassDetailCache = new AlipassDetailCache();
    localAlipassDetailCache.setUserId(paramString2);
    localAlipassDetailCache.setPassId(paramPassInfoResult.getPassInfo().getPassBaseInfo().passId);
    a(localAlipassDetailCache, paramPassInfoResult.getPassInfo());
    if (paramPassInfoResult.getPassInfo().getPassBaseInfo().gmtModified == null);
    for (String str = ""; ; str = paramPassInfoResult.getPassInfo().getPassBaseInfo().gmtModified)
    {
      localAlipassDetailCache.setGmtModified(str);
      if (paramString3 == null)
        paramString3 = "";
      localAlipassDetailCache.setBizType(paramString3);
      localAlipassDetailCache.setIsClicked(0);
      if (paramString1 == null)
        paramString1 = "";
      localAlipassDetailCache.setCustomerId(paramString1);
      int k = h().create(localAlipassDetailCache);
      boolean bool = false;
      if (k > 0)
        bool = true;
      return bool;
    }
  }

  public final PassInfoResult b(String paramString1, String paramString2)
  {
    synchronized (j)
    {
      PassInfoResult localPassInfoResult = new PassInfoResult();
      localPassInfoResult.success = false;
      String str = k();
      if ((str == null) || (paramString1 == null))
        return localPassInfoResult;
      List localList = h().queryBuilder().where().eq("userId", str).and().eq("passId", paramString1).query();
      new StringBuilder("cache detail size is ").append(localList.size()).toString();
      if (localList.size() > 0)
      {
        AlipassDetailCache localAlipassDetailCache = (AlipassDetailCache)localList.get(0);
        localAlipassDetailCache.toString();
        a(localPassInfoResult, localAlipassDetailCache.getPassInfo());
        localPassInfoResult.success = true;
        if (((localAlipassDetailCache.getBizType() == null) || (localAlipassDetailCache.getBizType().length() == 0)) && (paramString2 != null))
        {
          localAlipassDetailCache.setBizType(paramString2);
          h().update(localAlipassDetailCache);
        }
      }
      return localPassInfoResult;
    }
  }

  public final List<AlipassOfflineV2> b()
  {
    synchronized (j)
    {
      if (this.i == null)
        this.i = f().e();
      QueryBuilder localQueryBuilder = this.i.queryBuilder();
      localQueryBuilder.selectColumns(new String[] { "userId", "passPath", "bizType", "partnerId", "serialNumber", "remotePassId", "status", "passBaseInfo" });
      List localList = localQueryBuilder.query();
      return localList;
    }
  }

  public final void b(List<String> paramList, String paramString)
  {
    while (true)
    {
      int n;
      synchronized (j)
      {
        String str = k();
        if ((str == null) || (paramString == null))
          return;
        List localList1 = g().queryBuilder().where().eq("userId", str).and().eq("status", Integer.valueOf(4)).and().eq("bizType", paramString).query();
        int k = 0;
        if (k < localList1.size())
        {
          e(str, ((AlipassListCache)localList1.get(k)).getPassId());
          k++;
          continue;
        }
        DeleteBuilder localDeleteBuilder = g().deleteBuilder();
        localDeleteBuilder.where().eq("userId", str).and().eq("status", Integer.valueOf(4)).and().eq("bizType", paramString);
        localDeleteBuilder.delete();
        List localList2 = g().queryBuilder().where().eq("userId", str).and().eq("status", Integer.valueOf(3)).and().eq("bizType", paramString).query();
        if (localList2 != null)
        {
          int m = localList2.size();
          n = 0;
          if ((m > 0) && (n < localList2.size()))
          {
            if (paramList.contains(((AlipassListCache)localList2.get(n)).getPassId()))
              break label309;
            e(str, ((AlipassListCache)localList2.get(n)).getPassId());
            break label309;
          }
        }
        return;
      }
      label309: n++;
    }
  }

  public final boolean b(AlipassListCache paramAlipassListCache)
  {
    synchronized (j)
    {
      if (g().create(paramAlipassListCache) > 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
  }

  public final boolean b(String paramString)
  {
    while (true)
    {
      synchronized (j)
      {
        String str = k();
        if ((paramString == null) || (str == null))
          return false;
        e(str, paramString);
        List localList = g().queryBuilder().where().eq("passId", paramString).and().eq("userId", str).query();
        if (localList.size() <= 0)
          break;
        AlipassListCache localAlipassListCache = (AlipassListCache)localList.get(0);
        localAlipassListCache.setStatus(3);
        if (g().update(localAlipassListCache) > 0)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
    return false;
  }

  public final int c(String paramString)
  {
    synchronized (j)
    {
      String str = k();
      if ((str == null) || (paramString == null))
        return 0;
      List localList = h().queryBuilder().where().eq("userId", str).and().eq("passId", paramString).query();
      new StringBuilder("cache detail size is ").append(localList.size()).toString();
      int k = 0;
      if (localList != null)
      {
        int m = localList.size();
        k = 0;
        if (m > 0)
        {
          AlipassDetailCache localAlipassDetailCache = (AlipassDetailCache)localList.get(0);
          localAlipassDetailCache.toString();
          k = localAlipassDetailCache.getIsClicked();
        }
      }
      return k;
    }
  }

  public final AlipassOffline c(String paramString1, String paramString2)
  {
    synchronized (j)
    {
      String str = k();
      if ((str == null) || (paramString1 == null) || (paramString2 == null))
        return null;
      List localList = j().queryBuilder().where().eq("userId", str).and().eq("partnerId", paramString1).and().eq("serialNumber", paramString2).query();
      if (localList.size() > 0)
      {
        AlipassOffline localAlipassOffline = (AlipassOffline)localList.get(0);
        return localAlipassOffline;
      }
    }
    return null;
  }

  public final List<String> c()
  {
    while (true)
    {
      int k;
      synchronized (j)
      {
        String str = k();
        if (str == null)
        {
          ArrayList localArrayList1 = new ArrayList();
          return localArrayList1;
        }
        List localList = j().queryBuilder().where().eq("userId", str).query();
        ArrayList localArrayList2 = new ArrayList();
        k = 0;
        if (k < localList.size())
        {
          if (((((AlipassOffline)localList.get(k)).getStatus() == 3) || (((AlipassOffline)localList.get(k)).getStatus() == 4)) && (((AlipassOffline)localList.get(k)).getPassId() != null))
            localArrayList2.add(((AlipassOffline)localList.get(k)).getPassId());
        }
        else
          return localArrayList2;
      }
      k++;
    }
  }

  public final PassListResult d(String paramString)
  {
    synchronized (j)
    {
      long l1 = System.currentTimeMillis();
      PassListResult localPassListResult = new PassListResult();
      localPassListResult.setHasPast(0);
      String str = k();
      if ((str == null) || (paramString == null))
      {
        localPassListResult.success = false;
        return localPassListResult;
      }
      long l2 = System.currentTimeMillis();
      List localList = j().queryBuilder().orderBy("timestamp", false).where().eq("userId", str).and().eq("bizType", paramString).and().lt("status", Integer.valueOf(3)).query();
      new StringBuilder("offline list size is ").append(localList.size()).append(",userId=").append(str).append(",bizType=").append(paramString).toString();
      new StringBuilder("queryBuilderTime is ").append(System.currentTimeMillis() - l2).toString();
      long l3 = System.currentTimeMillis();
      ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        AlipassOffline localAlipassOffline = (AlipassOffline)localIterator.next();
        try
        {
          localArrayList1.add(b.b(localAlipassOffline.getPassBaseInfo(), PassBaseInfo.class));
        }
        catch (Exception localException)
        {
        }
      }
      new StringBuilder("fasejsonTime is ").append(System.currentTimeMillis() - l3).toString();
      long l4 = System.currentTimeMillis();
      ArrayList localArrayList2 = new ArrayList();
      if (localArrayList1.size() > 0)
      {
        PassTimelineInfo localPassTimelineInfo = new PassTimelineInfo();
        localPassTimelineInfo.setPassDate(null);
        localPassTimelineInfo.setPassList(localArrayList1);
        localArrayList2.add(localPassTimelineInfo);
      }
      localPassListResult.setPassTimelineList(localArrayList2);
      localPassListResult.success = true;
      if (localPassListResult.getPassTimelineList().size() != 0)
      {
        k = 1;
        localPassListResult.setHasCurrent(k);
        new StringBuilder("passTimelineListTime is ").append(System.currentTimeMillis() - l4).toString();
        new StringBuilder("queryOfflineAlipassForList finish!!!!! total time is ").append(System.currentTimeMillis() - l1).toString();
        return localPassListResult;
      }
      int k = 0;
    }
  }

  public final List<String> d()
  {
    while (true)
    {
      int k;
      synchronized (j)
      {
        String str = k();
        if (str == null)
        {
          ArrayList localArrayList1 = new ArrayList();
          return localArrayList1;
        }
        List localList = g().queryBuilder().where().eq("userId", str).query();
        ArrayList localArrayList2 = new ArrayList();
        k = 0;
        if (k < localList.size())
        {
          if ((((AlipassListCache)localList.get(k)).getStatus() == 3) || (((AlipassListCache)localList.get(k)).getStatus() == 4))
            localArrayList2.add(((AlipassListCache)localList.get(k)).getPassId());
        }
        else
          return localArrayList2;
      }
      k++;
    }
  }

  public final boolean d(String paramString1, String paramString2)
  {
    String str;
    while (true)
    {
      synchronized (j)
      {
        str = k();
        if ((paramString1 == null) || (str == null) || (paramString2 == null))
          return false;
        List localList1 = j().queryBuilder().where().eq("partnerId", paramString1).and().eq("serialNumber", paramString2).and().eq("userId", str).query();
        if (localList1.size() <= 0)
          break;
        AlipassOffline localAlipassOffline = (AlipassOffline)localList1.get(0);
        localAlipassOffline.setStatus(3);
        if (j().update(localAlipassOffline) > 0)
        {
          bool2 = true;
          return bool2;
        }
      }
      boolean bool2 = false;
    }
    List localList2 = g().queryBuilder().where().eq("partnerId", paramString1).and().eq("serialNumber", paramString2).and().eq("userId", str).query();
    if (localList2.size() > 0)
    {
      AlipassListCache localAlipassListCache = (AlipassListCache)localList2.get(0);
      localAlipassListCache.setStatus(3);
      if (g().update(localAlipassListCache) <= 0)
        break label248;
    }
    label248: for (boolean bool1 = true; ; bool1 = false)
    {
      return bool1;
      return false;
    }
  }

  public final PassListResult e()
  {
    long l1;
    PassListResult localPassListResult;
    long l5;
    ArrayList localArrayList;
    synchronized (j)
    {
      l1 = System.currentTimeMillis();
      localPassListResult = new PassListResult();
      String str = k();
      if (str == null)
      {
        localPassListResult.success = false;
        return localPassListResult;
      }
      long l2 = System.currentTimeMillis();
      List localList1 = g().queryBuilder().where().eq("userId", str).and().eq("status", Integer.valueOf(0)).query();
      new StringBuilder("cache list size is ").append(localList1.size()).append(",userId=").append(str).toString();
      new StringBuilder("queryBuilderTime is ").append(System.currentTimeMillis() - l2).toString();
      long l3 = System.currentTimeMillis();
      List localList2 = i().queryBuilder().where().eq("userId", str).query();
      if (localList2.size() > 0)
      {
        localPassListResult.setHasPast(((AlipassListStatus)localList2.get(0)).getHasPast());
        new StringBuilder("hasPast value is ").append(localPassListResult.getHasPast()).toString();
      }
      new StringBuilder("listStatusQueryBuilderTime is ").append(System.currentTimeMillis() - l3).toString();
      long l4 = System.currentTimeMillis();
      Map localMap = Collections.synchronizedMap(new LinkedHashMap());
      Iterator localIterator1 = localList1.iterator();
      while (localIterator1.hasNext())
      {
        AlipassListCache localAlipassListCache = (AlipassListCache)localIterator1.next();
        try
        {
          if (!localMap.containsKey(localAlipassListCache.getDate()))
            localMap.put(localAlipassListCache.getDate(), new ArrayList());
          ((List)localMap.get(localAlipassListCache.getDate())).add(b.b(localAlipassListCache.getPassBaseInfo(), PassBaseInfo.class));
        }
        catch (Exception localException)
        {
        }
      }
      new StringBuilder("fasejsonTime is ").append(System.currentTimeMillis() - l4).toString();
      l5 = System.currentTimeMillis();
      localArrayList = new ArrayList();
      Iterator localIterator2 = localMap.keySet().iterator();
      if (localIterator2.hasNext())
      {
        PassTimelineInfo localPassTimelineInfo = new PassTimelineInfo();
        localPassTimelineInfo.setPassDate((String)localIterator2.next());
        localPassTimelineInfo.setPassList((List)localMap.get(localPassTimelineInfo.getPassDate()));
        localArrayList.add(localPassTimelineInfo);
      }
    }
    localPassListResult.setPassTimelineList(localArrayList);
    boolean bool;
    if (localPassListResult.getPassTimelineList().size() != 0)
    {
      bool = true;
      localPassListResult.success = bool;
      if (localPassListResult.getPassTimelineList().size() == 0)
        break label637;
    }
    label637: for (int k = 1; ; k = 0)
    {
      localPassListResult.setHasCurrent(k);
      new StringBuilder("passTimelineListTime is ").append(System.currentTimeMillis() - l5).toString();
      new StringBuilder("queryAllCacheList finish!!!!! total time is ").append(System.currentTimeMillis() - l1).toString();
      return localPassListResult;
      bool = false;
      break;
    }
  }

  public final AlipassListCache e(String paramString)
  {
    synchronized (j)
    {
      String str = k();
      if (StringUtils.isBlank(str))
        return null;
      long l = System.currentTimeMillis();
      List localList = g().queryBuilder().where().eq("userId", str).and().eq("passId", paramString).query();
      new StringBuilder("cache list size is ").append(localList.size()).append(",userId=").append(str).append(",passId=").append(paramString).toString();
      new StringBuilder("queryBuilderTime is ").append(System.currentTimeMillis() - l).toString();
      if ((localList != null) && (localList.size() > 0))
      {
        AlipassListCache localAlipassListCache = (AlipassListCache)localList.get(0);
        return localAlipassListCache;
      }
    }
    return null;
  }

  public final void e(String paramString1, String paramString2)
  {
    synchronized (j)
    {
      DeleteBuilder localDeleteBuilder = h().deleteBuilder();
      localDeleteBuilder.where().eq("userId", paramString1).and().eq("passId", paramString2);
      localDeleteBuilder.delete();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.a.a.a
 * JD-Core Version:    0.6.2
 */