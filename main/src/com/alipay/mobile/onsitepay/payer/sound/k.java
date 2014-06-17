package com.alipay.mobile.onsitepay.payer.sound;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class k
  implements View.OnClickListener
{
  k(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.l.setClickable(false);
    Context localContext = this.a.getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "", "", SendSoundViewActivity.v(), "-", new String[] { "kf", "deviceAuthLayout_clicked", "", "y", "alipayclient" });
    SendSoundViewActivity.a(this.a, new l(this));
    this.a.l.setClickable(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.k
 * JD-Core Version:    0.6.2
 */