package com.alipay.mobile.onsitepay.payee;

import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.sonicwavenfc.SonicWaveNFCHandler;
import java.util.Map;

final class h
  implements SonicWaveNFCHandler
{
  private h(FacePayeeActivity paramFacePayeeActivity)
  {
  }

  public final void onDataReceived(String paramString)
  {
    new StringBuilder("收到声波,sonicId1:").append(paramString).toString();
    FacePayeeActivity.v(this.a, 1);
    long l = System.currentTimeMillis();
    Long localLong = (Long)FacePayeeActivity.removeBundle(this.a).get(paramString);
    new StringBuilder("sonicId:").append(paramString).toString();
    new StringBuilder("currentTimeMillis:").append(l).toString();
    new StringBuilder("mLastTime:").append(localLong).toString();
    if ((localLong == null) || (l - localLong.longValue() > 5000L))
    {
      AlipayLogAgent.writeLog(this.a.getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, null, null, null, null, "C2C", paramString, "", "-", new String[] { "kf", "receivewave", "", "y", "alipayclient" });
      FacePayeeActivity.removeBundle(this.a).put(paramString, Long.valueOf(l));
      FacePayeeActivity.f(this.a);
      this.a.dexopt(paramString);
    }
    FacePayeeActivity.g(this.a);
  }

  public final void onReceiveDataFailed(int paramInt)
  {
  }

  public final void onReceiveDataInfo(String paramString)
  {
    if ((paramString != null) && (!"".equals(paramString)) && (this.a.k.getonDrawComplete()))
      this.a.r = Integer.parseInt(paramString);
  }

  public final void onReceiveDataStarted()
  {
  }

  public final void onReceiveDataTimeout()
  {
  }

  public final void onSendDataFailed(int paramInt)
  {
  }

  public final void onSendDataInfo(String paramString)
  {
  }

  public final void onSendDataStarted()
  {
  }

  public final void onSendDataTimeout()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.h
 * JD-Core Version:    0.6.2
 */