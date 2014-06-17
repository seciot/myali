package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat$3 extends FloatProperty<View>
{
  PreHoneycombCompat$3(String paramString)
  {
    super(paramString);
  }

  public final Float get(View paramView)
  {
    return Float.valueOf(AnimatorProxy.wrap(paramView).getPivotY());
  }

  public final void setValue(View paramView, float paramFloat)
  {
    AnimatorProxy.wrap(paramView).setPivotY(paramFloat);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PreHoneycombCompat.3
 * JD-Core Version:    0.6.2
 */