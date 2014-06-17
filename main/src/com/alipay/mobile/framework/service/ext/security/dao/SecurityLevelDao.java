package com.alipay.mobile.framework.service.ext.security.dao;

import com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class SecurityLevelDao
{
  public void addSecurityLevel(Dao<SecurityLevel, Integer> paramDao, SecurityLevel paramSecurityLevel)
  {
    paramDao.createOrUpdate(paramSecurityLevel);
  }

  public void deleteSecurityLevel(Dao<SecurityLevel, Integer> paramDao, String paramString)
  {
    DeleteBuilder localDeleteBuilder = paramDao.deleteBuilder();
    if (paramString != null)
      localDeleteBuilder.where().eq("logonId", paramString);
    localDeleteBuilder.delete();
  }

  public SecurityLevel findSecurityLevel(Dao<SecurityLevel, Integer> paramDao, String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("logonId", paramString);
    List localList = paramDao.queryForFieldValues(localHashMap);
    SecurityLevel localSecurityLevel = null;
    if (localList != null)
    {
      int i = localList.size();
      localSecurityLevel = null;
      if (i > 0)
        localSecurityLevel = (SecurityLevel)localList.get(-1 + localList.size());
    }
    return localSecurityLevel;
  }

  public void updateSecurityLevelRefresh(Dao<SecurityLevel, Integer> paramDao, String paramString1, Boolean paramBoolean, String paramString2)
  {
    SecurityLevel localSecurityLevel = findSecurityLevel(paramDao, paramString1);
    if (localSecurityLevel == null)
    {
      localSecurityLevel = new SecurityLevel();
      localSecurityLevel.setLogonId(paramString1);
    }
    if ((paramString2 != null) && (!"".equals(paramString2.trim())))
      localSecurityLevel.setLevel(paramString2);
    localSecurityLevel.setRefresh(paramBoolean);
    addSecurityLevel(paramDao, localSecurityLevel);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.dao.SecurityLevelDao
 * JD-Core Version:    0.6.2
 */