package com.alipay.sonicwavenfc;

import android.os.Message;
import com.alipay.b.b.b;

class SonicWaveNFC$SendDataHandlerImpl
  implements b
{
  private SonicWaveNFC$SendDataHandlerImpl(SonicWaveNFC paramSonicWaveNFC)
  {
  }

  public void OnSendDataInfo(String paramString)
  {
    Message localMessage = this.a.b.obtainMessage(23);
    localMessage.obj = paramString;
    localMessage.sendToTarget();
  }

  public void onSendDataStarted()
  {
    this.a.b.obtainMessage(21).sendToTarget();
  }

  public void onSendDataTimeout()
  {
    this.a.b.obtainMessage(22).sendToTarget();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.sonicwavenfc.SonicWaveNFC.SendDataHandlerImpl
 * JD-Core Version:    0.6.2
 */