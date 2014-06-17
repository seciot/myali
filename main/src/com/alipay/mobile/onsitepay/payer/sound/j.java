package com.alipay.mobile.onsitepay.payer.sound;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.onsitepay.payee.FacePayeeActivity_;
import com.alipay.sonicwavenfc.SonicWaveNFC;

final class j
  implements View.OnClickListener
{
  j(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, FacePayeeActivity_.class);
    SendSoundViewActivity.e(this.a).stopSendData();
    SendSoundViewActivity.g(this.a).getMicroApplicationContext().startActivity(SendSoundViewActivity.f(this.a), localIntent);
    this.a.finish();
    this.a.overridePendingTransition(17432578, 17432579);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.j
 * JD-Core Version:    0.6.2
 */