package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;

final class x
  implements DaoExcutor<Object>
{
  x(MyAppDao paramMyAppDao, MyAppEntity paramMyAppEntity)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    Dao localDao = paramAppDbHelper.getMyAppEntityDao();
    QueryBuilder localQueryBuilder = localDao.queryBuilder();
    localQueryBuilder.where().eq("appId", this.a.getAppId());
    MyAppEntity localMyAppEntity = (MyAppEntity)localQueryBuilder.queryForFirst();
    if (localMyAppEntity != null)
    {
      this.a.setId(localMyAppEntity.getId());
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
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.x
 * JD-Core Version:    0.6.2
 */