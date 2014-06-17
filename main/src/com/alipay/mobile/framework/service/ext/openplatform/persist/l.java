package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.AppEntity;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;

final class l
  implements DaoExcutor<Object>
{
  l(AppDao paramAppDao, AppEntity paramAppEntity)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    Dao localDao = paramAppDbHelper.getAppEntityDao();
    QueryBuilder localQueryBuilder = localDao.queryBuilder();
    localQueryBuilder.where().eq("appId", this.a.getAppId());
    AppEntity localAppEntity = (AppEntity)localQueryBuilder.queryForFirst();
    if (localAppEntity != null)
    {
      this.a.setId(localAppEntity.getId());
      localDao.update(this.a);
    }
    while (true)
    {
      return null;
      localDao.create(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.l
 * JD-Core Version:    0.6.2
 */