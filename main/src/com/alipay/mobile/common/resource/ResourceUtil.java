package com.alipay.mobile.common.resource;

import android.content.Context;
import java.lang.reflect.Field;

public class ResourceUtil
{
  public static final int[] getResourceDeclareStyleableIntArray(Context paramContext, String paramString)
  {
    try
    {
      Field[] arrayOfField = Class.forName(paramContext.getPackageName() + ".R$styleable").getFields();
      int i = arrayOfField.length;
      for (int j = 0; ; j++)
      {
        int[] arrayOfInt = null;
        if (j < i)
        {
          Field localField = arrayOfField[j];
          if (paramString.equals(localField.getName()))
            arrayOfInt = (int[])localField.get(null);
        }
        else
        {
          return arrayOfInt;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      throw new RuntimeException(localThrowable);
    }
  }

  public static final int getResourceInt(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      for (Field localField : Class.forName(paramContext.getPackageName() + ".R$" + paramString1).getFields())
        if (paramString2.equals(localField.getName()))
        {
          int k = ((Integer)localField.get(null)).intValue();
          return k;
        }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException(localClassNotFoundException);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      throw new RuntimeException(localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException(localIllegalAccessException);
    }
    return -1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.resource.ResourceUtil
 * JD-Core Version:    0.6.2
 */