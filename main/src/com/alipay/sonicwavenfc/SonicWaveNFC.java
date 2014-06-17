package com.alipay.sonicwavenfc;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import com.alipay.b.a.a;
import com.alipay.b.b.c;
import java.io.PrintStream;

public class SonicWaveNFC
{
  public static final int NFC_SENDDATA_SOUNDTYPE_MIX = 2;
  public static final int NFC_SENDDATA_SOUNDTYPE_NOISY = 1;
  public static final int NFC_SENDDATA_SOUNDTYPE_SILENT;
  private static SonicWaveNFC c = null;
  protected SonicWaveNFCHandler a = null;
  protected SonicWaveNFC.OsHandlerEx b = new SonicWaveNFC.OsHandlerEx(this, Looper.myLooper());
  private a d = new SonicWaveNFC.ReceiveDataHandlerImpl(this, null);
  private com.alipay.b.b.b e = new SonicWaveNFC.SendDataHandlerImpl(this, null);
  private AudioManager f = null;
  private int g = -1;
  private String h = null;
  private String i = null;
  private String j = null;
  private boolean k = false;
  private int l = -1;
  private int m = -1;
  private boolean n = true;
  private int o = 1;

  public static SonicWaveNFC getInstance()
  {
    if (c == null)
      c = new SonicWaveNFC();
    return c;
  }

  public a getReceiveDataHandler()
  {
    return this.d;
  }

  public com.alipay.b.b.b getSendDataHandler()
  {
    return this.e;
  }

  public void initSonicWaveNFC(Context paramContext)
  {
  }

  public boolean isReceiverSoincWave()
  {
    return this.n;
  }

  public boolean isSendSoincWave()
  {
    return !this.k;
  }

  public void printPara()
  {
    System.out.println("sManufacturer=" + this.h + " sModel=" + this.i + " sVersion=" + this.j + " isSendExtraMode=" + this.k + " iVol=" + this.l + " iMinAmpl=" + this.m + " isReceiverExtraMode=" + this.n + " iMicType=" + this.o);
  }

  protected void resetOriVolume()
  {
    System.out.println("resetOriVolume mOriVolume=" + this.g);
    if ((this.f != null) && (this.g >= 0));
    try
    {
      this.f.setStreamVolume(3, this.g, 0);
      Log.d("SonicWaveNFC", "resetOriVolume mOriVolume=" + this.g + " 音量已经恢复");
      label82: this.g = -1;
      return;
      Log.d("SonicWaveNFC", "resetOriVolume mOriVolume=" + this.g + " 音量未恢复");
      return;
    }
    catch (Exception localException)
    {
      break label82;
    }
  }

  public boolean setBkSoundWave4MixFromAsset(Context paramContext, String paramString)
  {
    return c.a().a(paramContext, paramString);
  }

