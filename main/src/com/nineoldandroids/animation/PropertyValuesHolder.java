package com.nineoldandroids.animation;

import android.util.Log;
import com.nineoldandroids.util.Property;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class PropertyValuesHolder
  implements Cloneable
{
  private static final TypeEvaluator b = new IntEvaluator();
  private static final TypeEvaluator c = new FloatEvaluator();
  private static Class[] d;
  private static Class[] e;
  private static Class[] f = arrayOfClass3;
  private static final HashMap<Class, HashMap<String, Method>> g = new HashMap();
  private static final HashMap<Class, HashMap<String, Method>> h = new HashMap();
  private Method a = null;
  private TypeEvaluator i;
  private Object j;
  KeyframeSet mKeyframeSet = null;
  protected Property mProperty;
  final ReentrantReadWriteLock mPropertyMapLock = new ReentrantReadWriteLock();
  String mPropertyName;
  Method mSetter = null;
  final Object[] mTmpValueArray = new Object[1];
  Class mValueType;

  static
  {
    Class[] arrayOfClass1 = new Class[6];
    arrayOfClass1[0] = Float.TYPE;
    arrayOfClass1[1] = Float.class;
    arrayOfClass1[2] = Double.TYPE;
    arrayOfClass1[3] = Integer.TYPE;
    arrayOfClass1[4] = Double.class;
    arrayOfClass1[5] = Integer.class;
    d = arrayOfClass1;
    Class[] arrayOfClass2 = new Class[6];
    arrayOfClass2[0] = Integer.TYPE;
    arrayOfClass2[1] = Integer.class;
    arrayOfClass2[2] = Float.TYPE;
    arrayOfClass2[3] = Double.TYPE;
    arrayOfClass2[4] = Float.class;
    arrayOfClass2[5] = Double.class;
    e = arrayOfClass2;
    Class[] arrayOfClass3 = new Class[6];
    arrayOfClass3[0] = Double.TYPE;
    arrayOfClass3[1] = Double.class;
    arrayOfClass3[2] = Float.TYPE;
    arrayOfClass3[3] = Integer.TYPE;
    arrayOfClass3[4] = Float.class;
    arrayOfClass3[5] = Integer.class;
  }

  private PropertyValuesHolder(Property paramProperty)
  {
    this.mProperty = paramProperty;
    if (paramProperty != null)
      this.mPropertyName = paramProperty.getName();
  }

  private PropertyValuesHolder(String paramString)
  {
    this.mPropertyName = paramString;
  }

  private Method a(Class paramClass1, String paramString, Class paramClass2)
  {
    Method localMethod1 = null;
    String str = getMethodName(paramString, this.mPropertyName);
    if (paramClass2 == null)
      try
      {
        Method localMethod4 = paramClass1.getMethod(str, null);
        return localMethod4;
      }
      catch (NoSuchMethodException localNoSuchMethodException3)
      {
      }
    try
    {
      Method localMethod3 = paramClass1.getDeclaredMethod(str, null);
      localMethod2 = localMethod3;
      try
      {
        localMethod2.setAccessible(true);
        return localMethod2;
      }
      catch (NoSuchMethodException localNoSuchMethodException5)
      {
      }
      Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.mPropertyName + ": " + localNoSuchMethodException3);
      return localMethod2;
      Class[] arrayOfClass1 = new Class[1];
      Class[] arrayOfClass2;
      int k;
      int m;
      if (this.mValueType.equals(Float.class))
      {
        arrayOfClass2 = d;
        k = arrayOfClass2.length;
        m = 0;
      }
      while (true)
        while (true)
        {
          if (m >= k)
            break label255;
          Class localClass = arrayOfClass2[m];
          arrayOfClass1[0] = localClass;
          try
          {
            localMethod1 = paramClass1.getMethod(str, arrayOfClass1);
            this.mValueType = localClass;
            return localMethod1;
            if (this.mValueType.equals(Integer.class))
            {
              arrayOfClass2 = e;
              break;
            }
            if (this.mValueType.equals(Double.class))
            {
              arrayOfClass2 = f;
              break;
            }
            arrayOfClass2 = new Class[1];
            arrayOfClass2[0] = this.mValueType;
          }
          catch (NoSuchMethodException localNoSuchMethodException1)
          {
            try
            {
              localMethod1 = paramClass1.getDeclaredMethod(str, arrayOfClass1);
              localMethod1.setAccessible(true);
              this.mValueType = localClass;
              return localMethod1;
            }
            catch (NoSuchMethodException localNoSuchMethodException2)
            {
              m++;
            }
          }
        }
      label255: Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.mPropertyName + " with value type " + this.mValueType);
      return localMethod1;
    }
    catch (NoSuchMethodException localNoSuchMethodException4)
    {
      while (true)
        Method localMethod2 = null;
    }
  }

  private Method a(Class paramClass1, HashMap<Class, HashMap<String, Method>> paramHashMap, String paramString, Class paramClass2)
  {
    try
    {
      this.mPropertyMapLock.writeLock().lock();
      HashMap localHashMap = (HashMap)paramHashMap.get(paramClass1);
      Method localMethod1 = null;
      if (localHashMap != null)
        localMethod1 = (Method)localHashMap.get(this.mPropertyName);
      if (localMethod1 == null)
      {
        localMethod1 = a(paramClass1, paramString, paramClass2);
        if (localHashMap == null)
        {
          localHashMap = new HashMap();
          paramHashMap.put(paramClass1, localHashMap);
        }
        localHashMap.put(this.mPropertyName, localMethod1);
      }
      Method localMethod2 = localMethod1;
      return localMethod2;
    }
    finally
    {
      this.mPropertyMapLock.writeLock().unlock();
    }
  }

  private void a(Class paramClass)
  {
    this.a = a(paramClass, h, "get", null);
  }

  private void a(Object paramObject, Keyframe paramKeyframe)
  {
    if (this.mProperty != null)
      paramKeyframe.setValue(this.mProperty.get(paramObject));
    try
    {
      if (this.a == null)
        a(paramObject.getClass());
      paramKeyframe.setValue(this.a.invoke(paramObject, new Object[0]));
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
    }
  }

  static String getMethodName(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0))
      return paramString1;
    char c1 = Character.toUpperCase(paramString2.charAt(0));
    String str = paramString2.substring(1);
    return paramString1 + c1 + str;
  }

  public static PropertyValuesHolder ofFloat(Property<?, Float> paramProperty, float[] paramArrayOfFloat)
  {
    return new PropertyValuesHolder.FloatPropertyValuesHolder(paramProperty, paramArrayOfFloat);
  }

  public static PropertyValuesHolder ofFloat(String paramString, float[] paramArrayOfFloat)
  {
    return new PropertyValuesHolder.FloatPropertyValuesHolder(paramString, paramArrayOfFloat);
  }

  public static PropertyValuesHolder ofInt(Property<?, Integer> paramProperty, int[] paramArrayOfInt)
  {
    return new PropertyValuesHolder.IntPropertyValuesHolder(paramProperty, paramArrayOfInt);
  }

  public static PropertyValuesHolder ofInt(String paramString, int[] paramArrayOfInt)
  {
    return new PropertyValuesHolder.IntPropertyValuesHolder(paramString, paramArrayOfInt);
  }

  public static PropertyValuesHolder ofKeyframe(Property paramProperty, Keyframe[] paramArrayOfKeyframe)
  {
    KeyframeSet localKeyframeSet = KeyframeSet.ofKeyframe(paramArrayOfKeyframe);
    if ((localKeyframeSet instanceof IntKeyframeSet))
      return new PropertyValuesHolder.IntPropertyValuesHolder(paramProperty, (IntKeyframeSet)localKeyframeSet);
    if ((localKeyframeSet instanceof FloatKeyframeSet))
      return new PropertyValuesHolder.FloatPropertyValuesHolder(paramProperty, (FloatKeyframeSet)localKeyframeSet);
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramProperty);
    localPropertyValuesHolder.mKeyframeSet = localKeyframeSet;
    localPropertyValuesHolder.mValueType = paramArrayOfKeyframe[0].getType();
    return localPropertyValuesHolder;
  }

  public static PropertyValuesHolder ofKeyframe(String paramString, Keyframe[] paramArrayOfKeyframe)
  {
    KeyframeSet localKeyframeSet = KeyframeSet.ofKeyframe(paramArrayOfKeyframe);
    if ((localKeyframeSet instanceof IntKeyframeSet))
      return new PropertyValuesHolder.IntPropertyValuesHolder(paramString, (IntKeyframeSet)localKeyframeSet);
    if ((localKeyframeSet instanceof FloatKeyframeSet))
      return new PropertyValuesHolder.FloatPropertyValuesHolder(paramString, (FloatKeyframeSet)localKeyframeSet);
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramString);
    localPropertyValuesHolder.mKeyframeSet = localKeyframeSet;
    localPropertyValuesHolder.mValueType = paramArrayOfKeyframe[0].getType();
    return localPropertyValuesHolder;
  }

  public static <V> PropertyValuesHolder ofObject(Property paramProperty, TypeEvaluator<V> paramTypeEvaluator, V[] paramArrayOfV)
  {
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramProperty);
    localPropertyValuesHolder.setObjectValues(paramArrayOfV);
    localPropertyValuesHolder.setEvaluator(paramTypeEvaluator);
    return localPropertyValuesHolder;
  }

  public static PropertyValuesHolder ofObject(String paramString, TypeEvaluator paramTypeEvaluator, Object[] paramArrayOfObject)
  {
    PropertyValuesHolder localPropertyValuesHolder = new PropertyValuesHolder(paramString);
    localPropertyValuesHolder.setObjectValues(paramArrayOfObject);
    localPropertyValuesHolder.setEvaluator(paramTypeEvaluator);
    return localPropertyValuesHolder;
  }

  void calculateValue(float paramFloat)
  {
    this.j = this.mKeyframeSet.getValue(paramFloat);
  }

  public PropertyValuesHolder clone()
  {
    try
    {
      PropertyValuesHolder localPropertyValuesHolder = (PropertyValuesHolder)super.clone();
      localPropertyValuesHolder.mPropertyName = this.mPropertyName;
      localPropertyValuesHolder.mProperty = this.mProperty;
      localPropertyValuesHolder.mKeyframeSet = this.mKeyframeSet.clone();
      localPropertyValuesHolder.i = this.i;
      return localPropertyValuesHolder;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
    }
    return null;
  }

  Object getAnimatedValue()
  {
    return this.j;
  }

  public String getPropertyName()
  {
    return this.mPropertyName;
  }

  void init()
  {
    TypeEvaluator localTypeEvaluator;
    if (this.i == null)
    {
      if (this.mValueType != Integer.class)
        break label44;
      localTypeEvaluator = b;
    }
    while (true)
    {
      this.i = localTypeEvaluator;
      if (this.i != null)
        this.mKeyframeSet.setEvaluator(this.i);
      return;
      label44: if (this.mValueType == Float.class)
        localTypeEvaluator = c;
      else
        localTypeEvaluator = null;
    }
  }

  void setAnimatedValue(Object paramObject)
  {
    if (this.mProperty != null)
      this.mProperty.set(paramObject, getAnimatedValue());
    if (this.mSetter != null);
    try
    {
      this.mTmpValueArray[0] = getAnimatedValue();
      this.mSetter.invoke(paramObject, this.mTmpValueArray);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
    }
  }

  public void setEvaluator(TypeEvaluator paramTypeEvaluator)
  {
    this.i = paramTypeEvaluator;
    this.mKeyframeSet.setEvaluator(paramTypeEvaluator);
  }

  public void setFloatValues(float[] paramArrayOfFloat)
  {
    this.mValueType = Float.TYPE;
    this.mKeyframeSet = KeyframeSet.ofFloat(paramArrayOfFloat);
  }

  public void setIntValues(int[] paramArrayOfInt)
  {
    this.mValueType = Integer.TYPE;
    this.mKeyframeSet = KeyframeSet.ofInt(paramArrayOfInt);
  }

  public void setKeyframes(Keyframe[] paramArrayOfKeyframe)
  {
    int k = 0;
    int m = paramArrayOfKeyframe.length;
    Keyframe[] arrayOfKeyframe = new Keyframe[Math.max(m, 2)];
    this.mValueType = paramArrayOfKeyframe[0].getType();
    while (k < m)
    {
      arrayOfKeyframe[k] = paramArrayOfKeyframe[k];
      k++;
    }
    this.mKeyframeSet = new KeyframeSet(arrayOfKeyframe);
  }

  public void setObjectValues(Object[] paramArrayOfObject)
  {
    this.mValueType = paramArrayOfObject[0].getClass();
    this.mKeyframeSet = KeyframeSet.ofObject(paramArrayOfObject);
  }

  public void setProperty(Property paramProperty)
  {
    this.mProperty = paramProperty;
  }

  public void setPropertyName(String paramString)
  {
    this.mPropertyName = paramString;
  }

  void setupEndValue(Object paramObject)
  {
    a(paramObject, (Keyframe)this.mKeyframeSet.mKeyframes.get(-1 + this.mKeyframeSet.mKeyframes.size()));
  }

  void setupSetter(Class paramClass)
  {
    this.mSetter = a(paramClass, g, "set", this.mValueType);
  }

  void setupSetterAndGetter(Object paramObject)
  {
    if (this.mProperty != null)
    {
      try
      {
        this.mProperty.get(paramObject);
        Iterator localIterator2 = this.mKeyframeSet.mKeyframes.iterator();
        while (localIterator2.hasNext())
        {
          Keyframe localKeyframe2 = (Keyframe)localIterator2.next();
          if (!localKeyframe2.hasValue())
            localKeyframe2.setValue(this.mProperty.get(paramObject));
        }
      }
      catch (ClassCastException localClassCastException)
      {
        Log.e("PropertyValuesHolder", "No such property (" + this.mProperty.getName() + ") on target object " + paramObject + ". Trying reflection instead");
        this.mProperty = null;
      }
    }
    else
    {
      Class localClass = paramObject.getClass();
      if (this.mSetter == null)
        setupSetter(localClass);
      Iterator localIterator1 = this.mKeyframeSet.mKeyframes.iterator();
      while (localIterator1.hasNext())
      {
        Keyframe localKeyframe1 = (Keyframe)localIterator1.next();
        if (!localKeyframe1.hasValue())
        {
          if (this.a == null)
            a(localClass);
          try
          {
            localKeyframe1.setValue(this.a.invoke(paramObject, new Object[0]));
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
          }
        }
      }
    }
  }

  void setupStartValue(Object paramObject)
  {
    a(paramObject, (Keyframe)this.mKeyframeSet.mKeyframes.get(0));
  }

  public String toString()
  {
    return this.mPropertyName + ": " + this.mKeyframeSet.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PropertyValuesHolder
 * JD-Core Version:    0.6.2
 */