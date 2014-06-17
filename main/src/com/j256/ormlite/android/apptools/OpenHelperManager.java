package com.j256.ormlite.android.apptools;

import android.content.Context;
import android.content.res.Resources;
import com.j256.ormlite.dao.BaseDaoImpl;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class OpenHelperManager
{
  private static Logger a = LoggerFactory.getLogger(OpenHelperManager.class);
  private static Class<? extends OrmLiteSqliteOpenHelper> b = null;
  private static volatile OrmLiteSqliteOpenHelper c = null;
  private static boolean d = false;
  private static int e = 0;

  private static <T extends OrmLiteSqliteOpenHelper> T a(Context paramContext)
  {
    if (c == null)
    {
      if (d)
        a.info("helper was already closed and is being re-opened");
      if (paramContext == null)
        throw new IllegalArgumentException("context argument is null");
      c = a(paramContext.getApplicationContext(), b);
      a.trace("zero instances, created helper {}", c);
      BaseDaoImpl.clearAllInternalObjectCaches();
      DaoManager.clearDaoCache();
      e = 0;
    }
    e = 1 + e;
    a.trace("returning helper {}, instance count = {} ", c, Integer.valueOf(e));
    return c;
  }

  // ERROR //
  private static OrmLiteSqliteOpenHelper a(Context paramContext, Class<? extends OrmLiteSqliteOpenHelper> paramClass)
  {
    // Byte code:
    //   0: aload_1
    //   1: iconst_1
    //   2: anewarray 91	java/lang/Class
    //   5: dup
    //   6: iconst_0
    //   7: ldc 53
    //   9: aastore
    //   10: invokevirtual 95	java/lang/Class:getConstructor	([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    //   13: astore_3
    //   14: aload_3
    //   15: iconst_1
    //   16: anewarray 4	java/lang/Object
    //   19: dup
    //   20: iconst_0
    //   21: aload_0
    //   22: aastore
    //   23: invokevirtual 101	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   26: checkcast 103	com/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper
    //   29: astore 5
    //   31: aload 5
    //   33: areturn
    //   34: astore_2
    //   35: new 105	java/lang/IllegalStateException
    //   38: dup
    //   39: new 107	java/lang/StringBuilder
    //   42: dup
    //   43: ldc 109
    //   45: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: aload_2
    //   56: invokespecial 121	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   59: athrow
    //   60: astore 4
    //   62: new 105	java/lang/IllegalStateException
    //   65: dup
    //   66: new 107	java/lang/StringBuilder
    //   69: dup
    //   70: ldc 123
    //   72: invokespecial 110	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_1
    //   76: invokevirtual 114	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   79: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: aload 4
    //   84: invokespecial 121	java/lang/IllegalStateException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   87: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	34	java/lang/Exception
    //   14	31	60	java/lang/Exception
  }

  private static void a(Class<? extends OrmLiteSqliteOpenHelper> paramClass)
  {
    if (b == null)
      b = paramClass;
    while (b == paramClass)
      return;
    throw new IllegalStateException("Helper class was " + b + " but is trying to be reset to " + paramClass);
  }

  private static Class<? extends OrmLiteSqliteOpenHelper> b(Context paramContext, Class<?> paramClass)
  {
    Resources localResources = paramContext.getResources();
    int i = localResources.getIdentifier("open_helper_classname", "string", paramContext.getPackageName());
    Class localClass1;
    if (i != 0)
    {
      String str = localResources.getString(i);
      try
      {
        Class localClass2 = Class.forName(str);
        localClass1 = localClass2;
        return localClass1;
      }
      catch (Exception localException)
      {
        throw new IllegalStateException("Could not create helper instance for class " + str, localException);
      }
    }
    label176: for (Object localObject = paramClass; ; localObject = ((Class)localObject).getSuperclass())
    {
      if (localObject == null)
        break label186;
      Type localType1 = ((Class)localObject).getGenericSuperclass();
      if ((localType1 != null) && ((localType1 instanceof ParameterizedType)))
      {
        Type[] arrayOfType = ((ParameterizedType)localType1).getActualTypeArguments();
        if ((arrayOfType != null) && (arrayOfType.length != 0))
        {
          int j = arrayOfType.length;
          for (int k = 0; ; k++)
          {
            if (k >= j)
              break label176;
            Type localType2 = arrayOfType[k];
            if ((localType2 instanceof Class))
            {
              localClass1 = (Class)localType2;
              if (OrmLiteSqliteOpenHelper.class.isAssignableFrom(localClass1))
                break;
            }
          }
        }
      }
    }
    label186: throw new IllegalStateException("Could not find OpenHelperClass because none of the generic parameters of class " + paramClass + " extends OrmLiteSqliteOpenHelper.  You should use getHelper(Context, Class) instead.");
  }

  @Deprecated
  public static OrmLiteSqliteOpenHelper getHelper(Context paramContext)
  {
    try
    {
      if (b != null)
        break label43;
      if (paramContext == null)
        throw new IllegalArgumentException("context argument is null");
    }
    finally
    {
    }
    a(b(paramContext.getApplicationContext(), paramContext.getClass()));
    label43: OrmLiteSqliteOpenHelper localOrmLiteSqliteOpenHelper = a(paramContext);
    return localOrmLiteSqliteOpenHelper;
  }

  public static <T extends OrmLiteSqliteOpenHelper> T getHelper(Context paramContext, Class<T> paramClass)
  {
    try
    {
      a(paramClass);
      OrmLiteSqliteOpenHelper localOrmLiteSqliteOpenHelper = a(paramContext);
      return localOrmLiteSqliteOpenHelper;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  @Deprecated
  public static void release()
  {
    releaseHelper();
  }

  public static void releaseHelper()
  {
    try
    {
      e = -1 + e;
      a.trace("releasing helper {}, instance count = {}", c, Integer.valueOf(e));
      if (e <= 0)
      {
        if (c != null)
        {
          a.trace("zero instances, closing helper {}", c);
          c.close();
          c = null;
          d = true;
        }
        if (e < 0)
          a.error("too many calls to release helper, instance count = {}", Integer.valueOf(e));
      }
      return;
    }
    finally
    {
    }
  }

  public static void setHelper(OrmLiteSqliteOpenHelper paramOrmLiteSqliteOpenHelper)
  {
    try
    {
      c = paramOrmLiteSqliteOpenHelper;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void setOpenHelperClass(Class<? extends OrmLiteSqliteOpenHelper> paramClass)
  {
    if (paramClass == null);
    try
    {
      b = null;
      while (true)
      {
        return;
        a(paramClass);
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.apptools.OpenHelperManager
 * JD-Core Version:    0.6.2
 */