package com.alipay.mobile.framework.service.ext.security.dao;

import com.alipay.mobile.common.security.Des;
import com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TaoBaoUserInfoDao
{
  private static void a(TaoBaoUserInfo paramTaoBaoUserInfo)
  {
    String str1 = paramTaoBaoUserInfo.getTaoBaoUserId();
    if (str1 != null)
      paramTaoBaoUserInfo.setTaoBaoUserId(Des.decrypt(str1, "userInfo"));
    String str2 = paramTaoBaoUserInfo.getUserId();
    if (str2 != null)
      paramTaoBaoUserInfo.setUserId(Des.decrypt(str2, "userInfo"));
  }

  public void addTaoBaoUserInfo(Dao<TaoBaoUserInfo, Integer> paramDao, TaoBaoUserInfo paramTaoBaoUserInfo)
  {
    TaoBaoUserInfo localTaoBaoUserInfo = (TaoBaoUserInfo)paramTaoBaoUserInfo.clone();
    String str1 = localTaoBaoUserInfo.getTaoBaoUserId();
    if (str1 != null)
      localTaoBaoUserInfo.setTaoBaoUserId(Des.encrypt(str1, "userInfo"));
    String str2 = localTaoBaoUserInfo.getUserId();
    if (str2 != null)
      localTaoBaoUserInfo.setUserId(Des.encrypt(str2, "userInfo"));
    paramDao.createOrUpdate(localTaoBaoUserInfo);
  }

  public boolean deleteTaobaoUserInfo(Dao<TaoBaoUserInfo, Integer> paramDao, String paramString)
  {
    DeleteBuilder localDeleteBuilder = paramDao.deleteBuilder();
    Where localWhere = localDeleteBuilder.where();
    if (paramString == null);
    for (Object localObject = null; ; localObject = Des.encrypt(paramString, "userInfo"))
    {
      localWhere.eq("taoBaoUserId", localObject);
      if (localDeleteBuilder.delete() <= 0)
        break;
      return true;
    }
    return false;
  }

  public boolean deleteTaobaoUserInfoByUserId(Dao<TaoBaoUserInfo, Integer> paramDao, String paramString)
  {
    DeleteBuilder localDeleteBuilder = paramDao.deleteBuilder();
    Where localWhere = localDeleteBuilder.where();
    if (paramString == null);
    for (Object localObject = null; ; localObject = Des.encrypt(paramString, "userInfo"))
    {
      localWhere.eq("userId", localObject);
      if (localDeleteBuilder.delete() <= 0)
        break;
      return true;
    }
    return false;
  }

  public TaoBaoUserInfo findTaobaoUserInfo(Dao<TaoBaoUserInfo, Integer> paramDao, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("taoBaoUserId", Des.encrypt(paramString, "userInfo"));
    List localList = paramDao.queryForFieldValuesArgs(localHashMap);
    TaoBaoUserInfo localTaoBaoUserInfo = null;
    if (localList != null)
    {
      int i = localList.size();
      localTaoBaoUserInfo = null;
      if (i > 0)
        localTaoBaoUserInfo = (TaoBaoUserInfo)localList.get(0);
    }
    a(localTaoBaoUserInfo);
    return localTaoBaoUserInfo;
  }

  public List<TaoBaoUserInfo> queryTaobaoUserList(Dao<TaoBaoUserInfo, Integer> paramDao)
  {
    QueryBuilder localQueryBuilder = paramDao.queryBuilder();
    localQueryBuilder.orderBy("loginTime", true);
    List localList = localQueryBuilder.query();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        a((TaoBaoUserInfo)localIterator.next());
    }
    return localList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.dao.TaoBaoUserInfoDao
 * JD-Core Version:    0.6.2
 */