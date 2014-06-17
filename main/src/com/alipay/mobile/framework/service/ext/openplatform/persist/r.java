package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.FastLoginAppEntity;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

final class r
  implements Callable<Object>
{
  r(q paramq, Dao paramDao)
  {
  }

  public final Object call()
  {
    QueryBuilder localQueryBuilder = this.a.queryBuilder();
    Iterator localIterator = this.b.a.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      List localList = localQueryBuilder.where().eq("appId", str).query();
      if ((localList == null) || (localList.size() == 0))
      {
        FastLoginAppEntity localFastLoginAppEntity = new FastLoginAppEntity();
        localFastLoginAppEntity.setAppId(str);
        this.a.create(localFastLoginAppEntity);
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.r
 * JD-Core Version:    0.6.2
 */