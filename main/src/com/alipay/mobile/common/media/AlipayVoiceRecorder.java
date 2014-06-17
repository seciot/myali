package com.alipay.mobile.common.media;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import java.io.File;

public class AlipayVoiceRecorder extends VoiceRecorder
  implements SensorEventListener
{
  private Context a;
  private AudioRegulatorManager.AudioRegulator b;
  private SensorManager c;
  private Sensor d;
  private TelephonyManager e;
  private boolean f = false;
  private boolean g = false;
  private Thread h;
  private Thread i;
  private Handler j;
  private File k = null;
  private PhoneStateListener l = new AlipayVoiceRecorder.3(this);
  private AlipayVoiceRecorder.MaxRecordDurationNotifier m = new AlipayVoiceRecorder.MaxRecordDurationNotifier(this, null);

  public AlipayVoiceRecorder(Context paramContext)
  {
    this.a = paramContext;
    this.b = AudioRegulatorManager.newAudioRegulator(paramContext);
    this.c = ((SensorManager)this.a.getSystemService("sensor"));
    this.d = this.c.getDefaultSensor(8);
    this.e = ((TelephonyManager)this.a.getSystemService("phone"));
    this.j = new Handler();
  }

  private void a()
  {
    this.m.setListener(null);
    this.j.removeCallbacks(this.m);
  }

  public void cancelRecordingWithDuration()
  {
    stopRecording();
    try
    {
      if ((this.k != null) && (this.k.exists()))
        this.k.delete();
      this.k = null;
      a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }

  public int getVoiceFileDuration(Context paramContext, File paramFile)
  {
    if ((paramFile != null) && (paramFile.exists()))
    {
      MediaPlayer localMediaPlayer = MediaPlayer.create(paramContext, Uri.fromFile(paramFile));
      int n = (int)(0.5F + localMediaPlayer.getDuration() / 1000);
      if (localMediaPlayer != null)
        localMediaPlayer.release();
      return n;
    }
    return -1;
  }

  public void onAccuracyChanged(Sensor paramSensor, int paramInt)
  {
  }

  public void onBackgound()
  {
    stop();
    this.k = null;
    if (!this.g)
      this.b.resetSpeakerToOriginal();
    this.i = new AlipayVoiceRecorder.2(this);
    this.i.setName("sensorUnregisterThread");
    this.i.start();
    if (this.e != null)
      this.e.listen(this.l, 0);
    a();
  }

  public void onForeground()
  {
    this.h = new AlipayVoiceRecorder.1(this);
    this.h.setName("sensorRegisterThread");
    this.h.start();
    if (this.e != null)
      this.e.listen(this.l, 32);
  }

  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    float f1 = paramSensorEvent.values[0];
    boolean bool1 = f1 < 0.0D;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = f1 < 5.0F;
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = f1 < paramSensorEvent.sensor.getMaximumRange();
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
    }
    this.f = bool2;
    if (1 == state())
      return;
    if (this.f)
    {
      this.b.closeToTheFace();
      return;
    }
    this.b.stayAwayFromFace(true);
  }

  public void startRecordingWithDuration(Context paramContext, File paramFile, int paramInt, AlipayVoiceRecorder.MaxRecordDurationListener paramMaxRecordDurationListener)
  {
    if (paramFile == null);
    do
    {
      return;
      this.k = paramFile;
      startRecording(3, paramFile, paramContext);
    }
    while (paramInt <= 0);
    long l1 = 1000L * paramInt;
    a();
    this.m.setListener(paramMaxRecordDurationListener);
    this.j.postDelayed(this.m, l1);
  }

  public int stopRecordingWithDuration(AlipayVoiceRecorder.MinRecordDurationListener paramMinRecordDurationListener)
  {
    stopRecording();
    if (sampleLength() <= 0)
      paramMinRecordDurationListener.onMinRecordDurationCompleted();
    try
    {
      if ((this.k != null) && (this.k.exists()))
        this.k.delete();
      this.k = null;
      a();
      return sampleLength();
    }
    catch (Exception localException)
    {
      while (true)
        localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.AlipayVoiceRecorder
 * JD-Core Version:    0.6.2
 */