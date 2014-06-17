package com.alipay.mobile.onsitepay.payer.sound;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import com.alipay.mobile.commonui.widget.APImageView;

final class af extends View
{
  float a = 0.0F;

  public af(SoundButtonActivity paramSoundButtonActivity, Context paramContext, double paramDouble)
  {
    super(paramContext);
    this.a = ((float)paramDouble);
  }

  public final void a(double paramDouble)
  {
    this.a = ((float)paramDouble);
  }

  @SuppressLint({"DrawAllocation"})
  protected final void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    SoundButtonActivity.access$402(this.b, new RectF(this.b.white_image.getLeft() + SoundButtonActivity.access$500(this.b), this.b.white_image.getTop() + SoundButtonActivity.access$500(this.b), this.b.white_image.getRight() - SoundButtonActivity.access$500(this.b), this.b.white_image.getBottom() - SoundButtonActivity.access$500(this.b)));
    paramCanvas.drawArc(SoundButtonActivity.access$400(this.b), 270.0F, this.a, true, SoundButtonActivity.access$600(this.b));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.af
 * JD-Core Version:    0.6.2
 */