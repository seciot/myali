package com.alipay.mobile.onsitepay.payer.sound;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.PopupWindow;

final class o
  implements View.OnClickListener
{
  o(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.r != null)
    {
      this.a.r.dismiss();
      if (this.a.s)
      {
        this.a.s = false;
        SendSoundViewActivity.getBundleByComponentName(this.a);
        this.a.l.setVisibility(8);
        this.a.m.waveRetry();
        SendSoundViewActivity.d(this.a);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.o
 * JD-Core Version:    0.6.2
 */