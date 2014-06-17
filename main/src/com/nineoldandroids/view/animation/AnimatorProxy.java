package com.nineoldandroids.view.animation;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public final class AnimatorProxy extends Animation
{
  public static final boolean NEEDS_PROXY;
  private static final WeakHashMap<View, AnimatorProxy> a;
  private final WeakReference<View> b;
  private final Camera c = new Camera();
  private boolean d;
  private float e = 1.0F;
  private float f;
  private float g;
  private float h;
  private float i;
  private float j;
  private float k = 1.0F;
  private float l = 1.0F;
  private float m;
  private float n;
  private final RectF o = new RectF();
  private final RectF p = new RectF();
  private final Matrix q = new Matrix();

  static
  {
    if (Integer.valueOf(Build.VERSION.SDK).intValue() < 11);
    for (boolean bool = true; ; bool = false)
    {
      NEEDS_PROXY = bool;
      a = new WeakHashMap();
      return;
    }
  }

  private AnimatorProxy(View paramView)
  {
    setDuration(0L);
    setFillAfter(true);
    paramView.setAnimation(this);
    this.b = new WeakReference(paramView);
  }

  private void a()
  {
    View localView = (View)this.b.get();
    if (localView != null)
      a(this.o, localView);
  }

  private void a(Matrix paramMatrix, View paramView)
  {
    float f1 = paramView.getWidth();
    float f2 = paramView.getHeight();
    boolean bool = this.d;
    float f3;
    if (bool)
    {
      f3 = this.f;
      if (!bool)
        break label233;
    }
    label233: for (float f4 = this.g; ; f4 = f2 / 2.0F)
    {
      float f5 = this.h;
      float f6 = this.i;
      float f7 = this.j;
      if ((f5 != 0.0F) || (f6 != 0.0F) || (f7 != 0.0F))
      {
        Camera localCamera = this.c;
        localCamera.save();
        localCamera.rotateX(f5);
        localCamera.rotateY(f6);
        localCamera.rotateZ(-f7);
        localCamera.getMatrix(paramMatrix);
        localCamera.restore();
        paramMatrix.preTranslate(-f3, -f4);
        paramMatrix.postTranslate(f3, f4);
      }
      float f8 = this.k;
      float f9 = this.l;
      if ((f8 != 1.0F) || (f9 != 1.0F))
      {
        paramMatrix.postScale(f8, f9);
        paramMatrix.postTranslate(-(f3 / f1) * (f8 * f1 - f1), -(f4 / f2) * (f9 * f2 - f2));
      }
      paramMatrix.postTranslate(this.m, this.n);
      return;
      f3 = f1 / 2.0F;
      break;
    }
  }

  private void a(RectF paramRectF, View paramView)
  {
    paramRectF.set(0.0F, 0.0F, paramView.getWidth(), paramView.getHeight());
    Matrix localMatrix = this.q;
    localMatrix.reset();
    a(localMatrix, paramView);
    this.q.mapRect(paramRectF);
    paramRectF.offset(paramView.getLeft(), paramView.getTop());
    if (paramRectF.right < paramRectF.left)
    {
      float f2 = paramRectF.right;
      paramRectF.right = paramRectF.left;
      paramRectF.left = f2;
    }
    if (paramRectF.bottom < paramRectF.top)
    {
      float f1 = paramRectF.top;
      paramRectF.top = paramRectF.bottom;
      paramRectF.bottom = f1;
    }
  }

  private void b()
  {
    View localView = (View)this.b.get();
    if ((localView == null) || (localView.getParent() == null))
      return;
    RectF localRectF = this.p;
    a(localRectF, localView);
    localRectF.union(this.o);
    ((View)localView.getParent()).invalidate((int)Math.floor(localRectF.left), (int)Math.floor(localRectF.top), (int)Math.ceil(localRectF.right), (int)Math.ceil(localRectF.bottom));
  }

  public static AnimatorProxy wrap(View paramView)
  {
    AnimatorProxy localAnimatorProxy = (AnimatorProxy)a.get(paramView);
    if ((localAnimatorProxy == null) || (localAnimatorProxy != paramView.getAnimation()))
    {
      localAnimatorProxy = new AnimatorProxy(paramView);
      a.put(paramView, localAnimatorProxy);
    }
    return localAnimatorProxy;
  }

  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    View localView = (View)this.b.get();
    if (localView != null)
    {
      paramTransformation.setAlpha(this.e);
      a(paramTransformation.getMatrix(), localView);
    }
  }

  public final float getAlpha()
  {
    return this.e;
  }

  public final float getPivotX()
  {
    return this.f;
  }

  public final float getPivotY()
  {
    return this.g;
  }

  public final float getRotation()
  {
    return this.j;
  }

  public final float getRotationX()
  {
    return this.h;
  }

  public final float getRotationY()
  {
    return this.i;
  }

  public final float getScaleX()
  {
    return this.k;
  }

  public final float getScaleY()
  {
    return this.l;
  }

  public final int getScrollX()
  {
    View localView = (View)this.b.get();
    if (localView == null)
      return 0;
    return localView.getScrollX();
  }

  public final int getScrollY()
  {
    View localView = (View)this.b.get();
    if (localView == null)
      return 0;
    return localView.getScrollY();
  }

  public final float getTranslationX()
  {
    return this.m;
  }

  public final float getTranslationY()
  {
    return this.n;
  }

  public final float getX()
  {
    View localView = (View)this.b.get();
    if (localView == null)
      return 0.0F;
    return localView.getLeft() + this.m;
  }

  public final float getY()
  {
    View localView = (View)this.b.get();
    if (localView == null)
      return 0.0F;
    return localView.getTop() + this.n;
  }

  public final void setAlpha(float paramFloat)
  {
    if (this.e != paramFloat)
    {
      this.e = paramFloat;
      View localView = (View)this.b.get();
      if (localView != null)
        localView.invalidate();
    }
  }

  public final void setPivotX(float paramFloat)
  {
    if ((!this.d) || (this.f != paramFloat))
    {
      a();
      this.d = true;
      this.f = paramFloat;
      b();
    }
  }

  public final void setPivotY(float paramFloat)
  {
    if ((!this.d) || (this.g != paramFloat))
    {
      a();
      this.d = true;
      this.g = paramFloat;
      b();
    }
  }

  public final void setRotation(float paramFloat)
  {
    if (this.j != paramFloat)
    {
      a();
      this.j = paramFloat;
      b();
    }
  }

  public final void setRotationX(float paramFloat)
  {
    if (this.h != paramFloat)
    {
      a();
      this.h = paramFloat;
      b();
    }
  }

  public final void setRotationY(float paramFloat)
  {
    if (this.i != paramFloat)
    {
      a();
      this.i = paramFloat;
      b();
    }
  }

  public final void setScaleX(float paramFloat)
  {
    if (this.k != paramFloat)
    {
      a();
      this.k = paramFloat;
      b();
    }
  }

  public final void setScaleY(float paramFloat)
  {
    if (this.l != paramFloat)
    {
      a();
      this.l = paramFloat;
      b();
    }
  }

  public final void setScrollX(int paramInt)
  {
    View localView = (View)this.b.get();
    if (localView != null)
      localView.scrollTo(paramInt, localView.getScrollY());
  }

  public final void setScrollY(int paramInt)
  {
    View localView = (View)this.b.get();
    if (localView != null)
      localView.scrollTo(localView.getScrollX(), paramInt);
  }

  public final void setTranslationX(float paramFloat)
  {
    if (this.m != paramFloat)
    {
      a();
      this.m = paramFloat;
      b();
    }
  }

  public final void setTranslationY(float paramFloat)
  {
    if (this.n != paramFloat)
    {
      a();
      this.n = paramFloat;
      b();
    }
  }

  public final void setX(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null)
      setTranslationX(paramFloat - localView.getLeft());
  }

  public final void setY(float paramFloat)
  {
    View localView = (View)this.b.get();
    if (localView != null)
      setTranslationY(paramFloat - localView.getTop());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.nineoldandroids.view.animation.AnimatorProxy
 * JD-Core Version:    0.6.2
 */