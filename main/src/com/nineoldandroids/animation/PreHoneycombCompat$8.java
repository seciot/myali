package com.nineoldandroids.animation;

import android.view.View;
import com.nineoldandroids.util.FloatProperty;
import com.nineoldandroids.view.animation.AnimatorProxy;

final class PreHoneycombCompat$8 extends FloatProperty<View>
{
  PreHoneycombCompat$8(String paramString)
  {
    super(paramString);
  }

  public final Float get(View paramView)
  {
    return Float.valueOf(AnimatorProxy.wrap(paramView).getRotationY());
  }

  public final void setValue(View paramView, float paramFloat)
  {
    AnimatorProxy.wrap(paramView).setRotationY(paramFloat);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.animation.PreHoneycombCompat.8
 * JD-Core Version:    0.6.2
 */