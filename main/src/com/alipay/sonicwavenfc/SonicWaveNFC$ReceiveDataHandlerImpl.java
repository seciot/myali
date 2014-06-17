package com.alipay.sonicwavenfc;

import android.os.Message;
import com.alipay.b.a.a;

class SonicWaveNFC$ReceiveDataHandlerImpl
  implements a
{
  private SonicWaveNFC$ReceiveDataHandlerImpl(SonicWaveNFC paramSonicWaveNFC)
  {
  }

  public void OnReceiveDataInfo(String paramString)
  {
    Message localMessage = this.a.b.obtainMessage(14);
    localMessage.obj = paramString;
    localMessage.sendToTarget();
  }

  public void onDataReceived(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean, double paramDouble)
  {
    Message localMessage = this.a.b.obtainMessage(13);
    localMessage.obj = paramArrayOfByte;
    localMessage.sendToTarget();
  }

  public void onReceiveDataStarted()
  {
    this.a.b.obtainMessage(11).sendToTarget();
  }

  public void onReceiveDataTimeout()
  {
    this.a.b.obtainMessage(12).sendToTarget();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.sonicwavenfc.SonicWaveNFC.ReceiveDataHandlerImpl
 * JD-Core Version:    0.6.2
 */