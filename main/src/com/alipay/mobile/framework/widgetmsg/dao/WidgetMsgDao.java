package com.alipay.mobile.framework.widgetmsg.dao;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobileapp.biz.rpc.widgetmsg.model.WidgetMsg;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WidgetMsgDao
{
  private Context a;
  private WidgetMsgDBHelper b;
  private List<List<WidgetMsgDao.WidgetMsgCountInfo>> c;

  public WidgetMsgDao(Context paramContext)
  {
    this.a = paramContext;
  }

  private WidgetMsgDBHelper a()
  {
    if (this.b == null)
      this.b = new WidgetMsgDBHelper(this.a);
    return this.b;
  }

  private void a(String paramString)
  {
    while (true)
    {
      ArrayList localArrayList;
      try
      {
        this.c = new ArrayList();
        List localList = a().getWidgetMsgDao().queryBuilder().where().eq("userId", paramString).query();
        if (localList == null)
          return;
        Iterator localIterator = localList.iterator();
        if (!localIterator.hasNext())
          continue;
        WidgetMsgTable localWidgetMsgTable = (WidgetMsgTable)localIterator.next();
        localArrayList = new ArrayList();
        String[] arrayOfString = localWidgetMsgTable.getWidgetId().split(",");
        int i = 0;
        if (i >= arrayOfString.length)
          break label270;
        String str = arrayOfString[i];
        WidgetMsgDao.WidgetMsgCountInfo localWidgetMsgCountInfo = new WidgetMsgDao.WidgetMsgCountInfo();
        localWidgetMsgCountInfo.widgetMsgId = str;
        if (i == -1 + arrayOfString.length)
        {
          localWidgetMsgCountInfo.persistenceCount = localWidgetMsgTable.getPersistenceCount();
          localWidgetMsgCountInfo.temporaryMsgCount = localWidgetMsgTable.getTemporaryCount();
          localWidgetMsgCountInfo.descendantCount = 0;
          if (localWidgetMsgTable.getPersistenceCount() == 0)
            break label291;
          bool2 = true;
          localWidgetMsgCountInfo.needAck = bool2;
          localWidgetMsgCountInfo.msgStyle = localWidgetMsgTable.getStyle();
          localArrayList.add(localWidgetMsgCountInfo);
          i++;
          continue;
        }
        localWidgetMsgCountInfo.persistenceCount = 0;
        localWidgetMsgCountInfo.temporaryMsgCount = 0;
        localWidgetMsgCountInfo.descendantCount = (localWidgetMsgTable.getPersistenceCount() + localWidgetMsgTable.getTemporaryCount());
        if (localWidgetMsgTable.getPersistenceCount() != 0)
        {
          bool1 = true;
          localWidgetMsgCountInfo.needAck = bool1;
          continue;
        }
      }
      finally
      {
      }
      boolean bool1 = false;
      continue;
      label270: localArrayList.toString();
      this.c.add(localArrayList);
      continue;
      label291: boolean bool2 = false;
    }
  }

  public void dropWidgetMsg(String paramString1, String paramString2)
  {
    LogCatLog.v("WidgetMsgDao", "dropTemporaryMsg:" + paramString2);
    Dao localDao = a().getWidgetMsgDao();
    List localList = localDao.queryBuilder().where().eq("userId", paramString1).query();
    if (localList == null)
      return;
    Iterator localIterator = localList.iterator();
    while (localIterator.hasNext())
    {
      WidgetMsgTable localWidgetMsgTable = (WidgetMsgTable)localIterator.next();
      String[] arrayOfString = localWidgetMsgTable.getWidgetId().split(",");
      if ((arrayOfString != null) && (arrayOfString.length > 0) && (arrayOfString[(-1 + arrayOfString.length)].equals(paramString2)))
      {
        LogCatLog.v("WidgetMsgDao", "do dropTemporaryMsg:" + localWidgetMsgTable.getWidgetId());
        localWidgetMsgTable.setTemporaryCount(0);
        localWidgetMsgTable.setPersistenceCount(0);
        localDao.update(localWidgetMsgTable);
      }
    }
    a(paramString1);
  }

  public WidgetMsgDao.WidgetMsgCountInfo getWidgetMsgCountInfoById(String paramString1, String paramString2)
  {
    label311: 
    while (true)
    {
      Object localObject2;
      WidgetMsgDao.WidgetMsgCountInfo localWidgetMsgCountInfo1;
      try
      {
        boolean bool = TextUtils.isEmpty(paramString1);
        localObject2 = null;
        if (bool)
          return localObject2;
        List localList = this.c;
        if (localList == null);
        try
        {
          a(paramString1);
          Iterator localIterator1 = this.c.iterator();
          localWidgetMsgCountInfo1 = null;
          if (!localIterator1.hasNext())
            break label250;
          Iterator localIterator2 = ((List)localIterator1.next()).iterator();
          if (!localIterator2.hasNext())
            continue;
          WidgetMsgDao.WidgetMsgCountInfo localWidgetMsgCountInfo2 = (WidgetMsgDao.WidgetMsgCountInfo)localIterator2.next();
          if (!localWidgetMsgCountInfo2.widgetMsgId.equals(paramString2))
            break label311;
          if (localWidgetMsgCountInfo1 == null)
          {
            localWidgetMsgCountInfo1 = new WidgetMsgDao.WidgetMsgCountInfo();
            localWidgetMsgCountInfo1.widgetMsgId = paramString2;
          }
          localWidgetMsgCountInfo1.persistenceCount += localWidgetMsgCountInfo2.persistenceCount;
          localWidgetMsgCountInfo1.temporaryMsgCount += localWidgetMsgCountInfo2.temporaryMsgCount;
          localWidgetMsgCountInfo1.descendantCount += localWidgetMsgCountInfo2.descendantCount;
          if (localWidgetMsgCountInfo2.needAck)
            localWidgetMsgCountInfo1.needAck = localWidgetMsgCountInfo2.needAck;
          if ((localWidgetMsgCountInfo2.msgStyle == null) || (!localWidgetMsgCountInfo2.msgStyle.equals("num")))
            break label311;
          localWidgetMsgCountInfo1.msgStyle = localWidgetMsgCountInfo2.msgStyle;
        }
        catch (SQLException localSQLException)
        {
          localSQLException.printStackTrace();
          localObject2 = null;
        }
        continue;
      }
      finally
      {
      }
      label250: StringBuilder localStringBuilder = new StringBuilder("getWidgetMsgCountInfoById,id=").append(paramString2).append(",info=");
      if (localWidgetMsgCountInfo1 != null);
      for (String str = localWidgetMsgCountInfo1.toString(); ; str = "null")
      {
        LogCatLog.v("WidgetMsgDao", str);
        localObject2 = localWidgetMsgCountInfo1;
        break;
      }
    }
  }

  public void mergeWidgetMsg(String paramString, List<WidgetMsg> paramList)
  {
    Dao localDao = a().getWidgetMsgDao();
    QueryBuilder localQueryBuilder = localDao.queryBuilder();
    DeleteBuilder localDeleteBuilder = localDao.deleteBuilder();
    List localList1 = localQueryBuilder.where().eq("userId", paramString).query();
    if (localList1 != null)
    {
      Iterator localIterator2 = localList1.iterator();
      while (localIterator2.hasNext())
      {
        WidgetMsgTable localWidgetMsgTable3 = (WidgetMsgTable)localIterator2.next();
        localWidgetMsgTable3.setPersistenceCount(0);
        localDao.update(localWidgetMsgTable3);
      }
    }
    if (paramList != null)
    {
      Iterator localIterator1 = paramList.iterator();
      while (localIterator1.hasNext())
      {
        WidgetMsg localWidgetMsg = (WidgetMsg)localIterator1.next();
        List localList2 = localQueryBuilder.where().eq("widgetId", localWidgetMsg.getWidgetId()).and().eq("userId", paramString).query();
        if ((localList2 == null) || (localList2.size() == 0))
        {
          WidgetMsgTable localWidgetMsgTable1 = new WidgetMsgTable();
          localWidgetMsgTable1.setUserId(paramString);
          localWidgetMsgTable1.setWidgetId(localWidgetMsg.getWidgetId());
          localWidgetMsgTable1.setPersistenceCount(localWidgetMsg.getPersistence());
          localWidgetMsgTable1.setTemporaryCount(localWidgetMsg.getTemporary());
          localWidgetMsgTable1.setStyle(localWidgetMsg.getStyle());
          localDao.create(localWidgetMsgTable1);
          LogCatLog.v("WidgetMsgDao", "add WidgetMsg:" + localWidgetMsgTable1.getWidgetId());
        }
        else if (localList2.size() == 1)
        {
          WidgetMsgTable localWidgetMsgTable2 = (WidgetMsgTable)localList2.get(0);
          localWidgetMsgTable2.setPersistenceCount(localWidgetMsg.getPersistence());
          localWidgetMsgTable2.setTemporaryCount(localWidgetMsg.getTemporary() + localWidgetMsgTable2.getTemporaryCount());
          localWidgetMsgTable2.setStyle(localWidgetMsg.getStyle());
          localDao.update(localWidgetMsgTable2);
          LogCatLog.v("WidgetMsgDao", "update WidgetMsg:" + localWidgetMsgTable2.getWidgetId());
        }
        else
        {
          localDeleteBuilder.where().eq("widgetId", localWidgetMsg.getWidgetId());
          localDeleteBuilder.delete();
          LogCatLog.v("WidgetMsgDao", "delete WidgetMsg");
        }
      }
    }
    a(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDao
 * JD-Core Version:    0.6.2
 */