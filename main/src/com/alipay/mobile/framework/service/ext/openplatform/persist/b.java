package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.j256.ormlite.dao.Dao;
import java.util.List;

final class b
  implements DaoExcutor<Object>
{
  b(AppDao paramAppDao, List paramList)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    Dao localDao = paramAppDbHelper.getAppEntityDao();
    localDao.callBatchTasks(new c(this, localDao));
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.b
 * JD-Core Version:    0.6.2
 */