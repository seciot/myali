package com.nineoldandroids.animation;

import android.view.animation.Interpolator;
import java.util.ArrayList;

class IntKeyframeSet extends KeyframeSet
{
  private int a;
  private int b;
  private int c;
  private boolean d = true;

  public IntKeyframeSet(Keyframe.IntKeyframe[] paramArrayOfIntKeyframe)
  {
    super(paramArrayOfIntKeyframe);
  }

  public IntKeyframeSet clone()
  {
    ArrayList localArrayList = this.mKeyframes;
    int i = this.mKeyframes.size();
    Keyframe.IntKeyframe[] arrayOfIntKeyframe = new Keyframe.IntKeyframe[i];
    for (int j = 0; j < i; j++)
      arrayOfIntKeyframe[j] = ((Keyframe.IntKeyframe)((Keyframe)localArrayList.get(j)).clone());
    return new IntKeyframeSet(arrayOfIntKeyframe);
  }

  public int getIntValue(float paramFloat)
  {
    int i = 1;
    if (this.mNumKeyframes == 2)
    {
      if (this.d)
      {
        this.d = false;
        this.a = ((Keyframe.IntKeyframe)this.mKeyframes.get(0)).getIntValue();
        this.b = ((Keyframe.IntKeyframe)this.mKeyframes.get(i)).getIntValue();
        this.c = (this.b - this.a);
      }
      if (this.mInterpolator != null)
        paramFloat = this.mInterpolator.getInterpolation(paramFloat);
      if (this.mEvaluator == null)
        return this.a + (int)(paramFloat * this.c);
      return ((Number)this.mEvaluator.evaluate(paramFloat, Integer.valueOf(this.a), Integer.valueOf(this.b))).intValue();
    }
    if (paramFloat <= 0.0F)
    {
      Keyframe.IntKeyframe localIntKeyframe4 = (Keyframe.IntKeyframe)this.mKeyframes.get(0);
      Keyframe.IntKeyframe localIntKeyframe5 = (Keyframe.IntKeyframe)this.mKeyframes.get(i);
      int i1 = localIntKeyframe4.getIntValue();
      int i2 = localIntKeyframe5.getIntValue();
      float f5 = localIntKeyframe4.getFraction();
      float f6 = localIntKeyframe5.getFraction();
      Interpolator localInterpolator3 = localIntKeyframe5.getInterpolator();
      if (localInterpolator3 != null)
        paramFloat = localInterpolator3.getInterpolation(paramFloat);
      float f7 = (paramFloat - f5) / (f6 - f5);
      if (this.mEvaluator == null)
        return i1 + (int)(f7 * (i2 - i1));
      return ((Number)this.mEvaluator.evaluate(f7, Integer.valueOf(i1), Integer.valueOf(i2))).intValue();
    }
    if (paramFloat >= 1.0F)
    {
      Keyframe.IntKeyframe localIntKeyframe2 = (Keyframe.IntKeyframe)this.mKeyframes.get(-2 + this.mNumKeyframes);
      Keyframe.IntKeyframe localIntKeyframe3 = (Keyframe.IntKeyframe)this.mKeyframes.get(-1 + this.mNumKeyframes);
      int m = localIntKeyframe2.getIntValue();
      int n = localIntKeyframe3.getIntValue();
      float f2 = localIntKeyframe2.getFraction();
      float f3 = localIntKeyframe3.getFraction();
      Interpolator localInterpolator2 = localIntKeyframe3.getInterpolator();
      if (localInterpolator2 != null)
        paramFloat = localInterpolator2.getInterpolation(paramFloat);
      float f4 = (paramFloat - f2) / (f3 - f2);
      if (this.mEvaluator == null)
        return m + (int)(f4 * (n - m));
      return ((Number)this.mEvaluator.evaluate(f4, Integer.valueOf(m), Integer.valueOf(n))).intValue();
    }
    Keyframe.IntKeyframe localIntKeyframe1;
    for (Object localObject = (Keyframe.IntKeyframe)this.mKeyframes.get(0); i < this.mNumKeyframes; localObject = localIntKeyframe1)
    {
      localIntKeyframe1 = (Keyframe.IntKeyframe)this.mKeyframes.get(i);
      if (paramFloat < localIntKeyframe1.getFraction())
      {
        Interpolator localInterpolator1 = localIntKeyframe1.getInterpolator();
        if (localInterpolator1 != null)
          paramFloat = localInterpolator1.getInterpolation(paramFloat);
        float f1 = (paramFloat - ((Keyframe.IntKeyframe)localObject).getFraction()) / (localIntKeyframe1.getFraction() - ((Keyframe.IntKeyframe)localObject).getFraction());
        int j = ((Keyframe.IntKeyframe)localObject).getIntValue();
        int k = localIntKeyframe1.getIntValue();
        if (this.mEvaluator == null)
          return j + (int)(f1 * (k - j));
        return ((Number)this.mEvaluator.evaluate(f1, Integer.valueOf(j), Integer.valueOf(k))).intValue();
      }
      i++;
    }
    return ((Number)((Keyframe)this.mKeyframes.get(-1 + this.mNumKeyframes)).getValue()).intValue();
  }

  public Object getValue(float paramFloat)
  {
    return Integer.valueOf(getIntValue(paramFloat));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.IntKeyframeSet
 * JD-Core Version:    0.6.2
 */