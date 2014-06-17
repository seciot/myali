package com.alipay.mobile.common.media;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.media.MediaRecorder;
import android.net.Uri;
import android.os.Handler;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Timer;
import java.util.TimerTask;

public class VoiceRecorder
  implements MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener
{
  public static final int IDLE_STATE = 0;
  public static final int INTERNAL_ERROR = 2;
  public static final int IN_CALL_RECORD_ERROR = 3;
  public static final int NO_ERROR = 0;
  public static final int PAUSE_STATE = 3;
  public static final int PLAYING_STATE = 2;
  public static final int RECORDING_STATE = 1;
  static final String SAMPLE_LENGTH_KEY = "sample_length";
  static final String SAMPLE_PATH_KEY = "sample_path";
  static final String SAMPLE_PREFIX = "recording";
  public static final int SDCARD_ACCESS_ERROR = 1;
  public int EVERY_TIME = 150;
  private VoiceRecorder.StateChangedListener a = null;
  private VoiceRecorder.VolumnChangedListener b = null;
  private VoiceRecorder.VoicePlayCompletionListener c = null;
  private VoiceRecorder.VoiceProgressListener d = null;
  private long e = 0L;
  private int f = 0;
  private MediaRecorder g = null;
  private MediaPlayer h = null;
  private final Handler i = new Handler();
  private Timer j;
  private TimerTask k;
  private final int l = -100;
  private Runnable m = new VoiceRecorder.1(this);
  int mState = 0;

  private void a()
  {
    this.j = new Timer();
    this.k = new VoiceRecorder.3(this);
    this.j.schedule(this.k, 0L, this.EVERY_TIME);
  }

  private void a(int paramInt)
  {
    if (paramInt == this.mState)
      return;
    this.mState = paramInt;
    b(this.mState);
  }

  private void a(File paramFile, Uri paramUri, FileDescriptor paramFileDescriptor, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener, int paramInt)
  {
    stop();
    this.h = new MediaPlayer();
    if (-100 != paramInt)
      this.h.setAudioStreamType(paramInt);
    while (true)
    {
      try
      {
        this.h.reset();
        if (paramFile != null)
        {
          FileInputStream localFileInputStream1 = new FileInputStream(paramFile);
          if (localFileInputStream1.getFD() != null)
          {
            this.h.setDataSource(localFileInputStream1.getFD());
            localFileInputStream1.close();
            if (paramOnPreparedListener != null)
              this.h.setOnPreparedListener(paramOnPreparedListener);
            if (paramOnCompletionListener == null)
              break label313;
            this.h.setOnCompletionListener(new VoiceRecorder.2(this, paramOnCompletionListener));
            this.h.setOnErrorListener(this);
            this.h.prepare();
            a();
            this.h.start();
            this.e = System.currentTimeMillis();
            a(2);
            return;
          }
          this.h.setDataSource(paramFile.getAbsolutePath());
          continue;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.getMessage();
        c(2);
        this.h = null;
        return;
        if (paramUri != null)
        {
          try
          {
            FileInputStream localFileInputStream2 = new FileInputStream(paramUri.getPath());
            if (localFileInputStream2.getFD() == null)
              continue;
            this.h.setDataSource(localFileInputStream2.getFD());
            localFileInputStream2.close();
          }
          catch (Throwable localThrowable)
          {
            this.h.setDataSource(paramUri.getPath());
          }
          continue;
        }
      }
      catch (IOException localIOException)
      {
        localIOException.getMessage();
        c(1);
        this.h = null;
        return;
        this.h.setDataSource(paramUri.getPath());
        continue;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        localIllegalStateException.getMessage();
        c(2);
        this.h = null;
        return;
      }
      if (paramFileDescriptor != null)
      {
        this.h.setDataSource(paramFileDescriptor);
        continue;
        label313: this.h.setOnCompletionListener(this);
      }
    }
  }

  private void b()
  {
    this.i.postDelayed(this.m, 100L);
  }

  private void b(int paramInt)
  {
    if (this.a != null)
      this.a.onStateChanged(paramInt);
  }

  private void c(int paramInt)
  {
    if (this.a != null)
      this.a.onError(paramInt);
  }

  public void clear()
  {
    stop();
    this.f = 0;
    b(0);
  }

  public int getMaxAmplitude()
  {
    if (this.mState != 1)
      return 0;
    return this.g.getMaxAmplitude();
  }

  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    stop();
    if (this.c != null)
      this.c.onVoicePlayCompleted();
  }

  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    stop();
    c(1);
    return true;
  }

  public void pausePlay()
  {
    if (this.h == null)
      return;
    this.h.pause();
    stopProgress();
    a(3);
  }

  public void play(Uri paramUri, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    a(null, paramUri, null, paramOnPreparedListener, paramOnCompletionListener, -100);
  }

  public void play(File paramFile, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    a(paramFile, null, null, paramOnPreparedListener, paramOnCompletionListener, -100);
  }

  public void play(FileDescriptor paramFileDescriptor, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    a(null, null, paramFileDescriptor, paramOnPreparedListener, paramOnCompletionListener, -100);
  }

  public void play(FileDescriptor paramFileDescriptor, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener, int paramInt)
  {
    a(null, null, paramFileDescriptor, paramOnPreparedListener, paramOnCompletionListener, paramInt);
  }

  public int progress()
  {
    if ((this.mState == 1) || (this.mState == 2))
      return (int)((System.currentTimeMillis() - this.e) / 1000L);
    return 0;
  }

  public void resumePlay()
  {
    if (this.h == null)
      return;
    this.h.start();
    a();
    a(2);
  }

  public int sampleLength()
  {
    return this.f;
  }

  public void setStateChangedListener(VoiceRecorder.StateChangedListener paramStateChangedListener)
  {
    this.a = paramStateChangedListener;
  }

  public void setmVoicePlayCompletionListener(VoiceRecorder.VoicePlayCompletionListener paramVoicePlayCompletionListener)
  {
    this.c = paramVoicePlayCompletionListener;
  }

  public void setmVoiceProgressListener(VoiceRecorder.VoiceProgressListener paramVoiceProgressListener)
  {
    this.d = paramVoiceProgressListener;
  }

  public void setmVolumnChangedListener(VoiceRecorder.VolumnChangedListener paramVolumnChangedListener)
  {
    this.b = paramVolumnChangedListener;
  }

  // ERROR //
  public void startRecording(int paramInt, File paramFile, android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 124	com/alipay/mobile/common/media/VoiceRecorder:stop	()V
    //   4: aload_0
    //   5: new 208	android/media/MediaRecorder
    //   8: dup
    //   9: invokespecial 310	android/media/MediaRecorder:<init>	()V
    //   12: putfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   15: aload_0
    //   16: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   19: iconst_1
    //   20: invokevirtual 313	android/media/MediaRecorder:setAudioSource	(I)V
    //   23: aload_0
    //   24: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   27: iload_1
    //   28: invokevirtual 316	android/media/MediaRecorder:setOutputFormat	(I)V
    //   31: aload_0
    //   32: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   35: iconst_1
    //   36: invokevirtual 319	android/media/MediaRecorder:setAudioEncoder	(I)V
    //   39: aload_0
    //   40: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   43: aload_2
    //   44: invokevirtual 188	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   47: invokevirtual 322	android/media/MediaRecorder:setOutputFile	(Ljava/lang/String;)V
    //   50: aload_0
    //   51: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   54: invokevirtual 323	android/media/MediaRecorder:prepare	()V
    //   57: aload_0
    //   58: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   61: invokevirtual 324	android/media/MediaRecorder:start	()V
    //   64: aload_0
    //   65: invokespecial 223	com/alipay/mobile/common/media/VoiceRecorder:b	()V
    //   68: aload_0
    //   69: invokestatic 180	java/lang/System:currentTimeMillis	()J
    //   72: putfield 73	com/alipay/mobile/common/media/VoiceRecorder:e	J
    //   75: aload_0
    //   76: iconst_1
    //   77: invokespecial 182	com/alipay/mobile/common/media/VoiceRecorder:a	(I)V
    //   80: return
    //   81: astore 6
    //   83: aload 6
    //   85: invokevirtual 204	java/io/IOException:getMessage	()Ljava/lang/String;
    //   88: pop
    //   89: aload_0
    //   90: iconst_2
    //   91: invokespecial 196	com/alipay/mobile/common/media/VoiceRecorder:c	(I)V
    //   94: aload_0
    //   95: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   98: invokevirtual 325	android/media/MediaRecorder:reset	()V
    //   101: aload_0
    //   102: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   105: invokevirtual 328	android/media/MediaRecorder:release	()V
    //   108: aload_0
    //   109: aconst_null
    //   110: putfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   113: return
    //   114: astore 4
    //   116: aload 4
    //   118: invokevirtual 329	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   121: pop
    //   122: aload_0
    //   123: iconst_2
    //   124: invokespecial 196	com/alipay/mobile/common/media/VoiceRecorder:c	(I)V
    //   127: return
    //   128: astore 8
    //   130: aload 8
    //   132: invokevirtual 329	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   135: pop
    //   136: aload_3
    //   137: ldc_w 331
    //   140: invokevirtual 337	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   143: checkcast 339	android/media/AudioManager
    //   146: invokevirtual 342	android/media/AudioManager:getMode	()I
    //   149: iconst_2
    //   150: if_icmpne +44 -> 194
    //   153: iconst_1
    //   154: istore 10
    //   156: iload 10
    //   158: ifeq +28 -> 186
    //   161: aload_0
    //   162: iconst_3
    //   163: invokespecial 196	com/alipay/mobile/common/media/VoiceRecorder:c	(I)V
    //   166: aload_0
    //   167: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   170: invokevirtual 325	android/media/MediaRecorder:reset	()V
    //   173: aload_0
    //   174: getfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   177: invokevirtual 328	android/media/MediaRecorder:release	()V
    //   180: aload_0
    //   181: aconst_null
    //   182: putfield 77	com/alipay/mobile/common/media/VoiceRecorder:g	Landroid/media/MediaRecorder;
    //   185: return
    //   186: aload_0
    //   187: iconst_2
    //   188: invokespecial 196	com/alipay/mobile/common/media/VoiceRecorder:c	(I)V
    //   191: goto -25 -> 166
    //   194: iconst_0
    //   195: istore 10
    //   197: goto -41 -> 156
    //
    // Exception table:
    //   from	to	target	type
    //   50	57	81	java/io/IOException
    //   0	50	114	java/lang/RuntimeException
    //   50	57	114	java/lang/RuntimeException
    //   68	80	114	java/lang/RuntimeException
    //   83	113	114	java/lang/RuntimeException
    //   130	153	114	java/lang/RuntimeException
    //   161	166	114	java/lang/RuntimeException
    //   166	185	114	java/lang/RuntimeException
    //   186	191	114	java/lang/RuntimeException
    //   57	68	128	java/lang/RuntimeException
  }

  public int state()
  {
    return this.mState;
  }

  public void stop()
  {
    stopRecording();
    stopPlay();
  }

  public void stopPlay()
  {
    if (this.h == null)
      return;
    this.h.stop();
    this.h.release();
    stopProgress();
    this.h = null;
    a(0);
  }

  public void stopProgress()
  {
    if (this.j != null)
    {
      this.j.cancel();
      this.j = null;
    }
    if (this.k != null)
    {
      this.k.cancel();
      this.k = null;
    }
  }

  public void stopRecording()
  {
    if (this.g == null)
      return;
    try
    {
      this.g.stop();
      this.g.release();
      this.g = null;
      this.f = ((int)((System.currentTimeMillis() - this.e) / 1000L));
      a(0);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        localRuntimeException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.VoiceRecorder
 * JD-Core Version:    0.6.2
 */