package com.androidquery.util;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.AlphaAnimation;
import com.androidquery.AQuery;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class AQUtility
{
  private static boolean a = false;
  private static Object b;
  private static Thread.UncaughtExceptionHandler c;
  private static Map<String, Long> d = new HashMap();
  private static Handler e;
  private static ScheduledExecutorService f;
  private static File g;
  private static File h;
  private static Context i;

  public static void apply(SharedPreferences.Editor paramEditor)
  {
    if (AQuery.SDK_INT >= 9)
    {
      invokeHandler(paramEditor, "apply", false, true, null, null);
      return;
    }
    paramEditor.commit();
  }

  public static void cleanCache(File paramFile, long paramLong1, long paramLong2)
  {
    try
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile == null)
        return;
      Arrays.sort(arrayOfFile, new Common());
      if (testCleanNeeded(arrayOfFile, paramLong1))
        cleanCache(arrayOfFile, paramLong2);
      File localFile = getTempDir();
      if ((localFile != null) && (localFile.exists()))
      {
        cleanCache(localFile.listFiles(), 0L);
        return;
      }
    }
    catch (Exception localException)
    {
      report(localException);
    }
  }

  private static void cleanCache(File[] paramArrayOfFile, long paramLong)
  {
    int j = 0;
    long l = 0L;
    int k = 0;
    while (true)
    {
      if (j >= paramArrayOfFile.length)
      {
        debug("deleted", Integer.valueOf(k));
        return;
      }
      File localFile = paramArrayOfFile[j];
      if (localFile.isFile())
      {
        l += localFile.length();
        if (l >= paramLong)
        {
          localFile.delete();
          k++;
        }
      }
      j++;
    }
  }

  public static void cleanCacheAsync(Context paramContext)
  {
    cleanCacheAsync(paramContext, 3000000L, 2000000L);
  }

  public static void cleanCacheAsync(Context paramContext, long paramLong1, long paramLong2)
  {
    try
    {
      File localFile = getCacheDir(paramContext);
      Common localCommon1 = new Common();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = localFile;
      arrayOfObject[1] = Long.valueOf(paramLong1);
      arrayOfObject[2] = Long.valueOf(paramLong2);
      Common localCommon2 = localCommon1.method(2, arrayOfObject);
      getFileStoreExecutor().schedule(localCommon2, 0L, TimeUnit.MILLISECONDS);
      return;
    }
    catch (Exception localException)
    {
      report(localException);
    }
  }

  public static void close(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void copy(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    copy(paramInputStream, paramOutputStream, 0, null);
  }

  public static void copy(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt, Progress paramProgress)
  {
    if (paramProgress != null)
    {
      paramProgress.reset();
      paramProgress.setBytes(paramInt);
    }
    byte[] arrayOfByte = new byte[4096];
    while (true)
    {
      int j = paramInputStream.read(arrayOfByte);
      if (j == -1)
      {
        if (paramProgress != null)
          paramProgress.done();
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, j);
      if (paramProgress != null)
        paramProgress.increment(j);
    }
  }

  public static void debug(Object paramObject)
  {
    if (a)
      Log.w("AQuery", paramObject);
  }

  public static void debug(Object paramObject1, Object paramObject2)
  {
    if (a)
      Log.w("AQuery", paramObject1 + ":" + paramObject2);
  }

  public static void debug(Throwable paramThrowable)
  {
    if (a)
      Log.w("AQuery", Log.getStackTraceString(paramThrowable));
  }

  public static void debugNotify()
  {
    if ((!a) || (b == null))
      return;
    synchronized (b)
    {
      b.notifyAll();
      return;
    }
  }

  public static void debugWait(long paramLong)
  {
    if (!a)
      return;
    if (b == null)
      b = new Object();
    try
    {
      synchronized (b)
      {
        b.wait(paramLong);
        return;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  public static int dip2pixel(Context paramContext, float paramFloat)
  {
    return (int)TypedValue.applyDimension(1, paramFloat, paramContext.getResources().getDisplayMetrics());
  }

  public static void ensureUIThread()
  {
    if (!isUIThread())
      report(new IllegalStateException("Not UI Thread"));
  }

  public static File getCacheDir(Context paramContext)
  {
    if (g == null)
    {
      File localFile = new File(paramContext.getCacheDir(), "aquery");
      g = localFile;
      localFile.mkdirs();
    }
    return g;
  }

  public static File getCacheDir(Context paramContext, int paramInt)
  {
    if (paramInt == 1)
    {
      if (h != null)
        return h;
      File localFile = new File(getCacheDir(paramContext), "persistent");
      h = localFile;
      localFile.mkdirs();
      return h;
    }
    return getCacheDir(paramContext);
  }

  public static File getCacheFile(File paramFile, String paramString)
  {
    if (paramString == null)
      return null;
    if (paramString.startsWith(File.separator))
      return new File(paramString);
    return makeCacheFile(paramFile, getCacheFileName(paramString));
  }

  private static String getCacheFileName(String paramString)
  {
    return getMD5Hex(paramString);
  }

  public static Context getContext()
  {
    if (i == null)
    {
      warn("warn", "getContext with null");
      debug(new IllegalStateException());
    }
    return i;
  }

  public static File getExistedCacheByUrl(File paramFile, String paramString)
  {
    File localFile = getCacheFile(paramFile, paramString);
    if ((localFile == null) || (!localFile.exists()))
      localFile = null;
    return localFile;
  }

  public static File getExistedCacheByUrlSetAccess(File paramFile, String paramString)
  {
    File localFile = getExistedCacheByUrl(paramFile, paramString);
    if (localFile != null)
      lastAccess(localFile);
    return localFile;
  }

  private static ScheduledExecutorService getFileStoreExecutor()
  {
    if (f == null)
      f = Executors.newSingleThreadScheduledExecutor();
    return f;
  }

  public static Handler getHandler()
  {
    if (e == null)
      e = new Handler(Looper.getMainLooper());
    return e;
  }

  private static byte[] getMD5(byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(paramArrayOfByte);
      byte[] arrayOfByte = localMessageDigest.digest();
      return arrayOfByte;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      report(localNoSuchAlgorithmException);
    }
    return null;
  }

  private static String getMD5Hex(String paramString)
  {
    byte[] arrayOfByte = getMD5(paramString.getBytes());
    if (arrayOfByte == null)
      return Integer.toHexString(paramString.hashCode());
    return new BigInteger(arrayOfByte).abs().toString(36);
  }

  public static File getTempDir()
  {
    File localFile = new File(Environment.getExternalStorageDirectory(), "aquery/temp");
    localFile.mkdirs();
    if ((!localFile.exists()) || (!localFile.canWrite()))
      localFile = null;
    return localFile;
  }

  public static Object invokeHandler(Object paramObject, String paramString, boolean paramBoolean1, boolean paramBoolean2, Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2, Object[] paramArrayOfObject)
  {
    try
    {
      Object localObject = invokeMethod(paramObject, paramString, paramBoolean1, paramArrayOfClass1, paramArrayOfClass2, paramArrayOfObject);
      return localObject;
    }
    catch (Exception localException)
    {
      if (!paramBoolean2)
        break label30;
    }
    report(localException);
    while (true)
    {
      return null;
      label30: debug(localException);
    }
  }

  public static Object invokeHandler(Object paramObject, String paramString, boolean paramBoolean1, boolean paramBoolean2, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    return invokeHandler(paramObject, paramString, paramBoolean1, paramBoolean2, paramArrayOfClass, null, paramArrayOfObject);
  }

  private static Object invokeMethod(Object paramObject, String paramString, boolean paramBoolean, Class<?>[] paramArrayOfClass1, Class<?>[] paramArrayOfClass2, Object[] paramArrayOfObject)
  {
    if ((paramObject == null) || (paramString == null));
    do
    {
      return null;
      if (paramArrayOfClass1 == null);
      try
      {
        paramArrayOfClass1 = new Class[0];
        Object localObject2 = paramObject.getClass().getMethod(paramString, paramArrayOfClass1).invoke(paramObject, paramArrayOfObject);
        return localObject2;
      }
      catch (NoSuchMethodException localNoSuchMethodException1)
      {
      }
    }
    while (!paramBoolean);
    if (paramArrayOfClass2 == null);
    try
    {
      return paramObject.getClass().getMethod(paramString, new Class[0]).invoke(paramObject, new Object[0]);
      Object localObject1 = paramObject.getClass().getMethod(paramString, paramArrayOfClass2).invoke(paramObject, paramArrayOfObject);
      return localObject1;
    }
    catch (NoSuchMethodException localNoSuchMethodException2)
    {
    }
    return null;
  }

  public static boolean isDebug()
  {
    return a;
  }

  public static boolean isUIThread()
  {
    return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
  }

  private static void lastAccess(File paramFile)
  {
    paramFile.setLastModified(System.currentTimeMillis());
  }

  private static File makeCacheFile(File paramFile, String paramString)
  {
    return new File(paramFile, paramString);
  }

  public static float pixel2dip(Context paramContext, float paramFloat)
  {
    return paramFloat / (paramContext.getResources().getDisplayMetrics().densityDpi / 160.0F);
  }

  public static void post(Object paramObject, String paramString)
  {
    post(paramObject, paramString, new Class[0], new Object[0]);
  }

  public static void post(Object paramObject, String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    post(new AQUtility.1(paramObject, paramString, paramArrayOfClass, paramArrayOfObject));
  }

  public static void post(Runnable paramRunnable)
  {
    getHandler().post(paramRunnable);
  }

  public static void postAsync(Object paramObject, String paramString)
  {
    postAsync(paramObject, paramString, new Class[0], new Object[0]);
  }

  public static void postAsync(Object paramObject, String paramString, Class<?>[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    postAsync(new AQUtility.3(paramObject, paramString, paramArrayOfClass, paramArrayOfObject));
  }

  public static void postAsync(Runnable paramRunnable)
  {
    new AQUtility.2(paramRunnable).execute(new Void[0]);
  }

  public static void postDelayed(Runnable paramRunnable, long paramLong)
  {
    getHandler().postDelayed(paramRunnable, paramLong);
  }

  public static void removePost(Runnable paramRunnable)
  {
    getHandler().removeCallbacks(paramRunnable);
  }

  public static void report(Throwable paramThrowable)
  {
    if (paramThrowable == null);
    while (true)
    {
      return;
      try
      {
        warn("reporting", Log.getStackTraceString(paramThrowable));
        if (c != null)
        {
          c.uncaughtException(Thread.currentThread(), paramThrowable);
          return;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  private static void setAlpha(View paramView, float paramFloat)
  {
    if (paramFloat == 1.0F)
    {
      paramView.clearAnimation();
      return;
    }
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat, paramFloat);
    localAlphaAnimation.setDuration(0L);
    localAlphaAnimation.setFillAfter(true);
    paramView.startAnimation(localAlphaAnimation);
  }

  public static void setCacheDir(File paramFile)
  {
    g = paramFile;
    if (paramFile != null)
      g.mkdirs();
  }

  public static void setContext(Application paramApplication)
  {
    i = paramApplication.getApplicationContext();
  }

  public static void setDebug(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static void setExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    c = paramUncaughtExceptionHandler;
  }

  public static void store(File paramFile, byte[] paramArrayOfByte)
  {
    if (paramFile != null);
    try
    {
      write(paramFile, paramArrayOfByte);
      return;
    }
    catch (Exception localException)
    {
      report(localException);
    }
  }

  public static void storeAsync(File paramFile, byte[] paramArrayOfByte, long paramLong)
  {
    getFileStoreExecutor().schedule(new Common().method(1, new Object[] { paramFile, paramArrayOfByte }), paramLong, TimeUnit.MILLISECONDS);
  }

  private static boolean testCleanNeeded(File[] paramArrayOfFile, long paramLong)
  {
    int j = paramArrayOfFile.length;
    long l = 0L;
    for (int k = 0; ; k++)
    {
      if (k >= j)
        return false;
      l += paramArrayOfFile[k].length();
      if (l > paramLong)
        return true;
    }
  }

  public static void time(String paramString)
  {
    d.put(paramString, Long.valueOf(System.currentTimeMillis()));
  }

  public static long timeEnd(String paramString, long paramLong)
  {
    Long localLong = (Long)d.get(paramString);
    long l;
    if (localLong == null)
      l = 0L;
    do
    {
      return l;
      l = System.currentTimeMillis() - localLong.longValue();
    }
    while ((paramLong != 0L) && (l <= paramLong));
    debug(paramString, Long.valueOf(l));
    return l;
  }

  public static byte[] toBytes(InputStream paramInputStream)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    try
    {
      copy(paramInputStream, localByteArrayOutputStream);
      byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
      arrayOfByte1 = arrayOfByte2;
      close(paramInputStream);
      return arrayOfByte1;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        report(localIOException);
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public static void transparent(View paramView, boolean paramBoolean)
  {
    float f1 = 1.0F;
    if (paramBoolean)
      f1 = 0.5F;
    setAlpha(paramView, f1);
  }

  public static void warn(Object paramObject1, Object paramObject2)
  {
    Log.w("AQuery", paramObject1 + ":" + paramObject2);
  }

  public static void write(File paramFile, byte[] paramArrayOfByte)
  {
    try
    {
      boolean bool = paramFile.exists();
      if (!bool);
      try
      {
        paramFile.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
        localFileOutputStream.write(paramArrayOfByte);
        localFileOutputStream.close();
        return;
      }
      catch (Exception localException2)
      {
        while (true)
        {
          debug("file create fail", paramFile);
          report(localException2);
        }
      }
    }
    catch (Exception localException1)
    {
      report(localException1);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.AQUtility
 * JD-Core Version:    0.6.2
 */