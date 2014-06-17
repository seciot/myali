package com.alipay.mobile.alipassnfcapp.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.view.View;
import com.alipay.mobile.commonui.widget.APImageView;

final class g extends View
{
  float a = 0.0F;

  public g(AlipassSendSoundViewController paramAlipassSendSoundViewController, Context paramContext, double paramDouble)
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
    AlipassSendSoundViewController.access$602(this.b, new RectF(AlipassSendSoundViewController.access$700(this.b).getLeft() + AlipassSendSoundViewController.access$800(this.b), AlipassSendSoundViewController.access$700(this.b).getTop() + AlipassSendSoundViewController.access$800(this.b), AlipassSendSoundViewController.access$700(this.b).getRight() - AlipassSendSoundViewController.access$800(this.b), AlipassSendSoundViewController.access$700(this.b).getBottom() - AlipassSendSoundViewController.access$800(this.b)));
    paramCanvas.drawArc(AlipassSendSoundViewController.access$600(this.b), 270.0F, this.a, false, AlipassSendSoundViewController.access$900(this.b));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.g
 * JD-Core Version:    0.6.2
 */