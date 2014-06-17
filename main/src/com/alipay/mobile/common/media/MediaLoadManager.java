package com.alipay.mobile.common.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.download.DownloadManager;
import com.alipay.mobile.common.transport.download.DownloadRequest;
import java.io.File;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

public class MediaLoadManager
{
  public static final int MSG_DL_FAIL_MEDIA = 258;
  public static final int MSG_DOWNLOADING_MEDIA = 260;
  public static final int MSG_GET_MEDIA = 256;
  public static final int MSG_PLAYING_MEDIA = 257;
  public static final int MSG_PLAY_FINISH_MEDIA = 259;
  public static final int MSG_REFRESH_Media = 1;
  private static final String a = MediaLoadManager.class.getName();
  private static MediaLoadManager b = null;
  private DownloadManager c = null;
  private AlipayVoiceRecorder d = null;
  private Handler e;
  private Vector f = null;
  private ConcurrentHashMap g = null;
  private Map h = null;
  private ConcurrentHashMap i = null;
  private String j = "";
  private String k = "";
  private MediaLoadManager.MediaPlaying l = null;
  private Context m;
  private WeakHashMap n;
  private TransportCallback o = new MediaLoadManager.1(this);
  private Handler p = new MediaLoadManager.2(this, Looper.getMainLooper());

  private MediaLoadManager(Context paramContext)
  {
    this.m = paramContext.getApplicationContext();
    this.c = new DownloadManager(paramContext);
    this.d = new AlipayVoiceRecorder(paramContext);
    this.f = new Vector();
    this.g = new ConcurrentHashMap();
    this.h = new ConcurrentHashMap();
    this.i = new ConcurrentHashMap();
    String str = DeviceInfo.getInstance().getExternalStoragePath("downloads/");
    File localFile;
    if ((str == null) || (str.length() == 0))
    {
      str = paramContext.getCacheDir().getAbsolutePath() + "/downloads/";
      localFile = new File(str);
      if ((localFile.exists()) || (localFile.mkdir()))
        break label275;
      new StringBuilder("path not exist but fail to create: ").append(str).toString();
    }
    while (true)
    {
      this.j = str;
      this.n = new WeakHashMap();
      this.e = new Handler(Looper.getMainLooper());
      return;
      label275: if (!localFile.isDirectory())
      {
        new StringBuilder().append(str).append(" dir exist,but not directory.").toString();
        str = null;
      }
    }
  }

  private String a(String paramString)
  {
    if (this.i.containsKey(paramString))
      return (String)this.i.get(paramString);
    return null;
  }

