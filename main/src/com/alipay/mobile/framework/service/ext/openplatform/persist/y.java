package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.j256.ormlite.dao.Dao;
import java.util.List;

final class y
  implements DaoExcutor<Object>
{
  y(MyAppDao paramMyAppDao, List paramList)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    Dao localDao = paramAppDbHelper.getMyAppEntityDao();
    localDao.callBatchTasks(new z(this, localDao));
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.y
 * JD-Core Version:    0.6.2
 */