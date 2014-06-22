package com.alipay.mobile.onsitepay.payer.sound;

import android.widget.LinearLayout;
import com.alipay.livetradeprod.core.model.base.DisplayUserInfo;
import com.alipay.livetradeprod.core.model.rpc.FindLbsUserRes;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.Iterator;
import java.util.List;

final class h
  implements ag
{
  h(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void a()
  {
    this.a.s();
    if ((SendSoundViewActivity.b(this.a) != null) && (SendSoundViewActivity.b(this.a).userList != null) && (SendSoundViewActivity.b(this.a).userList.size() > 0))
    {
      new StringBuilder("set lbs frients count = ").append(SendSoundViewActivity.b(this.a).userList.size()).toString();
      this.a.n.setVisibility(0);
      Iterator localIterator = SendSoundViewActivity.b(this.a).userList.iterator();
      for (int i = 0; localIterator.hasNext(); i++)
      {
        DisplayUserInfo localDisplayUserInfo = (DisplayUserInfo)localIterator.next();
        if ((StringUtils.isNotEmpty(localDisplayUserInfo.account)) && (StringUtils.isNotEmpty(localDisplayUserInfo.name)))
          this.a.q[i].showNearbyInfo(localDisplayUserInfo);
      }
    }
  }

  public final void a(int paramInt)
  {
    if (paramInt == 15)
      this.a.u();
  }

  public final void b()
  {
    this.a.t();
    SendSoundViewActivity.getBundleByComponentName(this.a);
    this.a.l.setVisibility(8);
    if (!this.a.getBundle(this.a.getApplicationContext()))
    {
      this.a.m.waveRetry();
      SendSoundViewActivity.d(this.a);
      return;
    }
    this.a.r();
  }

  public final void c()
  {
    this.a.s();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.h
 * JD-Core Version:    0.6.2
 */