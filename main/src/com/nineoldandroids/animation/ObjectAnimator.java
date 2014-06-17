package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.Property;
import com.nineoldandroids.view.animation.AnimatorProxy;
import java.util.HashMap;
import java.util.Map;

public final class ObjectAnimator extends ValueAnimator
{
  private static final Map<String, Property> a;
  private Object b;
  private String c;
  private Property d;

  static
  {
    HashMap localHashMap = new HashMap();
    a = localHashMap;
    localHashMap.put("alpha", PreHoneycombCompat.ALPHA);
    a.put("pivotX", PreHoneycombCompat.PIVOT_X);
    a.put("pivotY", PreHoneycombCompat.PIVOT_Y);
    a.put("translationX", PreHoneycombCompat.TRANSLATION_X);
    a.put("translationY", PreHoneycombCompat.TRANSLATION_Y);
    a.put("rotation", PreHoneycombCompat.ROTATION);
    a.put("rotationX", PreHoneycombCompat.ROTATION_X);
    a.put("rotationY", PreHoneycombCompat.ROTATION_Y);
    a.put("scaleX", PreHoneycombCompat.SCALE_X);
    a.put("scaleY", PreHoneycombCompat.SCALE_Y);
    a.put("scrollX", PreHoneycombCompat.SCROLL_X);
    a.put("scrollY", PreHoneycombCompat.SCROLL_Y);
    a.put("x", PreHoneycombCompat.X);
    a.put("y", PreHoneycombCompat.Y);
  }

  public ObjectAnimator()
  {
  }

  private <T> ObjectAnimator(T paramT, Property<T, ?> paramProperty)
  {
    this.b = paramT;
    setProperty(paramProperty);
  }

  private ObjectAnimator(Object paramObject, String paramString)
  {
    this.b = paramObject;
    setPropertyName(paramString);
  }

