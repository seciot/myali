package com.j256.ormlite.dao;

import com.j256.ormlite.db.DatabaseType;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import com.j256.ormlite.misc.SqlExceptionUtil;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.DatabaseTable;
import com.j256.ormlite.table.DatabaseTableConfig;
import java.lang.reflect.Constructor;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class DaoManager
{
  private static Map<Class<?>, DatabaseTableConfig<?>> a = null;
  private static Map<DaoManager.ClassConnectionSource, Dao<?, ?>> b = null;
  private static Map<DaoManager.TableConfigConnectionSource, Dao<?, ?>> c = null;
  private static Logger d = LoggerFactory.getLogger(DaoManager.class);

  private static <T> Dao<?, ?> a(DaoManager.ClassConnectionSource paramClassConnectionSource)
  {
    if (BundlesManager == null)
      BundlesManager = new HashMap();
    Dao localDao = (Dao)BundlesManager.get(paramClassConnectionSource);
    if (localDao == null)
      localDao = null;
    return localDao;
  }

  private static <T> Dao<?, ?> a(DaoManager.TableConfigConnectionSource paramTableConfigConnectionSource)
  {
    if (BundlesManagerImpl == null)
      BundlesManagerImpl = new HashMap();
    Dao localDao = (Dao)BundlesManagerImpl.get(paramTableConfigConnectionSource);
    if (localDao == null)
      localDao = null;
    return localDao;
  }

  private static <D extends Dao<T, ?>, T> D a(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    DaoManager.TableConfigConnectionSource localTableConfigConnectionSource = new DaoManager.TableConfigConnectionSource(paramConnectionSource, paramDatabaseTableConfig);
    Dao localDao1 = a(localTableConfigConnectionSource);
    if (localDao1 != null)
      return localDao1;
    Class localClass1 = paramDatabaseTableConfig.getDataClass();
    DaoManager.ClassConnectionSource localClassConnectionSource = new DaoManager.ClassConnectionSource(paramConnectionSource, localClass1);
    Dao localDao2 = a(localClassConnectionSource);
    if (localDao2 != null)
    {
      a(localTableConfigConnectionSource, localDao2);
      return localDao2;
    }
    DatabaseTable localDatabaseTable = (DatabaseTable)paramDatabaseTableConfig.getDataClass().getAnnotation(DatabaseTable.class);
    if ((localDatabaseTable == null) || (localDatabaseTable.daoClass() == Void.class) || (localDatabaseTable.daoClass() == BaseDaoImpl.class))
      localDao1 = BaseDaoImpl.createDao(paramConnectionSource, paramDatabaseTableConfig);
    while (true)
    {
      a(localTableConfigConnectionSource, localDao1);
      d.debug("created dao for class {} from table config", localClass1);
      if (a(localClassConnectionSource) != null)
        break;
      a(localClassConnectionSource, localDao1);
      return localDao1;
      Class localClass2 = localDatabaseTable.daoClass();
      Object[] arrayOfObject = { paramConnectionSource, paramDatabaseTableConfig };
      Constructor localConstructor = a(localClass2, arrayOfObject);
      if (localConstructor == null)
        throw new SQLException("Could not find public constructor with ConnectionSource, DatabaseTableConfig parameters in class " + localClass2);
      try
      {
        localDao1 = (Dao)localConstructor.newInstance(arrayOfObject);
      }
      catch (Exception localException)
      {
        throw SqlExceptionUtil.create("Could not call the constructor in class " + localClass2, localException);
      }
    }
  }

  private static Constructor<?> a(Class<?> paramClass, Object[] paramArrayOfObject)
  {
    Constructor[] arrayOfConstructor = paramClass.getConstructors();
    int i = arrayOfConstructor.length;
    int j = 0;
    Constructor localConstructor;
    int k;
    if (j < i)
    {
      localConstructor = arrayOfConstructor[j];
      Class[] arrayOfClass = localConstructor.getParameterTypes();
      if (arrayOfClass.length == paramArrayOfObject.length)
      {
        k = 0;
        label41: if (k >= arrayOfClass.length)
          break label92;
        if (arrayOfClass[k].isAssignableFrom(paramArrayOfObject[k].getClass()));
      }
    }
    label92: for (int m = 0; ; m = 1)
    {
      if (m != 0)
      {
        return localConstructor;
        k++;
        break label41;
      }
      j++;
      break;
      return null;
    }
  }

  private static void a(DaoManager.ClassConnectionSource paramClassConnectionSource, Dao<?, ?> paramDao)
  {
    if (BundlesManager == null)
      BundlesManager = new HashMap();
    BundlesManager.put(paramClassConnectionSource, paramDao);
  }

  private static void a(DaoManager.TableConfigConnectionSource paramTableConfigConnectionSource, Dao<?, ?> paramDao)
  {
    if (BundlesManagerImpl == null)
      BundlesManagerImpl = new HashMap();
    BundlesManagerImpl.put(paramTableConfigConnectionSource, paramDao);
  }

  public static void addCachedDatabaseConfigs(Collection<DatabaseTableConfig<?>> paramCollection)
  {
    HashMap localHashMap;
    while (true)
    {
      try
      {
        if (a == null)
        {
          localHashMap = new HashMap();
          Iterator localIterator = paramCollection.iterator();
          if (!localIterator.hasNext())
            break;
          DatabaseTableConfig localDatabaseTableConfig = (DatabaseTableConfig)localIterator.next();
          localHashMap.put(localDatabaseTableConfig.getDataClass(), localDatabaseTableConfig);
          d.info("Loaded configuration for {}", localDatabaseTableConfig.getDataClass());
          continue;
        }
      }
      finally
      {
      }
      localHashMap = new HashMap(a);
    }
    a = localHashMap;
  }

  public static void clearCache()
  {
    try
    {
      if (a != null)
      {
        a.clear();
        a = null;
      }
      clearDaoCache();
      return;
    }
    finally
    {
    }
  }

  public static void clearDaoCache()
  {
    try
    {
      if (BundlesManager != null)
      {
        BundlesManager.clear();
        BundlesManager = null;
      }
      if (BundlesManagerImpl != null)
      {
        BundlesManagerImpl.clear();
        BundlesManagerImpl = null;
      }
      return;
    }
    finally
    {
    }
  }

  public static <D extends Dao<T, ?>, T> D createDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    Dao localDao = a(paramConnectionSource, paramDatabaseTableConfig);
    return localDao;
  }

  public static <D extends Dao<T, ?>, T> D createDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    Dao localDao1 = a(new DaoManager.ClassConnectionSource(paramConnectionSource, paramClass));
    Dao localDao2 = localDao1;
    if (localDao2 != null);
    Dao localDao3;
    label58: 
    do
    {
      return localDao2;
      if (a != null)
        break;
      localDao3 = null;
      localDao2 = (Dao)localDao3;
    }
    while (localDao2 != null);
    DatabaseTable localDatabaseTable = (DatabaseTable)paramClass.getAnnotation(DatabaseTable.class);
    DatabaseTableConfig localDatabaseTableConfig1;
    if ((localDatabaseTable == null) || (localDatabaseTable.daoClass() == Void.class) || (localDatabaseTable.daoClass() == BaseDaoImpl.class))
    {
      localDatabaseTableConfig1 = paramConnectionSource.getDatabaseType().extractDatabaseTableConfig(paramConnectionSource, paramClass);
      if (localDatabaseTableConfig1 == null)
      {
        localDao2 = BaseDaoImpl.createDao(paramConnectionSource, paramClass);
        label134: d.debug("created dao for class {} with reflection", paramClass);
      }
    }
    while (true)
    {
      registerDao(paramConnectionSource, localDao2);
      break;
      DatabaseTableConfig localDatabaseTableConfig2 = (DatabaseTableConfig)a.get(paramClass);
      if (localDatabaseTableConfig2 == null)
      {
        localDao3 = null;
        break label58;
      }
      localDao3 = a(paramConnectionSource, localDatabaseTableConfig2);
      break label58;
      localDao2 = BaseDaoImpl.createDao(paramConnectionSource, localDatabaseTableConfig1);
      break label134;
      Class localClass = localDatabaseTable.daoClass();
      Object[] arrayOfObject = { paramConnectionSource, paramClass };
      Constructor localConstructor = a(localClass, arrayOfObject);
      if (localConstructor == null)
      {
        arrayOfObject = new Object[] { paramConnectionSource };
        localConstructor = a(localClass, arrayOfObject);
        if (localConstructor == null)
          throw new SQLException("Could not find public constructor with ConnectionSource and optional Class parameters " + localClass);
      }
      try
      {
        localDao2 = (Dao)localConstructor.newInstance(arrayOfObject);
        d.debug("created dao for class {} from constructor", paramClass);
      }
      catch (Exception localException)
      {
        throw SqlExceptionUtil.create("Could not call the constructor in class " + localClass, localException);
      }
    }
  }

  public static <D extends Dao<T, ?>, T> D lookupDao(ConnectionSource paramConnectionSource, DatabaseTableConfig<T> paramDatabaseTableConfig)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    Dao localDao1 = a(new DaoManager.TableConfigConnectionSource(paramConnectionSource, paramDatabaseTableConfig));
    Dao localDao2 = localDao1;
    if (localDao2 == null)
      localDao2 = null;
    return localDao2;
  }

  public static <D extends Dao<T, ?>, T> D lookupDao(ConnectionSource paramConnectionSource, Class<T> paramClass)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    Dao localDao = a(new DaoManager.ClassConnectionSource(paramConnectionSource, paramClass));
    return localDao;
  }

  public static void registerDao(ConnectionSource paramConnectionSource, Dao<?, ?> paramDao)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    a(new DaoManager.ClassConnectionSource(paramConnectionSource, paramDao.getDataClass()), paramDao);
  }

  public static void registerDaoWithTableConfig(ConnectionSource paramConnectionSource, Dao<?, ?> paramDao)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    if ((paramDao instanceof BaseDaoImpl))
    {
      DatabaseTableConfig localDatabaseTableConfig = ((BaseDaoImpl)paramDao).getTableConfig();
      if (localDatabaseTableConfig != null)
        a(new DaoManager.TableConfigConnectionSource(paramConnectionSource, localDatabaseTableConfig), paramDao);
    }
    while (true)
    {
      return;
      a(new DaoManager.ClassConnectionSource(paramConnectionSource, paramDao.getDataClass()), paramDao);
    }
  }

  public static void unregisterDao(ConnectionSource paramConnectionSource, Dao<?, ?> paramDao)
  {
    if (paramConnectionSource == null)
      try
      {
        throw new IllegalArgumentException("connectionSource argument cannot be null");
      }
      finally
      {
      }
    DaoManager.ClassConnectionSource localClassConnectionSource = new DaoManager.ClassConnectionSource(paramConnectionSource, paramDao.getDataClass());
    if (BundlesManager != null)
      BundlesManager.removeBundle(localClassConnectionSource);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.dao.DaoManager
 * JD-Core Version:    0.6.2
 */