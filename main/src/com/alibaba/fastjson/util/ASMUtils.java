package com.alibaba.fastjson.util;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class ASMUtils
{
  public static String getDesc(Class<?> paramClass)
  {
    if (paramClass.isPrimitive())
      return getPrimitiveLetter(paramClass);
    if (paramClass.isArray())
      return "[" + getDesc(paramClass.getComponentType());
    return "L" + getType(paramClass) + ";";
  }

  public static String getDesc(Constructor<?> paramConstructor)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("(");
    Class[] arrayOfClass = paramConstructor.getParameterTypes();
    for (int i = 0; i < arrayOfClass.length; i++)
      localStringBuffer.append(getDesc(arrayOfClass[i]));
    localStringBuffer.append(")V");
    return localStringBuffer.toString();
  }

  public static String getDesc(Method paramMethod)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("(");
    Class[] arrayOfClass = paramMethod.getParameterTypes();
    for (int i = 0; i < arrayOfClass.length; i++)
      localStringBuffer.append(getDesc(arrayOfClass[i]));
    localStringBuffer.append(")");
    localStringBuffer.append(getDesc(paramMethod.getReturnType()));
    return localStringBuffer.toString();
  }

  public static Type getFieldType(Class<?> paramClass, String paramString)
  {
    try
    {
      Type localType = paramClass.getField(paramString).getGenericType();
      return localType;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static Type getMethodType(Class<?> paramClass, String paramString)
  {
    try
    {
      Type localType = paramClass.getMethod(paramString, new Class[0]).getGenericReturnType();
      return localType;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String getPrimitiveLetter(Class<?> paramClass)
  {
    if (Integer.TYPE.equals(paramClass))
      return "I";
    if (Void.TYPE.equals(paramClass))
      return "V";
    if (Boolean.TYPE.equals(paramClass))
      return "Z";
    if (Character.TYPE.equals(paramClass))
      return "C";
    if (Byte.TYPE.equals(paramClass))
      return "B";
    if (Short.TYPE.equals(paramClass))
      return "S";
    if (Float.TYPE.equals(paramClass))
      return "F";
    if (Long.TYPE.equals(paramClass))
      return "J";
    if (Double.TYPE.equals(paramClass))
      return "D";
    throw new IllegalStateException("Type: " + paramClass.getCanonicalName() + " is not a primitive type");
  }

  public static String getType(Class<?> paramClass)
  {
    if (paramClass.isArray())
      return "[" + getDesc(paramClass.getComponentType());
    if (!paramClass.isPrimitive())
      return paramClass.getName().replaceAll("\\.", "/");
    return getPrimitiveLetter(paramClass);
  }

  public static boolean isAndroid()
  {
    return isAndroid(System.getProperty("java.vm.name"));
  }

  public static boolean isAndroid(String paramString)
  {
    return ("Dalvik".equals(paramString)) || ("Lemur".equals(paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.ASMUtils
 * JD-Core Version:    0.6.2
 */