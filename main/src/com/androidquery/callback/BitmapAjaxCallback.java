package com.androidquery.callback;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.media.ExifInterface;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import com.androidquery.auth.AccountHandle;
import com.androidquery.util.AQUtility;
import com.androidquery.util.BitmapCache;
import com.androidquery.util.Common;
import com.androidquery.util.RatioDrawable;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import org.apache.http.HttpHost;

public class BitmapAjaxCallback extends AbstractAjaxCallback<Bitmap, BitmapAjaxCallback>
{
  private static int a = 20;
  private static int b = 20;
  private static int c = 2500;
  private static int d = 160000;
  private static int e = 1000000;
  private static boolean f = false;
  private static Map<String, Bitmap> g;
  private static Map<String, Bitmap> h;
  private static Map<String, Bitmap> i;
  private static HashMap<String, WeakHashMap<ImageView, BitmapAjaxCallback>> j = new HashMap();
  private static Bitmap x = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
  private static Bitmap y = Bitmap.createBitmap(1, 1, Bitmap.Config.ALPHA_8);
  private WeakReference<ImageView> k;
  private int l;
  private int m;
  private File n;
  private Bitmap o;
  private int p;
  private Bitmap q;
  private float r;
  private int s;
  private boolean t = true;
  private float u = 3.4028235E+38F;
  private boolean v;
  private boolean w;

  public BitmapAjaxCallback()
  {
    ((BitmapAjaxCallback)((BitmapAjaxCallback)((BitmapAjaxCallback)type(Bitmap.class)).memCache(true)).fileCache(true)).url("");
  }

  private void addQueue(String paramString, ImageView paramImageView)
  {
    WeakHashMap localWeakHashMap1 = (WeakHashMap)j.get(paramString);
    if (localWeakHashMap1 == null)
    {
      if (j.containsKey(paramString))
      {
        WeakHashMap localWeakHashMap2 = new WeakHashMap();
        localWeakHashMap2.put(paramImageView, this);
        j.put(paramString, localWeakHashMap2);
        return;
      }
      j.put(paramString, null);
      return;
    }
    localWeakHashMap1.put(paramImageView, this);
  }

  public static void async(Activity paramActivity, Context paramContext, ImageView paramImageView, String paramString1, Object paramObject, AccountHandle paramAccountHandle, ImageOptions paramImageOptions, HttpHost paramHttpHost, String paramString2)
  {
    async(paramActivity, paramContext, paramImageView, paramString1, paramImageOptions.memCache, paramImageOptions.fileCache, paramImageOptions.targetWidth, paramImageOptions.fallback, paramImageOptions.preset, paramImageOptions.animation, paramImageOptions.ratio, paramImageOptions.anchor, paramObject, paramAccountHandle, paramImageOptions.policy, paramImageOptions.round, paramHttpHost, paramString2);
  }

  public static void async(Activity paramActivity, Context paramContext, ImageView paramImageView, String paramString1, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, int paramInt2, Bitmap paramBitmap, int paramInt3, float paramFloat1, float paramFloat2, Object paramObject, AccountHandle paramAccountHandle, int paramInt4, int paramInt5, HttpHost paramHttpHost, String paramString2)
  {
    Bitmap localBitmap = null;
    if (paramBoolean1)
      localBitmap = memGet(paramString1, paramInt1, paramInt5);
    if (localBitmap != null)
    {
      paramImageView.setTag(1090453505, paramString1);
      Common.showProgress(paramObject, paramString1, false);
      setBmAnimate(paramImageView, localBitmap, paramBitmap, paramInt2, paramInt3, paramFloat1, paramFloat2, 4);
      return;
    }
    BitmapAjaxCallback localBitmapAjaxCallback = new BitmapAjaxCallback();
    ((BitmapAjaxCallback)((BitmapAjaxCallback)((BitmapAjaxCallback)((BitmapAjaxCallback)((BitmapAjaxCallback)((BitmapAjaxCallback)localBitmapAjaxCallback.url(paramString1)).imageView(paramImageView).memCache(paramBoolean1)).fileCache(paramBoolean2)).targetWidth(paramInt1).fallback(paramInt2).preset(paramBitmap).animation(paramInt3).ratio(paramFloat1).anchor(paramFloat2).progress(paramObject)).auth(paramAccountHandle)).policy(paramInt4)).round(paramInt5).networkUrl(paramString2);
    if (paramHttpHost != null)
      localBitmapAjaxCallback.proxy(paramHttpHost.getHostName(), paramHttpHost.getPort());
    if (paramActivity != null)
    {
      localBitmapAjaxCallback.async(paramActivity);
      return;
    }
    localBitmapAjaxCallback.async(paramContext);
  }