  public void setPhoneConfig(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      this.h = null;
      this.i = null;
      this.j = null;
      this.k = false;
      this.l = -1;
      this.m = -1;
      this.n = true;
      this.o = 1;
    }
    while (true)
    {
      return;
      try
      {
        String[] arrayOfString1 = paramString.split("\\|");
        System.out.println("paramArr length=" + arrayOfString1.length);
        if ((arrayOfString1 != null) && (arrayOfString1.length >= 4))
        {
          String str1 = arrayOfString1[0].split("=")[1];
          if ((str1 == null) || (Build.MANUFACTURER.equalsIgnoreCase(str1)))
          {
            if ((str1 != null) && (!"".equals(str1)))
              this.h = str1;
            String str2 = arrayOfString1[1].split("=")[1];
            if ((str2 != null) && (!"".equals(str2)))
              this.i = str2;
            String str3 = arrayOfString1[2].split("=")[1];
            int i1 = 0;
            if (str3 != null)
            {
              boolean bool = "".equals(str3);
              i1 = 0;
              if (!bool)
                this.j = str3;
            }
            while (i1 < -3 + arrayOfString1.length)
            {
              String[] arrayOfString2 = arrayOfString1[(i1 + 3)].split("=");
              String str4 = arrayOfString2[0];
              String str5 = arrayOfString2[1];
              if (str5 != null)
                if ("isSExt".equalsIgnoreCase(str4))
                {
                  if ("true".equals(str5))
                    this.k = true;
                  else if ("false".equals(str5))
                    this.k = false;
                }
                else if ("iVolume".equalsIgnoreCase(str4))
                  this.l = Integer.parseInt(str5);
                else if ("iMin".equalsIgnoreCase(str4))
                  this.m = Integer.parseInt(str5);
                else if ("isRExt".equalsIgnoreCase(str4))
                {
                  if ("false".equals(str5))
                    this.n = false;
                  else if ("true".equals(str5))
                    this.n = true;
                }
                else if ("iMicType".equalsIgnoreCase(str4))
                  this.o = Integer.parseInt(str5);
              i1++;
            }
          }
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  public boolean startReceiveData(int paramInt1, int paramInt2, Context paramContext, SonicWaveNFCHandler paramSonicWaveNFCHandler)
  {
    Log.d("SonicWaveNFC", "调用 startReceiveData 准备开始接收声波");
    this.a = paramSonicWaveNFCHandler;
    try
    {
      this.f = ((AudioManager)paramContext.getSystemService("audio"));
      try
      {
        label27: this.f.setMicrophoneMute(false);
        label35: com.alipay.b.b.d locald = com.alipay.b.b.d.a();
        com.alipay.b.a.b localb = com.alipay.b.a.b.a();
        com.alipay.b.a.d locald1 = com.alipay.b.a.d.a();
        locald.c();
        localb.c();
        locald1.c();
        if ((paramInt2 < 5) || (paramInt2 > 200))
          paramInt2 = 20;
        if (-1 != this.m)
          paramInt2 = this.m;
        if (1 != this.o)
          locald1.a(this.o);
        localb.a(paramInt2);
        localb.a(paramInt1);
        locald1.b();
        return true;
      }
      catch (Exception localException2)
      {
        break label35;
      }
    }
    catch (Exception localException1)
    {
      break label27;
    }
  }

  // ERROR //
  public boolean startSendData(String paramString, int paramInt1, int paramInt2, int paramInt3, Context paramContext, SonicWaveNFCHandler paramSonicWaveNFCHandler)
  {
    // Byte code:
    //   0: ldc 161
    //   2: ldc_w 280
    //   5: invokestatic 168	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   8: pop
    //   9: aload_0
    //   10: invokevirtual 283	com/alipay/sonicwavenfc/SonicWaveNFC:stopSendData	()V
    //   13: ldc 161
    //   15: ldc_w 285
    //   18: invokestatic 168	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   21: pop
    //   22: aload_1
    //   23: ifnull +388 -> 411
    //   26: aload_1
    //   27: invokevirtual 289	java/lang/String:length	()I
    //   30: ifle +381 -> 411
    //   33: aload_1
    //   34: ldc_w 291
    //   37: invokevirtual 295	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   40: astore 24
    //   42: aload 24
    //   44: astore 9
    //   46: aload_0
    //   47: aload 6
    //   49: putfield 42	com/alipay/sonicwavenfc/SonicWaveNFC:a	Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;
    //   52: invokestatic 177	com/alipay/b/b/c:a	()Lcom/alipay/b/b/c;
    //   55: astore 10
    //   57: invokestatic 251	com/alipay/b/b/d:a	()Lcom/alipay/b/b/d;
    //   60: astore 11
    //   62: invokestatic 256	com/alipay/b/a/b:a	()Lcom/alipay/b/a/b;
    //   65: astore 12
    //   67: invokestatic 261	com/alipay/b/a/d:a	()Lcom/alipay/b/a/d;
    //   70: astore 13
    //   72: aload 11
    //   74: invokevirtual 297	com/alipay/b/b/d:b	()Z
    //   77: istore 14
    //   79: aload 11
    //   81: invokevirtual 263	com/alipay/b/b/d:c	()V
    //   84: aload 12
    //   86: invokevirtual 264	com/alipay/b/a/b:c	()V
    //   89: aload 13
    //   91: invokevirtual 265	com/alipay/b/a/d:c	()V
    //   94: iload 14
    //   96: ifeq +9 -> 105
    //   99: ldc2_w 298
    //   102: invokestatic 305	java/lang/Thread:sleep	(J)V
    //   105: iload_3
    //   106: iconst_1
    //   107: if_icmpne +179 -> 286
    //   110: iconst_1
    //   111: istore 15
    //   113: aload 10
    //   115: iload 15
    //   117: invokevirtual 307	com/alipay/b/b/c:a	(Z)V
    //   120: aload_0
    //   121: aload 5
    //   123: ldc 236
    //   125: invokevirtual 242	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   128: checkcast 155	android/media/AudioManager
    //   131: putfield 71	com/alipay/sonicwavenfc/SonicWaveNFC:f	Landroid/media/AudioManager;
    //   134: aload_0
    //   135: aload_0
    //   136: getfield 71	com/alipay/sonicwavenfc/SonicWaveNFC:f	Landroid/media/AudioManager;
    //   139: iconst_3
    //   140: invokevirtual 311	android/media/AudioManager:getStreamVolume	(I)I
    //   143: putfield 73	com/alipay/sonicwavenfc/SonicWaveNFC:g	I
    //   146: getstatic 108	java/lang/System:out	Ljava/io/PrintStream;
    //   149: new 110	java/lang/StringBuilder
    //   152: dup
    //   153: ldc_w 313
    //   156: invokespecial 115	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   159: aload_0
    //   160: getfield 73	com/alipay/sonicwavenfc/SonicWaveNFC:g	I
    //   163: invokevirtual 133	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   166: invokevirtual 143	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokevirtual 148	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   172: iload 4
    //   174: bipush 50
    //   176: if_icmplt +10 -> 186
    //   179: iload 4
    //   181: bipush 100
    //   183: if_icmple +221 -> 404
    //   186: bipush 50
    //   188: istore 17
    //   190: iload 17
    //   192: bipush 80
    //   194: if_icmple +7 -> 201
    //   197: bipush 80
    //   199: istore 17
    //   201: aload_0
    //   202: getfield 81	com/alipay/sonicwavenfc/SonicWaveNFC:k	Z
    //   205: ifeq +5 -> 210
    //   208: iconst_1
    //   209: istore_3
    //   210: iload_3
    //   211: tableswitch	default:+21 -> 232, 1:+81->292, 2:+102->313
    //   233: lconst_1
    //   234: iconst_0
    //   235: invokevirtual 307	com/alipay/b/b/c:a	(Z)V
    //   238: aload 10
    //   240: iconst_0
    //   241: invokevirtual 315	com/alipay/b/b/c:b	(Z)V
    //   244: iconst_m1
    //   245: aload_0
    //   246: getfield 83	com/alipay/sonicwavenfc/SonicWaveNFC:l	I
    //   249: if_icmpeq +9 -> 258
    //   252: aload_0
    //   253: getfield 83	com/alipay/sonicwavenfc/SonicWaveNFC:l	I
    //   256: istore 17
    //   258: iconst_1
    //   259: newarray int
    //   261: astore 18
    //   263: aload 10
    //   265: aload 9
    //   267: aload 18
    //   269: iload_2
    //   270: invokevirtual 318	com/alipay/b/b/c:a	([B[II)[B
    //   273: astore 19
    //   275: aload 19
    //   277: ifnonnull +62 -> 339
    //   280: iconst_0
    //   281: ireturn
    //   282: astore 23
    //   284: iconst_0
    //   285: ireturn
    //   286: iconst_0
    //   287: istore 15
    //   289: goto -176 -> 113
    //   292: iload 17
    //   294: iconst_2
    //   295: idiv
    //   296: istore 17
    //   298: aload 10
    //   300: iconst_1
    //   301: invokevirtual 307	com/alipay/b/b/c:a	(Z)V
    //   304: aload 10
    //   306: iconst_0
    //   307: invokevirtual 315	com/alipay/b/b/c:b	(Z)V
    //   310: goto -66 -> 244
    //   313: iload 17
    //   315: bipush 50
    //   317: if_icmpgt +7 -> 324
    //   320: bipush 50
    //   322: istore 17
    //   324: aload 10
    //   326: iconst_0
    //   327: invokevirtual 307	com/alipay/b/b/c:a	(Z)V
    //   330: aload 10
    //   332: iconst_1
    //   333: invokevirtual 315	com/alipay/b/b/c:b	(Z)V
    //   336: goto -92 -> 244
    //   339: aload_0
    //   340: getfield 71	com/alipay/sonicwavenfc/SonicWaveNFC:f	Landroid/media/AudioManager;
    //   343: iconst_3
    //   344: iconst_0
    //   345: invokevirtual 322	android/media/AudioManager:setStreamMute	(IZ)V
    //   348: aload_0
    //   349: getfield 71	com/alipay/sonicwavenfc/SonicWaveNFC:f	Landroid/media/AudioManager;
    //   352: iconst_3
    //   353: iload 17
    //   355: aload_0
    //   356: getfield 71	com/alipay/sonicwavenfc/SonicWaveNFC:f	Landroid/media/AudioManager;
    //   359: iconst_3
    //   360: invokevirtual 325	android/media/AudioManager:getStreamMaxVolume	(I)I
    //   363: imul
    //   364: bipush 100
    //   366: idiv
    //   367: iconst_0
    //   368: invokevirtual 159	android/media/AudioManager:setStreamVolume	(III)V
    //   371: aload 11
    //   373: aload 19
    //   375: aload 18
    //   377: iconst_0
    //   378: iaload
    //   379: iload_2
    //   380: invokevirtual 328	com/alipay/b/b/d:a	([BII)Z
    //   383: ireturn
    //   384: astore 22
    //   386: goto -281 -> 105
    //   389: astore 21
    //   391: goto -20 -> 371
    //   394: astore 20
    //   396: goto -48 -> 348
    //   399: astore 16
    //   401: goto -229 -> 172
    //   404: iload 4
    //   406: istore 17
    //   408: goto -218 -> 190
    //   411: aconst_null
    //   412: astore 9
    //   414: goto -368 -> 46
    //
    // Exception table:
    //   from	to	target	type
    //   33	42	282	java/lang/Exception
    //   99	105	384	java/lang/InterruptedException
    //   348	371	389	java/lang/Exception
    //   339	348	394	java/lang/Exception
    //   120	172	399	java/lang/Exception
  }

  public void stopReceiveData()
  {
    Log.d("SonicWaveNFC", "调用 stopReceiveData 停止接收声波");
    com.alipay.b.a.b localb = com.alipay.b.a.b.a();
    com.alipay.b.a.d locald = com.alipay.b.a.d.a();
    localb.c();
    locald.c();
  }

  public void stopSendData()
  {
    Log.d("SonicWaveNFC", "调用 stopSendData 停止发送声波");
    com.alipay.b.b.d.a().c();
    resetOriVolume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.sonicwavenfc.SonicWaveNFC
 * JD-Core Version:    0.6.2
 */