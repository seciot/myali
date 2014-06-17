package com.alipay.mobile.common.transport.spdy.internal.spdy;

final class Settings
{
  static final int CLIENT_CERTIFICATE_VECTOR_SIZE = 8;
  static final int COUNT = 10;
  static final int CURRENT_CWND = 5;
  static final int DEFAULT_INITIAL_WINDOW_SIZE = 65536;
  static final int DOWNLOAD_BANDWIDTH = 2;
  static final int DOWNLOAD_RETRANS_RATE = 6;
  static final int FLAG_CLEAR_PREVIOUSLY_PERSISTED_SETTINGS = 1;
  static final int FLOW_CONTROL_OPTIONS = 9;
  static final int FLOW_CONTROL_OPTIONS_DISABLED = 1;
  static final int INITIAL_WINDOW_SIZE = 7;
  static final int MAX_CONCURRENT_STREAMS = 4;
  static final int PERSISTED = 2;
  static final int PERSIST_VALUE = 1;
  static final int ROUND_TRIP_TIME = 3;
  static final int UPLOAD_BANDWIDTH = 1;
  private int a;
  private int b;
  private int c;
  private final int[] d = new int[10];

  final int flags(int paramInt)
  {
    boolean bool = isPersisted(paramInt);
    int i = 0;
    if (bool)
      i = 2;
    if (persistValue(paramInt))
      i |= 1;
    return i;
  }

  final int get(int paramInt)
  {
    return this.d[paramInt];
  }

  final int getClientCertificateVectorSize(int paramInt)
  {
    if ((0x100 & this.a) != 0)
      paramInt = this.d[8];
    return paramInt;
  }

  final int getCurrentCwnd(int paramInt)
  {
    if ((0x20 & this.a) != 0)
      paramInt = this.d[5];
    return paramInt;
  }

  final int getDownloadBandwidth(int paramInt)
  {
    if ((0x4 & this.a) != 0)
      paramInt = this.d[2];
    return paramInt;
  }

  final int getDownloadRetransRate(int paramInt)
  {
    if ((0x40 & this.a) != 0)
      paramInt = this.d[6];
    return paramInt;
  }

  final int getInitialWindowSize(int paramInt)
  {
    if ((0x80 & this.a) != 0)
      paramInt = this.d[7];
    return paramInt;
  }

  final int getMaxConcurrentStreams(int paramInt)
  {
    if ((0x10 & this.a) != 0)
      paramInt = this.d[4];
    return paramInt;
  }

  final int getRoundTripTime(int paramInt)
  {
    if ((0x8 & this.a) != 0)
      paramInt = this.d[3];
    return paramInt;
  }

  final int getUploadBandwidth(int paramInt)
  {
    if ((0x2 & this.a) != 0)
      paramInt = this.d[1];
    return paramInt;
  }

  final boolean isFlowControlDisabled()
  {
    if ((0x200 & this.a) != 0);
    for (int i = this.d[9]; ; i = 0)
    {
      int j = i & 0x1;
      boolean bool = false;
      if (j != 0)
        bool = true;
      return bool;
    }
  }

  final boolean isPersisted(int paramInt)
  {
    return (1 << paramInt & this.c) != 0;
  }

  final boolean isSet(int paramInt)
  {
    return (1 << paramInt & this.a) != 0;
  }

  final void merge(Settings paramSettings)
  {
    for (int i = 0; i < 10; i++)
      if (paramSettings.isSet(i))
        set(i, paramSettings.flags(i), paramSettings.get(i));
  }

  final boolean persistValue(int paramInt)
  {
    return (1 << paramInt & this.b) != 0;
  }

  final void set(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 >= this.d.length)
      return;
    int i = 1 << paramInt1;
    this.a = (i | this.a);
    if ((paramInt2 & 0x1) != 0)
    {
      this.b = (i | this.b);
      if ((paramInt2 & 0x2) == 0)
        break label84;
    }
    label84: for (this.c = (i | this.c); ; this.c &= (i ^ 0xFFFFFFFF))
    {
      this.d[paramInt1] = paramInt3;
      return;
      this.b &= (i ^ 0xFFFFFFFF);
      break;
    }
  }

  final int size()
  {
    return Integer.bitCount(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.spdy.Settings
 * JD-Core Version:    0.6.2
 */