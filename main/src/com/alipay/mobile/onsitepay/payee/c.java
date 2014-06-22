package com.alipay.mobile.onsitepay.payee;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.onsitepay.payer.sound.SendSoundViewActivity_;
import com.alipay.sonicwavenfc.SonicWaveNFC;

final class c
  implements View.OnClickListener
{
  c(FacePayeeActivity paramFacePayeeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, SendSoundViewActivity_.class);
    this.a.finish();
    FacePayeeActivity.dexopt(this.a).stopReceiveData();
    this.a.startActivity(localIntent);
    this.a.overridePendingTransition(17432578, 17432579);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.c
 * JD-Core Version:    0.6.2
 */