package com.alipay.mobile.common.animation;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class Rotate3dAnimation extends Animation
{
  private final float a;
  private final float b;
  private final float c;
  private final float d;
  private final float e;
  private Camera f;

  public Rotate3dAnimation(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, boolean paramBoolean)
  {
    this.a = paramFloat1;
    this.b = paramFloat2;
    this.c = paramFloat3;
    this.d = paramFloat4;
    this.e = paramFloat5;
  }

  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = this.a;
    float f2 = f1 + paramFloat * (this.b - f1);
    float f3 = this.c;
    float f4 = this.d;
    Camera localCamera = this.f;
    Matrix localMatrix = paramTransformation.getMatrix();
    localCamera.save();
    localCamera.translate(0.0F, 0.0F, Math.abs(this.e * (float)Math.sin(3.141592653589793D * f2 / 180.0D)));
    localCamera.rotateY(f2);
    localCamera.getMatrix(localMatrix);
    localCamera.restore();
    localMatrix.preTranslate(-f3, -f4);
    localMatrix.postTranslate(f3, f4);
  }

  public void initialize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.initialize(paramInt1, paramInt2, paramInt3, paramInt4);
    this.f = new Camera();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.animation.Rotate3dAnimation
 * JD-Core Version:    0.6.2
 */