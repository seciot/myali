package com.nineoldandroids.animation;

class Keyframe$IntKeyframe extends Keyframe
{
  int mValue;

  Keyframe$IntKeyframe(float paramFloat)
  {
    this.mFraction = paramFloat;
    this.mValueType = Integer.TYPE;
  }

  Keyframe$IntKeyframe(float paramFloat, int paramInt)
  {
    this.mFraction = paramFloat;
    this.mValue = paramInt;
    this.mValueType = Integer.TYPE;
    this.mHasValue = true;
  }

  public IntKeyframe clone()
  {
    IntKeyframe localIntKeyframe = new IntKeyframe(getFraction(), this.mValue);
    localIntKeyframe.setInterpolator(getInterpolator());
    return localIntKeyframe;
  }

  public int getIntValue()
  {
    return this.mValue;
  }

  public Object getValue()
  {
    return Integer.valueOf(this.mValue);
  }

  public void setValue(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Integer.class))
    {
      this.mValue = ((Integer)paramObject).intValue();
      this.mHasValue = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.Keyframe.IntKeyframe
 * JD-Core Version:    0.6.2
 */