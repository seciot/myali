package com.alipay.mobile.onsitepay.payer.sound;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.livetradeprod.core.model.base.DisplayUserInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;

final class m
  implements View.OnClickListener
{
  m(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Context localContext = this.a.getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str1 = SendSoundViewActivity.j(this.a);
    String str2 = SendSoundViewActivity.w();
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "kf";
    arrayOfString[1] = "lbs";
    arrayOfString[2] = (System.currentTimeMillis() - SendSoundViewActivity.k(this.a));
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "C2C", str1, str2, "-", arrayOfString);
    NearbyFriend localNearbyFriend = (NearbyFriend)paramView;
    SendSoundViewActivity.a(this.a, localNearbyFriend.userInfo.userId, localNearbyFriend.userInfo.name, localNearbyFriend.userInfo.headImageUrl, localNearbyFriend.userInfo.account, "lbs", SendSoundViewActivity.l(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.m
 * JD-Core Version:    0.6.2
 */