  private void a()
  {
    Iterator localIterator = this.n.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      MediaPlayer.OnCompletionListener localOnCompletionListener = (MediaPlayer.OnCompletionListener)this.n.get(str);
      if (localOnCompletionListener != null)
        localOnCompletionListener.onCompletion(null);
    }
  }

  private void a(int paramInt, String paramString1, String paramString2)
  {
    Handler localHandler = (Handler)this.h.get(paramString1);
    if (localHandler != null)
    {
      Message localMessage = Message.obtain();
      localMessage.what = paramInt;
      localMessage.obj = new Object[] { paramString1, paramString2 };
      localMessage.setTarget(localHandler);
      localMessage.sendToTarget();
    }
  }

  private void a(File paramFile, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    this.e.postDelayed(new MediaLoadManager.5(this, paramFile, paramOnPreparedListener, paramOnCompletionListener), 500L);
  }

  private void a(String paramString1, String paramString2)
  {
    this.i.put(paramString1, paramString2);
  }

  private MediaLoadManager.OnLoadedMediaCallBack b(String paramString)
  {
    if (this.g.containsKey(paramString))
      return (MediaLoadManager.OnLoadedMediaCallBack)this.g.remove(paramString);
    return null;
  }

  private void b()
  {
    if (this.l != null)
      a(259, this.l.mUrl, this.l.mPath);
  }

  private void b(String paramString1, String paramString2)
  {
    this.l = new MediaLoadManager.MediaPlaying(paramString1, paramString2);
    a(257, this.l.mUrl, this.l.mPath);
    a(new File(paramString2), new MediaLoadManager.3(this), new MediaLoadManager.4(this));
  }

  public static MediaLoadManager getInstance(Context paramContext)
  {
    if (b == null)
      b = new MediaLoadManager(paramContext);
    return b;
  }

  public void clearCache(int paramInt)
  {
    if (this.i.containsKey(Integer.valueOf(paramInt)))
      this.i.clear();
  }

  public void destroy()
  {
    this.j = null;
    this.c = null;
    if (this.i != null)
    {
      this.i.clear();
      this.i = null;
    }
    if (this.f != null)
    {
      this.f.clear();
      this.f = null;
    }
    if (this.g != null)
    {
      this.g.clear();
      this.g = null;
    }
    if (this.h != null)
    {
      this.h.clear();
      this.h = null;
    }
  }

  public String getPath(String paramString)
  {
    return this.j + paramString.hashCode() + ".media";
  }

  public int getStatusByUrl(String paramString)
  {
    if ((this.l != null) && (TextUtils.equals(this.l.mUrl, paramString)) && (this.d.state() == 2))
      return 257;
    if (this.f.contains(paramString))
      return 260;
    return 259;
  }

  public AlipayVoiceRecorder getVoiceRecorder()
  {
    return this.d;
  }

  public boolean isPlaying(String paramString)
  {
    return (this.l != null) && (TextUtils.equals(this.l.mUrl, paramString));
  }

  public void loadMediaAsync(String paramString, MediaLoadManager.OnLoadedMediaCallBack paramOnLoadedMediaCallBack, Handler paramHandler)
  {
    int i1;
    if ((!TextUtils.isEmpty(paramString)) && ((paramString.startsWith("http://")) || (paramString.startsWith("https://"))))
    {
      i1 = 1;
      if (i1 != 0)
        break label42;
    }
    label42: label82: 
    do
    {
      do
      {
        return;
        i1 = 0;
        break;
        if (this.d.state() != 2)
          break label82;
        stop();
        b();
      }
      while ((this.l != null) && (TextUtils.equals(this.l.mUrl, paramString)));
      if (this.i.containsKey(paramString))
        b(paramString);
    }
    while (this.f.contains(paramString));
    if (paramHandler != null)
      this.h.put(paramString, paramHandler);
    if (paramOnLoadedMediaCallBack != null)
      this.g.put(paramString, paramOnLoadedMediaCallBack);
    String str = getPath(paramString);
    if (new File(str).exists())
    {
      a(paramString, str);
      b(paramString, a(paramString));
    }
    while (true)
    {
      a();
      return;
      new DownloadRequest(paramString).setPath(getPath(paramString));
      this.k = paramString;
      this.c.addDownload(paramString, getPath(paramString), null, this.o);
      a(260, paramString, str);
    }
  }

  public void onPause()
  {
    if ((this.l != null) && (this.d.state() == 2))
    {
      this.d.stopPlay();
      a(259, this.l.mUrl, this.l.mPath);
      return;
    }
    this.d.onBackgound();
  }

  public void onResume()
  {
    this.d.onForeground();
  }

  public void playAudioFile(File paramFile, MediaPlayer.OnPreparedListener paramOnPreparedListener, MediaPlayer.OnCompletionListener paramOnCompletionListener)
  {
    if ((paramFile == null) || (!paramFile.exists()))
      return;
    stop();
    b();
    this.l = null;
    this.n.put(paramFile.getAbsolutePath(), paramOnCompletionListener);
    a(paramFile, paramOnPreparedListener, paramOnCompletionListener);
  }

  public void playMessageMedia(int paramInt)
  {
    try
    {
      AssetFileDescriptor localAssetFileDescriptor = this.m.getResources().openRawResourceFd(paramInt);
      MediaPlayer localMediaPlayer = new MediaPlayer();
      localMediaPlayer.reset();
      localMediaPlayer.setAudioStreamType(1);
      localMediaPlayer.setDataSource(localAssetFileDescriptor.getFileDescriptor(), localAssetFileDescriptor.getStartOffset(), localAssetFileDescriptor.getDeclaredLength());
      localMediaPlayer.prepare();
      localMediaPlayer.start();
      localAssetFileDescriptor.close();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public void playResoureAudio(int paramInt)
  {
    AssetFileDescriptor localAssetFileDescriptor = this.m.getResources().openRawResourceFd(paramInt);
    if (localAssetFileDescriptor != null)
      this.d.play(localAssetFileDescriptor.getFileDescriptor(), null, null, 1);
  }

  public void startRecordAudio(File paramFile, int paramInt, AlipayVoiceRecorder.MaxRecordDurationListener paramMaxRecordDurationListener)
  {
    stop();
    b();
    this.l = null;
    this.d.startRecordingWithDuration(this.m, paramFile, paramInt, paramMaxRecordDurationListener);
  }

  public void stop()
  {
    int i1 = this.d.state();
    if (i1 == 1)
      this.d.stopRecording();
    while (i1 != 2)
      return;
    this.d.stopPlay();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.media.MediaLoadManager
 * JD-Core Version:    0.6.2
 */