package com.alipay.sonicwavenfc;

public abstract interface SonicWaveNFCHandler
{
  public abstract void onDataReceived(String paramString);

  public abstract void onReceiveDataFailed(int paramInt);

  public abstract void onReceiveDataInfo(String paramString);

  public abstract void onReceiveDataStarted();

  public abstract void onReceiveDataTimeout();

  public abstract void onSendDataFailed(int paramInt);

  public abstract void onSendDataInfo(String paramString);

  public abstract void onSendDataStarted();

  public abstract void onSendDataTimeout();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.sonicwavenfc.SonicWaveNFCHandler
 * JD-Core Version:    0.6.2
 */