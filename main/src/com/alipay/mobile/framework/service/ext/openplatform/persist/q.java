package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.j256.ormlite.dao.Dao;
import java.util.List;

final class q
  implements DaoExcutor<Object>
{
  q(FastLoginAppDao paramFastLoginAppDao, List paramList)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    Dao localDao = paramAppDbHelper.getFastLoginAppEntityDao();
    localDao.callBatchTasks(new r(this, localDao));
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.q
 * JD-Core Version:    0.6.2
 */