  private Bitmap bmGet(String paramString, byte[] paramArrayOfByte)
  {
    return getResizedImage(paramString, paramArrayOfByte, this.l, this.t, this.s, this.w);
  }

  private void checkCb(BitmapAjaxCallback paramBitmapAjaxCallback, String paramString, ImageView paramImageView, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    if ((paramImageView == null) || (paramBitmapAjaxCallback == null))
      return;
    if (paramString.equals(paramImageView.getTag(1090453505)))
    {
      if (!(paramImageView instanceof ImageView))
        break label45;
      paramBitmapAjaxCallback.callback(paramString, paramImageView, paramBitmap, paramAjaxStatus);
    }
    while (true)
    {
      paramBitmapAjaxCallback.showProgress(false);
      return;
      label45: paramBitmapAjaxCallback.setBitmap(paramString, paramImageView, paramBitmap, false);
    }
  }

  public static void clearCache()
  {
    h = null;
    g = null;
    i = null;
  }

  protected static void clearTasks()
  {
    j.clear();
  }

  private static Bitmap decode(String paramString, byte[] paramArrayOfByte, BitmapFactory.Options paramOptions, boolean paramBoolean)
  {
    Bitmap localBitmap;
    if (paramString != null)
      localBitmap = decodeFile(paramString, paramOptions, paramBoolean);
    while (true)
    {
      if ((localBitmap == null) && (paramOptions != null) && (!paramOptions.inJustDecodeBounds))
        AQUtility.debug("decode image failed", paramString);
      return localBitmap;
      localBitmap = null;
      if (paramArrayOfByte != null)
        localBitmap = BitmapFactory.decodeByteArray(paramArrayOfByte, 0, paramArrayOfByte.length, paramOptions);
    }
  }

  // ERROR //
  private static Bitmap decodeFile(String paramString, BitmapFactory.Options paramOptions, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +11 -> 12
    //   4: new 284	android/graphics/BitmapFactory$Options
    //   7: dup
    //   8: invokespecial 304	android/graphics/BitmapFactory$Options:<init>	()V
    //   11: astore_1
    //   12: aload_1
    //   13: iconst_1
    //   14: putfield 307	android/graphics/BitmapFactory$Options:inInputShareable	Z
    //   17: aload_1
    //   18: iconst_1
    //   19: putfield 310	android/graphics/BitmapFactory$Options:inPurgeable	Z
    //   22: new 312	java/io/FileInputStream
    //   25: dup
    //   26: aload_0
    //   27: invokespecial 315	java/io/FileInputStream:<init>	(Ljava/lang/String;)V
    //   30: astore_3
    //   31: aload_3
    //   32: invokevirtual 319	java/io/FileInputStream:getFD	()Ljava/io/FileDescriptor;
    //   35: aconst_null
    //   36: aload_1
    //   37: invokestatic 323	android/graphics/BitmapFactory:decodeFileDescriptor	(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   40: astore 8
    //   42: aload 8
    //   44: astore 6
    //   46: aload 6
    //   48: ifnull +19 -> 67
    //   51: iload_2
    //   52: ifeq +15 -> 67
    //   55: aload_0
    //   56: aload 6
    //   58: invokestatic 327	com/androidquery/callback/BitmapAjaxCallback:rotate	(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   61: astore 9
    //   63: aload 9
    //   65: astore 6
    //   67: aload_3
    //   68: invokestatic 331	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   71: aload 6
    //   73: areturn
    //   74: astore 10
    //   76: aconst_null
    //   77: astore_3
    //   78: aconst_null
    //   79: astore 6
    //   81: aload 10
    //   83: astore 5
    //   85: aload 5
    //   87: invokestatic 335	com/androidquery/util/AQUtility:report	(Ljava/lang/Throwable;)V
    //   90: aload_3
    //   91: invokestatic 331	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   94: aload 6
    //   96: areturn
    //   97: astore 7
    //   99: aconst_null
    //   100: astore_3
    //   101: aload_3
    //   102: invokestatic 331	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   105: aload 7
    //   107: athrow
    //   108: astore 7
    //   110: goto -9 -> 101
    //   113: astore 4
    //   115: aload 4
    //   117: astore 5
    //   119: aconst_null
    //   120: astore 6
    //   122: goto -37 -> 85
    //   125: astore 5
    //   127: goto -42 -> 85
    //
    // Exception table:
    //   from	to	target	type
    //   22	31	74	java/io/IOException
    //   22	31	97	finally
    //   31	42	108	finally
    //   55	63	108	finally
    //   85	90	108	finally
    //   31	42	113	java/io/IOException
    //   55	63	125	java/io/IOException
  }

