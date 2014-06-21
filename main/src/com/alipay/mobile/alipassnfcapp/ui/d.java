package com.alipay.mobile.alipassnfcapp.ui;

import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.animation.AnimationUtils;
import com.alipay.mobile.alipassnfcapp.b;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;

final class d extends Handler
{
  d(AlipassSendSoundViewController paramAlipassSendSoundViewController)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if (paramMessage.what == 1)
    {
      if ((this.a.stopFlag) || (this.a.stopAnim))
        break label267;
      if (AlipassSendSoundViewController.access$000(this.a) % 5 == 0)
      {
        AlipassSendSoundViewController.access$102(this.a, (APImageView)AlipassSendSoundViewController.access$200(this.a).inflate(com.alipay.mobile.alipassnfcapp.d.b, null));
        AlipassSendSoundViewController.access$100(this.a).setAnimation(AnimationUtils.loadAnimation(this.a.getRootController(), b.a));
        AlipassSendSoundViewController.access$100(this.a).startAnimation(AlipassSendSoundViewController.access$100(this.a).getAnimation());
        AlipassSendSoundViewController.access$300(this.a).addView(AlipassSendSoundViewController.access$100(this.a));
      }
      AlipassSendSoundViewController.access$008(this.a);
      this.a.loopNum = (2.25F + this.a.loopNum);
      if (this.a.loopNum >= 362.0F)
        break label258;
      if (this.a.canvasSector != null)
        break label229;
      this.a.canvasSector = new g(this.a, this.a.getRootController(), this.a.loopNum);
      AlipassSendSoundViewController.access$400(this.a).addView(this.a.canvasSector);
    }
    label229: 
    do
    {
      return;
      this.a.canvasSector.getBundle(this.a.loopNum);
      this.a.canvasSector.invalidate();
      return;
      this.a.stopAnim = true;
      return;
      AlipassSendSoundViewController.access$500(this.a);
    }
    while (!this.a.stopAnim);
    label258: label267: this.a.wavePause();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.d
 * JD-Core Version:    0.6.2
 */