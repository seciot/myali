package com.alibaba.fastjson.util;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

public class FieldInfo
  implements Comparable<FieldInfo>
{
  private final Class<?> declaringClass;
  private final Field field;
  private final Class<?> fieldClass;
  private final Type fieldType;
  private boolean getOnly = false;
  private final Method method;
  private final String name;

  public FieldInfo(String paramString, Class<?> paramClass1, Class<?> paramClass2, Type paramType, Method paramMethod, Field paramField)
  {
    this.name = paramString;
    this.declaringClass = paramClass1;
    this.fieldClass = paramClass2;
    this.fieldType = paramType;
    this.method = paramMethod;
    this.field = paramField;
    if (paramMethod != null)
      paramMethod.setAccessible(true);
    if (paramField != null)
      paramField.setAccessible(true);
  }

  public FieldInfo(String paramString, Method paramMethod, Field paramField)
  {
    this(paramString, paramMethod, paramField, null, null);
  }

  public FieldInfo(String paramString, Method paramMethod, Field paramField, Class<?> paramClass, Type paramType)
  {
    this.name = paramString;
    this.method = paramMethod;
    this.field = paramField;
    if (paramMethod != null)
      paramMethod.setAccessible(true);
    if (paramField != null)
      paramField.setAccessible(true);
    Class localClass3;
    Type localType1;
    Class localClass1;
    if (paramMethod != null)
      if (paramMethod.getParameterTypes().length == 1)
      {
        localClass3 = paramMethod.getParameterTypes()[0];
        localType1 = paramMethod.getGenericParameterTypes()[0];
        this.declaringClass = paramMethod.getDeclaringClass();
        localClass1 = localClass3;
      }
    while (true)
    {
      if ((paramClass == null) || (localClass1 != Object.class) || (!(localType1 instanceof TypeVariable)))
        break label179;
      Type localType3 = getInheritGenericType(paramClass, (TypeVariable)localType1);
      if (localType3 == null)
        break label179;
      this.fieldClass = TypeUtils.getClass(localType3);
      this.fieldType = localType3;
      return;
      localClass3 = paramMethod.getReturnType();
      localType1 = paramMethod.getGenericReturnType();
      this.getOnly = true;
      break;
      localClass1 = paramField.getType();
      localType1 = paramField.getGenericType();
      this.declaringClass = paramField.getDeclaringClass();
    }
    label179: Type localType2 = getFieldType(paramClass, paramType, localType1);
    Class localClass2;
    if (localType2 != localType1)
      if ((localType2 instanceof ParameterizedType))
        localClass2 = TypeUtils.getClass(localType2);
    while (true)
    {
      this.fieldType = localType2;
      this.fieldClass = localClass2;
      return;
      if ((localType2 instanceof Class))
        localClass2 = TypeUtils.getClass(localType2);
      else
        localClass2 = localClass1;
    }
  }

  public static Type getFieldType(Class<?> paramClass, Type paramType1, Type paramType2)
  {
    if ((paramClass == null) || (paramType1 == null));
    while (true)
    {
      return paramType2;
      if (((paramType1 instanceof ParameterizedType)) && ((paramType2 instanceof TypeVariable)))
      {
        ParameterizedType localParameterizedType = (ParameterizedType)paramType1;
        TypeVariable localTypeVariable = (TypeVariable)paramType2;
        for (int i = 0; i < paramClass.getTypeParameters().length; i++)
          if (paramClass.getTypeParameters()[i].getName().equals(localTypeVariable.getName()))
            return localParameterizedType.getActualTypeArguments()[i];
      }
    }
  }

  public static Type getInheritGenericType(Class<?> paramClass, TypeVariable<?> paramTypeVariable)
  {
    GenericDeclaration localGenericDeclaration = paramTypeVariable.getGenericDeclaration();
    Type localType;
    do
    {
      localType = paramClass.getGenericSuperclass();
      if (localType == null)
        return null;
      if ((localType instanceof ParameterizedType))
      {
        ParameterizedType localParameterizedType = (ParameterizedType)localType;
        if (localParameterizedType.getRawType() == localGenericDeclaration)
        {
          TypeVariable[] arrayOfTypeVariable = localGenericDeclaration.getTypeParameters();
          Type[] arrayOfType = localParameterizedType.getActualTypeArguments();
          for (int i = 0; i < arrayOfTypeVariable.length; i++)
            if (arrayOfTypeVariable[i] == paramTypeVariable)
              return arrayOfType[i];
          return null;
        }
      }
      paramClass = TypeUtils.getClass(localType);
    }
    while (localType != null);
    return null;
  }

  public int compareTo(FieldInfo paramFieldInfo)
  {
    return this.name.compareTo(paramFieldInfo.name);
  }

  public Object get(Object paramObject)
  {
    if (this.method != null)
      return this.method.invoke(paramObject, new Object[0]);
    return this.field.get(paramObject);
  }

  public <T extends Annotation> T getAnnotation(Class<T> paramClass)
  {
    Method localMethod = this.method;
    Annotation localAnnotation = null;
    if (localMethod != null)
      localAnnotation = this.method.getAnnotation(paramClass);
    if ((localAnnotation == null) && (this.field != null))
      localAnnotation = this.field.getAnnotation(paramClass);
    return localAnnotation;
  }

  public Class<?> getDeclaringClass()
  {
    return this.declaringClass;
  }

  public Field getField()
  {
    return this.field;
  }

  public Class<?> getFieldClass()
  {
    return this.fieldClass;
  }

  public Type getFieldType()
  {
    return this.fieldType;
  }

  public Method getMethod()
  {
    return this.method;
  }

  public String getName()
  {
    return this.name;
  }

  public boolean isGetOnly()
  {
    return this.getOnly;
  }

  public void set(Object paramObject1, Object paramObject2)
  {
    if (this.method != null)
    {
      this.method.invoke(paramObject1, new Object[] { paramObject2 });
      return;
    }
    this.field.set(paramObject1, paramObject2);
  }

  public void setAccessible(boolean paramBoolean)
  {
    if (this.method != null)
    {
      this.method.setAccessible(paramBoolean);
      return;
    }
    this.field.setAccessible(paramBoolean);
  }

  public String toString()
  {
    return this.name;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.FieldInfo
 * JD-Core Version:    0.6.2
 */