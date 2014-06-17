package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;

final class d
  implements DaoExcutor<Object>
{
  d(AppDao paramAppDao, String paramString)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    Dao localDao = paramAppDbHelper.getAppEntityDao();
    QueryBuilder localQueryBuilder = localDao.queryBuilder();
    localQueryBuilder.where().eq("appId", this.a);
    AppEntity localAppEntity = (AppEntity)localQueryBuilder.queryForFirst();
    if (localAppEntity != null)
      localDao.delete(localAppEntity);
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.d
 * JD-Core Version:    0.6.2
 */