  private static boolean fadeIn(int paramInt1, int paramInt2)
  {
    int i1 = 1;
    switch (paramInt1)
    {
    default:
    case -1:
    case -3:
    case -2:
    }
    do
    {
      i1 = 0;
      do
        return i1;
      while (paramInt2 == 3);
    }
    while (paramInt2 != i1);
    return i1;
  }

  private static Bitmap filter(View paramView, Bitmap paramBitmap, int paramInt)
  {
    if ((paramBitmap != null) && (paramBitmap.getWidth() == 1) && (paramBitmap.getHeight() == 1) && (paramBitmap != x))
      paramBitmap = null;
    if (paramBitmap != null)
      paramView.setVisibility(0);
    do
    {
      return paramBitmap;
      if (paramInt == -2)
      {
        paramView.setVisibility(8);
        return paramBitmap;
      }
    }
    while (paramInt != -1);
    paramView.setVisibility(4);
    return paramBitmap;
  }

  private static Map<String, Bitmap> getBCache()
  {
    if (h == null)
      h = Collections.synchronizedMap(new BitmapCache(b, d, e));
    return h;
  }

  public static Bitmap getEmptyBitmap()
  {
    return x;
  }

  private Bitmap getFallback()
  {
    View localView = (View)this.k.get();
    if (localView != null)
    {
      String str = Integer.toString(this.m);
      Bitmap localBitmap1 = memGet(str);
      if (localBitmap1 == null)
      {
        Bitmap localBitmap2 = BitmapFactory.decodeResource(localView.getResources(), this.m);
        if (localBitmap2 != null)
          memPut(str, localBitmap2);
        return localBitmap2;
      }
      return localBitmap1;
    }
    return null;
  }

  private static Map<String, Bitmap> getICache()
  {
    if (i == null)
      i = Collections.synchronizedMap(new BitmapCache(100, d, 250000));
    return i;
  }