  public static <T> ObjectAnimator ofFloat(T paramT, Property<T, Float> paramProperty, float[] paramArrayOfFloat)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramT, paramProperty);
    localObjectAnimator.setFloatValues(paramArrayOfFloat);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofFloat(Object paramObject, String paramString, float[] paramArrayOfFloat)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramObject, paramString);
    localObjectAnimator.setFloatValues(paramArrayOfFloat);
    return localObjectAnimator;
  }

  public static <T> ObjectAnimator ofInt(T paramT, Property<T, Integer> paramProperty, int[] paramArrayOfInt)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramT, paramProperty);
    localObjectAnimator.setIntValues(paramArrayOfInt);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofInt(Object paramObject, String paramString, int[] paramArrayOfInt)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramObject, paramString);
    localObjectAnimator.setIntValues(paramArrayOfInt);
    return localObjectAnimator;
  }

  public static <T, V> ObjectAnimator ofObject(T paramT, Property<T, V> paramProperty, TypeEvaluator<V> paramTypeEvaluator, V[] paramArrayOfV)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramT, paramProperty);
    localObjectAnimator.setObjectValues(paramArrayOfV);
    localObjectAnimator.setEvaluator(paramTypeEvaluator);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofObject(Object paramObject, String paramString, TypeEvaluator paramTypeEvaluator, Object[] paramArrayOfObject)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator(paramObject, paramString);
    localObjectAnimator.setObjectValues(paramArrayOfObject);
    localObjectAnimator.setEvaluator(paramTypeEvaluator);
    return localObjectAnimator;
  }

  public static ObjectAnimator ofPropertyValuesHolder(Object paramObject, PropertyValuesHolder[] paramArrayOfPropertyValuesHolder)
  {
    ObjectAnimator localObjectAnimator = new ObjectAnimator();
    localObjectAnimator.b = paramObject;
    localObjectAnimator.setValues(paramArrayOfPropertyValuesHolder);
    return localObjectAnimator;
  }

  final void animateValue(float paramFloat)
  {
    super.animateValue(paramFloat);
    int i = this.mValues.length;
    for (int j = 0; j < i; j++)
      this.mValues[j].setAnimatedValue(this.b);
  }

  public final ObjectAnimator clone()
  {
    return (ObjectAnimator)super.clone();
  }

  public final String getPropertyName()
  {
    return this.c;
  }

  public final Object getTarget()
  {
    return this.b;
  }

  final void initAnimation()
  {
    if (!this.mInitialized)
    {
      if ((this.d == null) && (AnimatorProxy.NEEDS_PROXY) && ((this.b instanceof View)) && (a.containsKey(this.c)))
        setProperty((Property)a.get(this.c));
      int i = this.mValues.length;
      for (int j = 0; j < i; j++)
        this.mValues[j].setupSetterAndGetter(this.b);
      super.initAnimation();
    }
  }

  public final ObjectAnimator setDuration(long paramLong)
  {
    super.setDuration(paramLong);
    return this;
  }

  public final void setFloatValues(float[] paramArrayOfFloat)
  {
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      if (this.d != null)
      {
        PropertyValuesHolder[] arrayOfPropertyValuesHolder2 = new PropertyValuesHolder[1];
        arrayOfPropertyValuesHolder2[0] = PropertyValuesHolder.ofFloat(this.d, paramArrayOfFloat);
        setValues(arrayOfPropertyValuesHolder2);
        return;
      }
      PropertyValuesHolder[] arrayOfPropertyValuesHolder1 = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder1[0] = PropertyValuesHolder.ofFloat(this.c, paramArrayOfFloat);
      setValues(arrayOfPropertyValuesHolder1);
      return;
    }
    super.setFloatValues(paramArrayOfFloat);
  }

  public final void setIntValues(int[] paramArrayOfInt)
  {
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      if (this.d != null)
      {
        PropertyValuesHolder[] arrayOfPropertyValuesHolder2 = new PropertyValuesHolder[1];
        arrayOfPropertyValuesHolder2[0] = PropertyValuesHolder.ofInt(this.d, paramArrayOfInt);
        setValues(arrayOfPropertyValuesHolder2);
        return;
      }
      PropertyValuesHolder[] arrayOfPropertyValuesHolder1 = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder1[0] = PropertyValuesHolder.ofInt(this.c, paramArrayOfInt);
      setValues(arrayOfPropertyValuesHolder1);
      return;
    }
    super.setIntValues(paramArrayOfInt);
  }

  public final void setObjectValues(Object[] paramArrayOfObject)
  {
    if ((this.mValues == null) || (this.mValues.length == 0))
    {
      if (this.d != null)
      {
        PropertyValuesHolder[] arrayOfPropertyValuesHolder2 = new PropertyValuesHolder[1];
        arrayOfPropertyValuesHolder2[0] = PropertyValuesHolder.ofObject(this.d, null, paramArrayOfObject);
        setValues(arrayOfPropertyValuesHolder2);
        return;
      }
      PropertyValuesHolder[] arrayOfPropertyValuesHolder1 = new PropertyValuesHolder[1];
      arrayOfPropertyValuesHolder1[0] = PropertyValuesHolder.ofObject(this.c, null, paramArrayOfObject);
      setValues(arrayOfPropertyValuesHolder1);
      return;
    }
    super.setObjectValues(paramArrayOfObject);
  }

  public final void setProperty(Property paramProperty)
  {
    if (this.mValues != null)
    {
      PropertyValuesHolder localPropertyValuesHolder = this.mValues[0];
      String str = localPropertyValuesHolder.getPropertyName();
      localPropertyValuesHolder.setProperty(paramProperty);
      this.mValuesMap.remove(str);
      this.mValuesMap.put(this.c, localPropertyValuesHolder);
    }
    if (this.d != null)
      this.c = paramProperty.getName();
    this.d = paramProperty;
    this.mInitialized = false;
  }

  public final void setPropertyName(String paramString)
  {
    if (this.mValues != null)
    {
      PropertyValuesHolder localPropertyValuesHolder = this.mValues[0];
      String str = localPropertyValuesHolder.getPropertyName();
      localPropertyValuesHolder.setPropertyName(paramString);
      this.mValuesMap.remove(str);
      this.mValuesMap.put(paramString, localPropertyValuesHolder);
    }
    this.c = paramString;
    this.mInitialized = false;
  }

  public final void setTarget(Object paramObject)
  {
    if (this.b != paramObject)
    {
      Object localObject = this.b;
      this.b = paramObject;
      if ((localObject == null) || (paramObject == null) || (localObject.getClass() != paramObject.getClass()));
    }
    else
    {
      return;
    }
    this.mInitialized = false;
  }

  public final void setupEndValues()
  {
    initAnimation();
    int i = this.mValues.length;
    for (int j = 0; j < i; j++)
      this.mValues[j].setupEndValue(this.b);
  }

  public final void setupStartValues()
  {
    initAnimation();
    int i = this.mValues.length;
    for (int j = 0; j < i; j++)
      this.mValues[j].setupStartValue(this.b);
  }

  public final void start()
  {
    super.start();
  }

  public final String toString()
  {
    String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.b;
    if (this.mValues != null)
      for (int i = 0; i < this.mValues.length; i++)
        str = str + "\n    " + this.mValues[i].toString();
    return str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.ObjectAnimator
 * JD-Core Version:    0.6.2
 */