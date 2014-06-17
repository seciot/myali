package com.alipay.b.b;

import android.media.AudioTrack;

public final class d
{
  private static d d;
  protected AudioTrack a = null;
  protected int b = 0;
  private e c = null;

  public static d a()
  {
    if (d == null)
      d = new d();
    return d;
  }

  // ERROR //
  public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: iload_3
    //   2: sipush 1000
    //   5: imul
    //   6: putfield 20	com/alipay/b/b/d:b	I
    //   9: aload_0
    //   10: new 31	android/media/AudioTrack
    //   13: dup
    //   14: iconst_3
    //   15: ldc 32
    //   17: iconst_4
    //   18: iconst_2
    //   19: iload_2
    //   20: iconst_0
    //   21: invokespecial 35	android/media/AudioTrack:<init>	(IIIIII)V
    //   24: putfield 18	com/alipay/b/b/d:a	Landroid/media/AudioTrack;
    //   27: aload_0
    //   28: getfield 18	com/alipay/b/b/d:a	Landroid/media/AudioTrack;
    //   31: astore 5
    //   33: getstatic 40	android/os/Build$VERSION:SDK_INT	I
    //   36: istore 6
    //   38: iload 6
    //   40: bipush 9
    //   42: if_icmplt +33 -> 75
    //   45: new 42	android/media/audiofx/Equalizer
    //   48: dup
    //   49: iconst_0
    //   50: aload 5
    //   52: invokevirtual 46	android/media/AudioTrack:getAudioSessionId	()I
    //   55: invokespecial 49	android/media/audiofx/Equalizer:<init>	(II)V
    //   58: astore 10
    //   60: aload 10
    //   62: invokevirtual 53	android/media/audiofx/Equalizer:getEnabled	()Z
    //   65: ifeq +10 -> 75
    //   68: aload 10
    //   70: iconst_0
    //   71: invokevirtual 57	android/media/audiofx/Equalizer:setEnabled	(Z)I
    //   74: pop
    //   75: iload_2
    //   76: iconst_2
    //   77: idiv
    //   78: istore 7
    //   80: aload_0
    //   81: getfield 18	com/alipay/b/b/d:a	Landroid/media/AudioTrack;
    //   84: aload_1
    //   85: iconst_0
    //   86: iload 7
    //   88: iconst_1
    //   89: ishl
    //   90: invokevirtual 61	android/media/AudioTrack:write	([BII)I
    //   93: pop
    //   94: aload_0
    //   95: getfield 18	com/alipay/b/b/d:a	Landroid/media/AudioTrack;
    //   98: iconst_0
    //   99: iload 7
    //   101: iconst_m1
    //   102: invokevirtual 65	android/media/AudioTrack:setLoopPoints	(III)I
    //   105: pop
    //   106: aload_0
    //   107: getfield 18	com/alipay/b/b/d:a	Landroid/media/AudioTrack;
    //   110: invokevirtual 68	android/media/AudioTrack:play	()V
    //   113: aload_0
    //   114: getfield 22	com/alipay/b/b/d:c	Lcom/alipay/b/b/e;
    //   117: ifnull +11 -> 128
    //   120: aload_0
    //   121: getfield 22	com/alipay/b/b/d:c	Lcom/alipay/b/b/e;
    //   124: iconst_0
    //   125: invokevirtual 73	com/alipay/b/b/e:a	(Z)V
    //   128: aload_0
    //   129: new 70	com/alipay/b/b/e
    //   132: dup
    //   133: aload_0
    //   134: invokespecial 76	com/alipay/b/b/e:<init>	(Lcom/alipay/b/b/d;)V
    //   137: putfield 22	com/alipay/b/b/d:c	Lcom/alipay/b/b/e;
    //   140: aload_0
    //   141: getfield 22	com/alipay/b/b/d:c	Lcom/alipay/b/b/e;
    //   144: invokevirtual 79	com/alipay/b/b/e:start	()V
    //   147: iconst_1
    //   148: ireturn
    //   149: astore 4
    //   151: iconst_0
    //   152: ireturn
    //   153: astore 11
    //   155: goto -80 -> 75
    //
    // Exception table:
    //   from	to	target	type
    //   9	38	149	java/lang/Exception
    //   75	113	149	java/lang/Exception
    //   45	75	153	java/lang/Exception
  }

  public final boolean b()
  {
    return this.a != null;
  }

  public final void c()
  {
    if (this.c != null)
    {
      this.c.a(false);
      this.c = null;
    }
    if (this.a != null);
    try
    {
      this.a.stop();
      this.a.release();
      this.a = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.b.d
 * JD-Core Version:    0.6.2
 */