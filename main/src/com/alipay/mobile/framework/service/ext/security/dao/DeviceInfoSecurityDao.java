package com.alipay.mobile.framework.service.ext.security.dao;

import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoSecurity;
import com.j256.ormlite.dao.Dao;
import java.util.List;

public class DeviceInfoSecurityDao
{
  public void addDeviceInfo(Dao<DeviceInfoSecurity, Integer> paramDao, DeviceInfoSecurity paramDeviceInfoSecurity)
  {
    paramDao.createOrUpdate(paramDeviceInfoSecurity);
  }

  public DeviceInfoSecurity findDeviceInfoSecurity(Dao<DeviceInfoSecurity, Integer> paramDao)
  {
    List localList = paramDao.queryForAll();
    DeviceInfoSecurity localDeviceInfoSecurity = null;
    if (localList != null)
    {
      int i = localList.size();
      localDeviceInfoSecurity = null;
      if (i > 0)
        localDeviceInfoSecurity = (DeviceInfoSecurity)localList.get(0);
    }
    return localDeviceInfoSecurity;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.dao.DeviceInfoSecurityDao
 * JD-Core Version:    0.6.2
 */