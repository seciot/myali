package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class DeserializeBeanInfo
{
  private final Class<?> clazz;
  private Constructor<?> creatorConstructor;
  private Constructor<?> defaultConstructor;
  private Method factoryMethod;
  private final List<FieldInfo> fieldList = new ArrayList();
  private final Type type;

  public DeserializeBeanInfo(Class<?> paramClass)
  {
    this.clazz = paramClass;
    this.type = paramClass;
  }

  public static DeserializeBeanInfo computeSetters(Class<?> paramClass)
  {
    return computeSetters(paramClass, paramClass);
  }

  public static DeserializeBeanInfo computeSetters(Class<?> paramClass, Type paramType)
  {
    DeserializeBeanInfo localDeserializeBeanInfo = new DeserializeBeanInfo(paramClass);
    Constructor localConstructor1 = getDefaultConstructor(paramClass);
    int i3;
    label42: Method localMethod3;
    String str3;
    if (localConstructor1 != null)
    {
      localConstructor1.setAccessible(true);
      localDeserializeBeanInfo.setDefaultConstructor(localConstructor1);
      Method[] arrayOfMethod1 = paramClass.getMethods();
      int i2 = arrayOfMethod1.length;
      i3 = 0;
      if (i3 >= i2)
        break label768;
      localMethod3 = arrayOfMethod1[i3];
      str3 = localMethod3.getName();
      if ((str3.length() >= 4) && (!Modifier.isStatic(localMethod3.getModifiers())) && ((localMethod3.getReturnType().equals(Void.TYPE)) || (localMethod3.getReturnType().equals(paramClass))) && (localMethod3.getParameterTypes().length == 1))
      {
        JSONField localJSONField3 = (JSONField)localMethod3.getAnnotation(JSONField.class);
        if (localJSONField3 == null)
          break label614;
        if (localJSONField3.deserialize())
        {
          if (localJSONField3.name().length() == 0)
            break label614;
          localDeserializeBeanInfo.add(new FieldInfo(localJSONField3.name(), localMethod3, null, paramClass, paramType));
          localMethod3.setAccessible(true);
        }
      }
    }
    while (true)
    {
      i3++;
      break label42;
      if ((localConstructor1 != null) || (paramClass.isInterface()) || (Modifier.isAbstract(paramClass.getModifiers())))
        break;
      Constructor localConstructor2 = getCreatorConstructor(paramClass);
      if (localConstructor2 != null)
      {
        localConstructor2.setAccessible(true);
        localDeserializeBeanInfo.setCreatorConstructor(localConstructor2);
        for (int m = 0; m < localConstructor2.getParameterTypes().length; m++)
        {
          Annotation[] arrayOfAnnotation2 = localConstructor2.getParameterAnnotations()[m];
          int n = arrayOfAnnotation2.length;
          JSONField localJSONField2;
          for (int i1 = 0; ; i1++)
          {
            localJSONField2 = null;
            if (i1 < n)
            {
              Annotation localAnnotation2 = arrayOfAnnotation2[i1];
              if ((localAnnotation2 instanceof JSONField))
                localJSONField2 = (JSONField)localAnnotation2;
            }
            else
            {
              if (localJSONField2 != null)
                break;
              throw new JSONException("illegal json creator");
            }
          }
          Class localClass2 = localConstructor2.getParameterTypes()[m];
          Type localType2 = localConstructor2.getGenericParameterTypes()[m];
          Field localField2 = getField(paramClass, localJSONField2.name());
          if (localField2 != null)
            localField2.setAccessible(true);
          localDeserializeBeanInfo.add(new FieldInfo(localJSONField2.name(), paramClass, localClass2, localType2, null, localField2));
        }
        return localDeserializeBeanInfo;
      }
      Method localMethod1 = getFactoryMethod(paramClass);
      if (localMethod1 != null)
      {
        localMethod1.setAccessible(true);
        localDeserializeBeanInfo.setFactoryMethod(localMethod1);
        for (int i = 0; i < localMethod1.getParameterTypes().length; i++)
        {
          Annotation[] arrayOfAnnotation1 = localMethod1.getParameterAnnotations()[i];
          int j = arrayOfAnnotation1.length;
          JSONField localJSONField1;
          for (int k = 0; ; k++)
          {
            localJSONField1 = null;
            if (k < j)
            {
              Annotation localAnnotation1 = arrayOfAnnotation1[k];
              if ((localAnnotation1 instanceof JSONField))
                localJSONField1 = (JSONField)localAnnotation1;
            }
            else
            {
              if (localJSONField1 != null)
                break;
              throw new JSONException("illegal json creator");
            }
          }
          Class localClass1 = localMethod1.getParameterTypes()[i];
          Type localType1 = localMethod1.getGenericParameterTypes()[i];
          Field localField1 = getField(paramClass, localJSONField1.name());
          if (localField1 != null)
            localField1.setAccessible(true);
          localDeserializeBeanInfo.add(new FieldInfo(localJSONField1.name(), paramClass, localClass1, localType1, null, localField1));
        }
        return localDeserializeBeanInfo;
      }
      throw new JSONException("default constructor not found. " + paramClass);
      label614: if ((str3.startsWith("set")) && (Character.isUpperCase(str3.charAt(3))))
      {
        String str4 = Character.toLowerCase(str3.charAt(3)) + str3.substring(4);
        Field localField4 = getField(paramClass, str4);
        if (localField4 != null)
        {
          JSONField localJSONField4 = (JSONField)localField4.getAnnotation(JSONField.class);
          if ((localJSONField4 != null) && (localJSONField4.name().length() != 0))
            localDeserializeBeanInfo.add(new FieldInfo(localJSONField4.name(), localMethod3, localField4, paramClass, paramType));
        }
        else
        {
          localDeserializeBeanInfo.add(new FieldInfo(str4, localMethod3, null, paramClass, paramType));
          localMethod3.setAccessible(true);
        }
      }
    }
    label768: for (Field localField3 : paramClass.getFields())
      if ((!Modifier.isStatic(localField3.getModifiers())) && (Modifier.isPublic(localField3.getModifiers())))
      {
        Iterator localIterator = localDeserializeBeanInfo.getFieldList().iterator();
        int i8 = 0;
        while (localIterator.hasNext())
          if (((FieldInfo)localIterator.next()).getName().equals(localField3.getName()))
            i8 = 1;
        if (i8 == 0)
          localDeserializeBeanInfo.add(new FieldInfo(localField3.getName(), null, localField3));
      }
    for (Method localMethod2 : paramClass.getMethods())
    {
      String str1 = localMethod2.getName();
      if ((str1.length() >= 4) && (!Modifier.isStatic(localMethod2.getModifiers())) && (str1.startsWith("get")) && (Character.isUpperCase(str1.charAt(3))) && (localMethod2.getParameterTypes().length == 0) && (Collection.class.isAssignableFrom(localMethod2.getReturnType())))
      {
        String str2 = Character.toLowerCase(str1.charAt(3)) + str1.substring(4);
        if (localDeserializeBeanInfo.getField(str2) == null)
        {
          localDeserializeBeanInfo.add(new FieldInfo(str2, localMethod2, null, paramClass, paramType));
          localMethod2.setAccessible(true);
        }
      }
    }
    return localDeserializeBeanInfo;
  }

  public static Constructor<?> getCreatorConstructor(Class<?> paramClass)
  {
    for (Constructor localConstructor : paramClass.getDeclaredConstructors())
      if ((JSONCreator)localConstructor.getAnnotation(JSONCreator.class) != null)
        return localConstructor;
    return null;
  }

  public static Constructor<?> getDefaultConstructor(Class<?> paramClass)
  {
    boolean bool = Modifier.isAbstract(paramClass.getModifiers());
    Constructor<?> localConstructor = null;
    if (bool)
      return localConstructor;
    Constructor[] arrayOfConstructor1 = paramClass.getDeclaredConstructors();
    int i = arrayOfConstructor1.length;
    int j = 0;
    label28: Constructor localConstructor1;
    if (j < i)
    {
      localConstructor1 = arrayOfConstructor1[j];
      if (localConstructor1.getParameterTypes().length != 0);
    }
    while (true)
    {
      if ((localConstructor1 == null) && (paramClass.isMemberClass()) && (!Modifier.isStatic(paramClass.getModifiers())))
      {
        Constructor[] arrayOfConstructor2 = paramClass.getDeclaredConstructors();
        int k = arrayOfConstructor2.length;
        int m = 0;
        while (true)
          if (m < k)
          {
            localConstructor = arrayOfConstructor2[m];
            if ((localConstructor.getParameterTypes().length == 1) && (localConstructor.getParameterTypes()[0].equals(paramClass.getDeclaringClass())))
              break;
            m++;
            continue;
            j++;
            break label28;
          }
      }
      return localConstructor1;
      localConstructor1 = null;
    }
  }

  public static Method getFactoryMethod(Class<?> paramClass)
  {
    for (Method localMethod : paramClass.getDeclaredMethods())
      if ((Modifier.isStatic(localMethod.getModifiers())) && (paramClass.isAssignableFrom(localMethod.getReturnType())) && ((JSONCreator)localMethod.getAnnotation(JSONCreator.class) != null))
        return localMethod;
    return null;
  }

  public static Field getField(Class<?> paramClass, String paramString)
  {
    try
    {
      Field localField = paramClass.getDeclaredField(paramString);
      return localField;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public boolean add(FieldInfo paramFieldInfo)
  {
    Iterator localIterator = this.fieldList.iterator();
    while (localIterator.hasNext())
      if (((FieldInfo)localIterator.next()).getName().equals(paramFieldInfo.getName()))
        return false;
    this.fieldList.add(paramFieldInfo);
    return true;
  }

  public Class<?> getClazz()
  {
    return this.clazz;
  }

  public Constructor<?> getCreatorConstructor()
  {
    return this.creatorConstructor;
  }

  public Constructor<?> getDefaultConstructor()
  {
    return this.defaultConstructor;
  }

  public Method getFactoryMethod()
  {
    return this.factoryMethod;
  }

  public FieldInfo getField(String paramString)
  {
    Iterator localIterator = this.fieldList.iterator();
    while (localIterator.hasNext())
    {
      FieldInfo localFieldInfo = (FieldInfo)localIterator.next();
      if (localFieldInfo.getName().equals(paramString))
        return localFieldInfo;
    }
    return null;
  }

  public List<FieldInfo> getFieldList()
  {
    return this.fieldList;
  }

  public Type getType()
  {
    return this.type;
  }

  public void setCreatorConstructor(Constructor<?> paramConstructor)
  {
    this.creatorConstructor = paramConstructor;
  }

  public void setDefaultConstructor(Constructor<?> paramConstructor)
  {
    this.defaultConstructor = paramConstructor;
  }

  public void setFactoryMethod(Method paramMethod)
  {
    this.factoryMethod = paramMethod;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.DeserializeBeanInfo
 * JD-Core Version:    0.6.2
 */