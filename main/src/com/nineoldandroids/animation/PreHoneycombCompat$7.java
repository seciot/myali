package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat$7 extends FloatProperty<View>
{
  PreHoneycombCompat$7(String paramString)
  {
    super(paramString);
  }

  public final Float get(View paramView)
  {
    return Float.valueOf(AnimatorProxy.wrap(paramView).getRotationX());
  }

  public final void setValue(View paramView, float paramFloat)
  {
    AnimatorProxy.wrap(paramView).setRotationX(paramFloat);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PreHoneycombCompat.7
 * JD-Core Version:    0.6.2
 */