  private static String getKey(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt1 > 0);
    for (String str = paramString + "#" + paramInt1; ; str = paramString)
    {
      if (paramInt2 > 0)
        str = str + "#" + paramInt2;
      return str;
    }
  }

  public static Bitmap getMemoryCached(Context paramContext, int paramInt)
  {
    String str = Integer.toString(paramInt);
    Bitmap localBitmap = memGet(str, 0, 0);
    if (localBitmap == null)
    {
      localBitmap = BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
      if (localBitmap != null)
        memPut(str, 0, 0, localBitmap, false);
    }
    return localBitmap;
  }

  public static Bitmap getMemoryCached(String paramString, int paramInt)
  {
    return memGet(paramString, paramInt, 0);
  }

  public static Bitmap getResizedImage(String paramString, byte[] paramArrayOfByte, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    return getResizedImage(paramString, paramArrayOfByte, paramInt1, paramBoolean, paramInt2, false);
  }

  public static Bitmap getResizedImage(String paramString, byte[] paramArrayOfByte, int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    if ((paramString == null) && (paramArrayOfByte == null))
      return null;
    BitmapFactory.Options localOptions2;
    if (paramInt1 > 0)
    {
      BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
      localOptions1.inJustDecodeBounds = true;
      decode(paramString, paramArrayOfByte, localOptions1, paramBoolean2);
      int i1 = localOptions1.outWidth;
      if (!paramBoolean1)
        i1 = Math.max(i1, localOptions1.outHeight);
      int i2 = sampleSize(i1, paramInt1);
      localOptions2 = new BitmapFactory.Options();
      localOptions2.inSampleSize = i2;
    }
    while (true)
    {
      try
      {
        Bitmap localBitmap2 = decode(paramString, paramArrayOfByte, localOptions2, paramBoolean2);
        localBitmap1 = localBitmap2;
        if (paramInt2 > 0)
          localBitmap1 = getRoundedCornerBitmap(localBitmap1, paramInt2);
        return localBitmap1;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        clearCache();
        AQUtility.report(localOutOfMemoryError);
        Bitmap localBitmap1 = null;
        continue;
      }
      localOptions2 = null;
    }
  }

  private static Matrix getRotateMatrix(int paramInt)
  {
    Matrix localMatrix = new Matrix();
    switch (paramInt)
    {
    default:
      return localMatrix;
    case 2:
      localMatrix.setScale(-1.0F, 1.0F);
      return localMatrix;
    case 3:
      localMatrix.setRotate(180.0F);
      return localMatrix;
    case 4:
      localMatrix.setRotate(180.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      return localMatrix;
    case 5:
      localMatrix.setRotate(90.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      return localMatrix;
    case 6:
      localMatrix.setRotate(90.0F);
      return localMatrix;
    case 7:
      localMatrix.setRotate(-90.0F);
      localMatrix.postScale(-1.0F, 1.0F);
      return localMatrix;
    case 8:
    }
    localMatrix.setRotate(-90.0F);
    return localMatrix;
  }

  private static Bitmap getRoundedCornerBitmap(Bitmap paramBitmap, int paramInt)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    float f1 = paramInt;
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, f1, f1, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    return localBitmap;
  }

  private static Map<String, Bitmap> getSCache()
  {
    if (g == null)
      g = Collections.synchronizedMap(new BitmapCache(a, c, 250000));
    return g;
  }

  public static boolean isMemoryCached(String paramString)
  {
    return (getBCache().containsKey(paramString)) || (getSCache().containsKey(paramString)) || (getICache().containsKey(paramString));
  }

  private static Drawable makeDrawable(ImageView paramImageView, Bitmap paramBitmap, float paramFloat1, float paramFloat2)
  {
    if (paramFloat1 > 0.0F)
      return new RatioDrawable(paramImageView.getResources(), paramBitmap, paramImageView, paramFloat1, paramFloat2);
    return new BitmapDrawable(paramImageView.getResources(), paramBitmap);
  }

  private static Bitmap memGet(String paramString, int paramInt1, int paramInt2)
  {
    String str = getKey(paramString, paramInt1, paramInt2);
    Bitmap localBitmap = (Bitmap)getBCache().get(str);
    if (localBitmap == null)
      localBitmap = (Bitmap)getSCache().get(str);
    if (localBitmap == null)
    {
      localBitmap = (Bitmap)getICache().get(str);
      if ((localBitmap != null) && (getLastStatus() == 200))
      {
        i = null;
        localBitmap = null;
      }
    }
    return localBitmap;
  }

  private static void memPut(String paramString, int paramInt1, int paramInt2, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBitmap == null)
      return;
    int i1 = paramBitmap.getWidth() * paramBitmap.getHeight();
    Map localMap;
    if (paramBoolean)
      localMap = getICache();
    while (true)
    {
      if ((paramInt1 <= 0) && (paramInt2 <= 0))
        break label95;
      localMap.put(getKey(paramString, paramInt1, paramInt2), paramBitmap);
      if (localMap.containsKey(paramString))
        break;
      localMap.put(paramString, null);
      return;
      if (i1 <= c)
        localMap = getSCache();
      else
        localMap = getBCache();
    }
    label95: localMap.put(paramString, paramBitmap);
  }

  private void presetBitmap(String paramString, ImageView paramImageView)
  {
    if ((!paramString.equals(paramImageView.getTag(1090453505))) || (this.q != null))
    {
      paramImageView.setTag(1090453505, paramString);
      if ((this.q != null) && (!cacheAvailable(paramImageView.getContext())))
        setBitmap(paramString, paramImageView, this.q, true);
    }
    else
    {
      return;
    }
    setBitmap(paramString, paramImageView, null, true);
  }

  private static Bitmap rotate(String paramString, Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      paramBitmap = null;
    while (true)
    {
      return paramBitmap;
      try
      {
        int i4 = new ExifInterface(paramString).getAttributeInt("Orientation", 1);
        i1 = i4;
        if (i1 <= 0)
          continue;
        Matrix localMatrix = getRotateMatrix(i1);
        int i2 = paramBitmap.getWidth();
        int i3 = paramBitmap.getHeight();
        Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i2, i3, localMatrix, true);
        AQUtility.debug("before", paramBitmap.getWidth() + ":" + paramBitmap.getHeight());
        AQUtility.debug("after", localBitmap.getWidth() + ":" + localBitmap.getHeight());
        if (paramBitmap != localBitmap)
          paramBitmap.recycle();
        return localBitmap;
      }
      catch (Exception localException)
      {
        while (true)
        {
          AQUtility.debug(localException);
          int i1 = 1;
        }
      }
    }
  }

  private static int sampleSize(int paramInt1, int paramInt2)
  {
    int i1 = 1;
    for (int i2 = 0; ; i2++)
    {
      if (i2 >= 10);
      while (paramInt1 < paramInt2 * 2)
        return i1;
      paramInt1 /= 2;
      i1 *= 2;
    }
  }

  private void setBitmap(String paramString, ImageView paramImageView, Bitmap paramBitmap, boolean paramBoolean)
  {
    if (paramBitmap == null)
      paramImageView.setImageDrawable(null);
    do
    {
      return;
      if (paramBoolean)
      {
        paramImageView.setImageDrawable(makeDrawable(paramImageView, paramBitmap, this.r, this.u));
        return;
      }
    }
    while (this.status == null);
    setBmAnimate(paramImageView, paramBitmap, this.q, this.m, this.p, this.r, this.u, this.status.getSource());
  }

  private static void setBmAnimate(ImageView paramImageView, Bitmap paramBitmap1, Bitmap paramBitmap2, int paramInt1, int paramInt2, float paramFloat1, float paramFloat2, int paramInt3)
  {
    Bitmap localBitmap = filter(paramImageView, paramBitmap1, paramInt1);
    if (localBitmap == null)
    {
      paramImageView.setImageBitmap(null);
      return;
    }
    Object localObject1 = makeDrawable(paramImageView, localBitmap, paramFloat1, paramFloat2);
    Object localObject2;
    if (fadeIn(paramInt2, paramInt3))
      if (paramBitmap2 == null)
      {
        localObject2 = new AlphaAnimation(0.0F, 1.0F);
        ((Animation)localObject2).setInterpolator(new DecelerateInterpolator());
        ((Animation)localObject2).setDuration(300L);
      }
    while (true)
    {
      paramImageView.setImageDrawable((Drawable)localObject1);
      if (localObject2 != null)
      {
        ((Animation)localObject2).setStartTime(AnimationUtils.currentAnimationTimeMillis());
        paramImageView.startAnimation((Animation)localObject2);
        return;
        TransitionDrawable localTransitionDrawable = new TransitionDrawable(new Drawable[] { makeDrawable(paramImageView, paramBitmap2, paramFloat1, paramFloat2), localObject1 });
        localTransitionDrawable.setCrossFadeEnabled(true);
        localTransitionDrawable.startTransition(300);
        localObject1 = localTransitionDrawable;
        localObject2 = null;
        continue;
        if (paramInt2 > 0)
          localObject2 = AnimationUtils.loadAnimation(paramImageView.getContext(), paramInt2);
      }
      else
      {
        paramImageView.setAnimation(null);
        return;
        localObject2 = null;
      }
    }
  }

  public static void setCacheLimit(int paramInt)
  {
    b = paramInt;
    clearCache();
  }

  public static void setDelayWrite(boolean paramBoolean)
  {
    f = paramBoolean;
  }

  public static void setIconCacheLimit(int paramInt)
  {
    a = paramInt;
    clearCache();
  }

  public static void setMaxPixelLimit(int paramInt)
  {
    e = paramInt;
    clearCache();
  }

  public static void setPixelLimit(int paramInt)
  {
    d = paramInt;
    clearCache();
  }

  public static void setSmallPixel(int paramInt)
  {
    c = paramInt;
    clearCache();
  }

  protected File accessFile(File paramFile, String paramString)
  {
    if ((this.n != null) && (this.n.exists()))
      return this.n;
    return super.accessFile(paramFile, paramString);
  }

  public BitmapAjaxCallback anchor(float paramFloat)
  {
    this.u = paramFloat;
    return this;
  }

  public BitmapAjaxCallback animation(int paramInt)
  {
    this.p = paramInt;
    return this;
  }

  public void async(Context paramContext)
  {
    String str = getUrl();
    ImageView localImageView = (ImageView)this.k.get();
    if (str == null)
    {
      showProgress(false);
      setBitmap(str, localImageView, null, false);
      return;
    }
    Bitmap localBitmap = memGet(str);
    if (localBitmap != null)
    {
      localImageView.setTag(1090453505, str);
      this.status = new AjaxStatus().source(4).done();
      callback(str, localBitmap, this.status);
      return;
    }
    presetBitmap(str, localImageView);
    if (!j.containsKey(str))
    {
      addQueue(str, localImageView);
      super.async(localImageView.getContext());
      return;
    }
    showProgress(true);
    addQueue(str, localImageView);
  }

  public BitmapAjaxCallback bitmap(Bitmap paramBitmap)
  {
    this.o = paramBitmap;
    return this;
  }

  public final void callback(String paramString, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    ImageView localImageView1 = (ImageView)this.k.get();
    WeakHashMap localWeakHashMap = (WeakHashMap)j.remove(paramString);
    if ((localWeakHashMap == null) || (!localWeakHashMap.containsKey(localImageView1)))
      checkCb(this, paramString, localImageView1, paramBitmap, paramAjaxStatus);
    Iterator localIterator;
    if (localWeakHashMap != null)
      localIterator = localWeakHashMap.keySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
        return;
      ImageView localImageView2 = (ImageView)localIterator.next();
      BitmapAjaxCallback localBitmapAjaxCallback = (BitmapAjaxCallback)localWeakHashMap.get(localImageView2);
      localBitmapAjaxCallback.status = paramAjaxStatus;
      checkCb(localBitmapAjaxCallback, paramString, localImageView2, paramBitmap, paramAjaxStatus);
    }
  }

  protected void callback(String paramString, ImageView paramImageView, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    setBitmap(paramString, paramImageView, paramBitmap, false);
  }

  public BitmapAjaxCallback fallback(int paramInt)
  {
    this.m = paramInt;
    return this;
  }

  public BitmapAjaxCallback file(File paramFile)
  {
    this.n = paramFile;
    return this;
  }

  protected Bitmap fileGet(String paramString, File paramFile, AjaxStatus paramAjaxStatus)
  {
    return bmGet(paramFile.getAbsolutePath(), null);
  }

  public BitmapAjaxCallback imageView(ImageView paramImageView)
  {
    this.k = new WeakReference(paramImageView);
    return this;
  }

  protected boolean isStreamingContent()
  {
    return !f;
  }

  protected Bitmap memGet(String paramString)
  {
    if (this.o != null)
      return this.o;
    if (!this.memCache)
      return null;
    return memGet(paramString, this.l, this.s);
  }

  protected void memPut(String paramString, Bitmap paramBitmap)
  {
    memPut(paramString, this.l, this.s, paramBitmap, this.v);
  }

  public BitmapAjaxCallback preset(Bitmap paramBitmap)
  {
    this.q = paramBitmap;
    return this;
  }

  public BitmapAjaxCallback ratio(float paramFloat)
  {
    this.r = paramFloat;
    return this;
  }

  public BitmapAjaxCallback rotate(boolean paramBoolean)
  {
    this.w = paramBoolean;
    return this;
  }

  public BitmapAjaxCallback round(int paramInt)
  {
    this.s = paramInt;
    return this;
  }

  protected void skip(String paramString, Bitmap paramBitmap, AjaxStatus paramAjaxStatus)
  {
    j.remove(paramString);
  }

  public BitmapAjaxCallback targetWidth(int paramInt)
  {
    this.l = paramInt;
    return this;
  }

  public Bitmap transform(String paramString, byte[] paramArrayOfByte, AjaxStatus paramAjaxStatus)
  {
    File localFile = paramAjaxStatus.getFile();
    String str = null;
    if (localFile != null)
      str = localFile.getAbsolutePath();
    Bitmap localBitmap = bmGet(str, paramArrayOfByte);
    if (localBitmap == null)
    {
      if (this.m <= 0)
        break label66;
      localBitmap = getFallback();
    }
    while (true)
    {
      if (paramAjaxStatus.getCode() != 200)
        this.v = true;
      return localBitmap;
      label66: if ((this.m == -2) || (this.m == -1))
        localBitmap = y;
      else if (this.m == -3)
        localBitmap = this.q;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.callback.BitmapAjaxCallback
 * JD-Core Version:    0.6.2
 */