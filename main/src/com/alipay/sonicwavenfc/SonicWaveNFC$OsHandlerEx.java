package com.alipay.sonicwavenfc;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class SonicWaveNFC$OsHandlerEx extends Handler
{
  public SonicWaveNFC$OsHandlerEx(SonicWaveNFC paramSonicWaveNFC, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    default:
      super.handleMessage(paramMessage);
      return;
    case 13:
      byte[] arrayOfByte = (byte[])paramMessage.obj;
      try
      {
        String str3 = new String(arrayOfByte, "GBK").trim();
        SonicWaveNFC.getInstance().stopReceiveData();
        this.a.a.onDataReceived(str3);
        return;
      }
      catch (Exception localException)
      {
        return;
      }
    case 12:
      SonicWaveNFC.getInstance().stopReceiveData();
      this.a.a.onReceiveDataTimeout();
      return;
    case 14:
      String str2 = (String)paramMessage.obj;
      this.a.a.onReceiveDataInfo(str2);
      return;
    case 11:
      this.a.a.onReceiveDataStarted();
      return;
    case 22:
      SonicWaveNFC.getInstance().stopSendData();
      this.a.a.onSendDataTimeout();
      return;
    case 21:
      this.a.a.onSendDataStarted();
      return;
    case 23:
    }
    String str1 = (String)paramMessage.obj;
    this.a.a.onSendDataInfo(str1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.sonicwavenfc.SonicWaveNFC.OsHandlerEx
 * JD-Core Version:    0.6.2
 */