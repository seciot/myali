package com.alipay.mobile.onsitepay.payer.sound;

import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.onsitepay.b;
import com.alipay.mobile.onsitepay.e;

final class ab extends Handler
{
  ab(SoundButtonActivity paramSoundButtonActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == 1)
    {
      if ((!this.a.isWaveNow()) || (this.a.timeOut))
        break label379;
      if (SoundButtonActivity.access$000(this.a) % 6 == 0)
      {
        int i = SoundButtonActivity.access$000(this.a) / 6 % 4;
        if (this.a.imageView[i] == null)
        {
          this.a.imageView[i] = ((APImageView)SoundButtonActivity.access$100(this.a).inflate(e.k, null));
          this.a.wave_Layout.addView(this.a.imageView[i]);
          new StringBuilder("imageView[").append(i).append("] 产生").toString();
        }
        Animation localAnimation = AnimationUtils.loadAnimation(this.a.getContext(), b.a);
        this.a.imageView[i].startAnimation(localAnimation);
      }
      SoundButtonActivity.access$008(this.a);
      this.a.loopNum = (2.25F + this.a.loopNum);
      if (this.a.loopNum >= 362.0F)
        break label343;
      if (this.a.canvasSector != null)
        break label276;
      this.a.canvasSector = new af(this.a, this.a.getContext(), this.a.loopNum);
      this.a.wave_circle_image_Layout.addView(this.a.canvasSector);
    }
    label276: label343: label379: 
    do
    {
      do
      {
        return;
        this.a.canvasSector.getBundle(this.a.loopNum);
        this.a.canvasSector.invalidate();
      }
      while (this.a.loopNum % 18.0F != 0.0F);
      this.a.waveButtonListener.getBundle((int)(this.a.loopNum / 18.0F));
      return;
      new StringBuilder("  timeOut true loopNum=").append(this.a.loopNum).toString();
      this.a.timeOut = true;
      return;
      new StringBuilder("  !stopFlag && !timeOut isWaveNow=").append(this.a.isWaveNow).append(" timeOut=").append(this.a.timeOut).toString();
      SoundButtonActivity.access$200(this.a);
    }
    while (!this.a.timeOut);
    this.a.waveButtonListener.a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.ab
 * JD-Core Version:    0.6.2
 */