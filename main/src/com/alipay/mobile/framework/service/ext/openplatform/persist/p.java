package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;

final class p
  implements DaoExcutor<Object>
{
  p(FastLoginAppDao paramFastLoginAppDao)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    DeleteBuilder localDeleteBuilder = paramAppDbHelper.getFastLoginAppEntityDao().deleteBuilder();
    localDeleteBuilder.where().isNotNull("appId");
    localDeleteBuilder.delete();
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.p
 * JD-Core Version:    0.6.2
 */