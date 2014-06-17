package com.alipay.mobile.framework.service.ext.openplatform.persist;

import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;

final class w
  implements DaoExcutor<Object>
{
  w(MyAppDao paramMyAppDao, String paramString)
  {
  }

  public final Object excute(AppDbHelper paramAppDbHelper)
  {
    DeleteBuilder localDeleteBuilder = paramAppDbHelper.getMyAppEntityDao().deleteBuilder();
    localDeleteBuilder.where().eq("appId", this.a);
    localDeleteBuilder.delete();
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.w
 * JD-Core Version:    0.6.2
 */