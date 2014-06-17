package com.nineoldandroids.animation;

import android.util.Log;
import com.nineoldandroids.util.IntProperty;
import com.nineoldandroids.util.Property;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class PropertyValuesHolder$IntPropertyValuesHolder extends PropertyValuesHolder
{
  private IntProperty a;
  int mIntAnimatedValue;
  IntKeyframeSet mIntKeyframeSet;

  public PropertyValuesHolder$IntPropertyValuesHolder(Property paramProperty, IntKeyframeSet paramIntKeyframeSet)
  {
    super(paramProperty, null);
    this.mValueType = Integer.TYPE;
    this.mKeyframeSet = paramIntKeyframeSet;
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
    if ((paramProperty instanceof IntProperty))
      this.a = ((IntProperty)this.mProperty);
  }

  public PropertyValuesHolder$IntPropertyValuesHolder(Property paramProperty, int[] paramArrayOfInt)
  {
    super(paramProperty, null);
    setIntValues(paramArrayOfInt);
    if ((paramProperty instanceof IntProperty))
      this.a = ((IntProperty)this.mProperty);
  }

  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, IntKeyframeSet paramIntKeyframeSet)
  {
    super(paramString, null);
    this.mValueType = Integer.TYPE;
    this.mKeyframeSet = paramIntKeyframeSet;
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
  }

  public PropertyValuesHolder$IntPropertyValuesHolder(String paramString, int[] paramArrayOfInt)
  {
    super(paramString, null);
    setIntValues(paramArrayOfInt);
  }

  void calculateValue(float paramFloat)
  {
    this.mIntAnimatedValue = this.mIntKeyframeSet.getIntValue(paramFloat);
  }

  public IntPropertyValuesHolder clone()
  {
    IntPropertyValuesHolder localIntPropertyValuesHolder = (IntPropertyValuesHolder)super.clone();
    localIntPropertyValuesHolder.mIntKeyframeSet = ((IntKeyframeSet)localIntPropertyValuesHolder.mKeyframeSet);
    return localIntPropertyValuesHolder;
  }

  Object getAnimatedValue()
  {
    return Integer.valueOf(this.mIntAnimatedValue);
  }

  void setAnimatedValue(Object paramObject)
  {
    if (this.a != null)
      this.a.setValue(paramObject, this.mIntAnimatedValue);
    do
    {
      return;
      if (this.mProperty != null)
      {
        this.mProperty.set(paramObject, Integer.valueOf(this.mIntAnimatedValue));
        return;
      }
    }
    while (this.mSetter == null);
    try
    {
      this.mTmpValueArray[0] = Integer.valueOf(this.mIntAnimatedValue);
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

  public void setIntValues(int[] paramArrayOfInt)
  {
    super.setIntValues(paramArrayOfInt);
    this.mIntKeyframeSet = ((IntKeyframeSet)this.mKeyframeSet);
  }

  void setupSetter(Class paramClass)
  {
    if (this.mProperty != null)
      return;
    super.setupSetter(paramClass);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PropertyValuesHolder.IntPropertyValuesHolder
 * JD-Core Version:    0.6.2
 */