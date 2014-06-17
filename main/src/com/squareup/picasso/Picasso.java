package com.squareup.picasso;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class Picasso
{
  static Picasso b = null;
  private static final Object k = new Object();
  final Handler a = new b(this, Looper.getMainLooper());
  final Context c;
  final Loader d;
  final ExecutorService e;
  final Cache f;
  final Picasso.Listener g;
  final h h;
  final Map i;
  boolean j;

  Picasso(Context paramContext, Loader paramLoader, ExecutorService paramExecutorService, Cache paramCache, Picasso.Listener paramListener, h paramh)
  {
    this.c = paramContext;
    this.d = paramLoader;
    this.e = paramExecutorService;
    this.f = paramCache;
    this.g = paramListener;
    this.h = paramh;
    this.i = new WeakHashMap();
  }

  private Bitmap a(Uri paramUri, c paramc)
  {
    ContentResolver localContentResolver = this.c.getContentResolver();
    if ((paramc != null) && (paramc.inJustDecodeBounds))
    {
      BitmapFactory.decodeStream(localContentResolver.openInputStream(paramUri), null, paramc);
      l.a(paramc);
    }
    return BitmapFactory.decodeStream(localContentResolver.openInputStream(paramUri), null, paramc);
  }

  private static Bitmap a(c paramc, Bitmap paramBitmap, int paramInt)
  {
    int m = 0;
    int n = paramBitmap.getWidth();
    int i1 = paramBitmap.getHeight();
    Matrix localMatrix = new Matrix();
    int i5;
    int i6;
    float f1;
    float f6;
    float f7;
    int i12;
    int i14;
    int i13;
    label144: int i7;
    int i8;
    label169: int i3;
    int i9;
    int i2;
    if (paramc != null)
    {
      i5 = paramc.a;
      i6 = paramc.b;
      f1 = paramc.h;
      if (f1 != 0.0F)
      {
        if (paramc.k)
          localMatrix.setRotate(f1, paramc.i, paramc.j);
      }
      else
      {
        if (!paramc.d)
          break label335;
        f6 = i5 / n;
        f7 = i6 / i1;
        if (f6 <= f7)
          break label289;
        i12 = (int)Math.ceil(i1 * (f7 / f6));
        int i15 = (i1 - i12) / 2;
        int i16 = n;
        i14 = i15;
        i13 = i16;
        localMatrix.preScale(f6, f6);
        i7 = m;
        i8 = i14;
        n = i13;
        i1 = i12;
        float f2 = paramc.f;
        float f3 = paramc.g;
        if ((f2 != 0.0F) || (f3 != 0.0F))
          localMatrix.setScale(f2, f3);
        i3 = i7;
        i9 = i8;
        i2 = i1;
      }
    }
    for (int i4 = i9; ; i4 = 0)
    {
      while (true)
      {
        if (paramInt != 0)
          localMatrix.preRotate(paramInt);
        Object localObject1 = k;
        Bitmap localBitmap1 = paramBitmap;
        try
        {
          Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, i3, i4, n, i2, localMatrix, false);
          if (localBitmap2 != paramBitmap)
          {
            paramBitmap.recycle();
            paramBitmap = localBitmap2;
          }
          return paramBitmap;
          localMatrix.setRotate(f1);
          break;
          label289: int i10 = (int)Math.ceil(n * (f6 / f7));
          int i11 = (n - i10) / 2;
          i12 = i1;
          i13 = i10;
          f6 = f7;
          m = i11;
          i14 = 0;
          break label144;
          label335: if (paramc.e)
          {
            float f4 = i5 / n;
            float f5 = i6 / i1;
            if (f4 < f5);
            while (true)
            {
              localMatrix.preScale(f4, f4);
              i7 = 0;
              i8 = 0;
              break;
              f4 = f5;
            }
          }
          if ((i5 != 0) && (i6 != 0) && ((i5 != n) || (i6 != i1)))
            localMatrix.preScale(i5 / n, i6 / i1);
          i7 = 0;
          i8 = 0;
          break label169;
        }
        finally
        {
        }
      }
      i2 = i1;
      i3 = 0;
    }
  }

  private static Bitmap a(InputStream paramInputStream, c paramc)
  {
    if (paramInputStream == null)
      return null;
    if (paramc != null)
      paramc.inJustDecodeBounds = false;
    return BitmapFactory.decodeStream(paramInputStream, null, paramc);
  }

  public static Picasso a(Context paramContext)
  {
    if (b == null)
      b = new Picasso.Builder(paramContext).a();
    return b;
  }

  private RequestBuilder a(Uri paramUri)
  {
    return new RequestBuilder(this, paramUri);
  }

  private void a(Object paramObject, Uri paramUri)
  {
    e locale = (e)this.i.remove(paramObject);
    if (locale != null)
    {
      if (locale.l.isDone())
        break label42;
      locale.l.cancel(true);
    }
    label42: 
    while ((paramUri != null) && (paramUri.equals(locale.b)))
      return;
    locale.p = true;
  }

  private Bitmap e(e parame)
  {
    Bitmap localBitmap1;
    if (parame.g)
      localBitmap1 = null;
    while (localBitmap1 == null)
    {
      this.h.b.sendEmptyMessage(2);
      try
      {
        Bitmap localBitmap2 = f(parame);
        if ((localBitmap2 != null) && (!parame.g))
          this.f.a(parame.k, localBitmap2);
        return localBitmap2;
        localBitmap1 = this.f.a(parame.k);
        if (localBitmap1 != null)
          parame.n = g.a;
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        throw new IOException("Failed to decode request: " + parame, localOutOfMemoryError);
      }
    }
    this.h.a();
    return localBitmap1;
  }

  // ERROR //
  private Bitmap f(e parame)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_0
    //   3: istore_3
    //   4: aload_1
    //   5: getfield 274	com/squareup/picasso/e:e	Lcom/squareup/picasso/c;
    //   8: astore 4
    //   10: aload_1
    //   11: getfield 204	com/squareup/picasso/e:b	Landroid/net/Uri;
    //   14: astore 5
    //   16: aload_1
    //   17: getfield 276	com/squareup/picasso/e:c	I
    //   20: istore 6
    //   22: iload 6
    //   24: ifeq +72 -> 96
    //   27: aload_0
    //   28: getfield 51	com/squareup/picasso/Picasso:c	Landroid/content/Context;
    //   31: invokevirtual 280	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   34: astore 35
    //   36: aload 4
    //   38: ifnull +26 -> 64
    //   41: aload 4
    //   43: getfield 78	com/squareup/picasso/c:inJustDecodeBounds	Z
    //   46: ifeq +18 -> 64
    //   49: aload 35
    //   51: iload 6
    //   53: aload 4
    //   55: invokestatic 284	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   58: pop
    //   59: aload 4
    //   61: invokestatic 95	com/squareup/picasso/l:a	(Lcom/squareup/picasso/c;)V
    //   64: aload 35
    //   66: iload 6
    //   68: aload 4
    //   70: invokestatic 284	android/graphics/BitmapFactory:decodeResource	(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   73: astore 15
    //   75: aload_1
    //   76: getstatic 286	com/squareup/picasso/g:b	Lcom/squareup/picasso/g;
    //   79: putfield 249	com/squareup/picasso/e:n	Lcom/squareup/picasso/g;
    //   82: iconst_0
    //   83: istore 16
    //   85: aload 15
    //   87: ifnonnull +361 -> 448
    //   90: aconst_null
    //   91: astore 17
    //   93: aload 17
    //   95: areturn
    //   96: aload 5
    //   98: invokevirtual 289	android/net/Uri:getScheme	()Ljava/lang/String;
    //   101: astore 7
    //   103: ldc_w 291
    //   106: aload 7
    //   108: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   111: ifeq +102 -> 213
    //   114: aload_0
    //   115: getfield 51	com/squareup/picasso/Picasso:c	Landroid/content/Context;
    //   118: invokevirtual 73	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   121: astore 32
    //   123: getstatic 299	android/provider/ContactsContract$Contacts:CONTENT_URI	Landroid/net/Uri;
    //   126: invokevirtual 302	android/net/Uri:getHost	()Ljava/lang/String;
    //   129: aload 5
    //   131: invokevirtual 302	android/net/Uri:getHost	()Ljava/lang/String;
    //   134: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   137: ifeq +54 -> 191
    //   140: aload 5
    //   142: invokevirtual 306	android/net/Uri:getPathSegments	()Ljava/util/List;
    //   145: ldc_w 308
    //   148: invokeinterface 313 2 0
    //   153: ifne +38 -> 191
    //   156: aload 32
    //   158: aload 5
    //   160: invokestatic 316	com/squareup/picasso/l:b	(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    //   163: aload 4
    //   165: invokestatic 318	com/squareup/picasso/Picasso:a	(Ljava/io/InputStream;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    //   168: astore 34
    //   170: iconst_0
    //   171: istore 33
    //   173: aload_1
    //   174: getstatic 286	com/squareup/picasso/g:b	Lcom/squareup/picasso/g;
    //   177: putfield 249	com/squareup/picasso/e:n	Lcom/squareup/picasso/g;
    //   180: iload 33
    //   182: istore 16
    //   184: aload 34
    //   186: astore 15
    //   188: goto -103 -> 85
    //   191: aload 32
    //   193: aload 5
    //   195: invokestatic 321	com/squareup/picasso/l:a	(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    //   198: istore 33
    //   200: aload_0
    //   201: aload 5
    //   203: aload 4
    //   205: invokespecial 323	com/squareup/picasso/Picasso:a	(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    //   208: astore 34
    //   210: goto -37 -> 173
    //   213: ldc_w 325
    //   216: aload 7
    //   218: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   221: ifeq +37 -> 258
    //   224: aload 5
    //   226: invokevirtual 328	android/net/Uri:getPath	()Ljava/lang/String;
    //   229: invokestatic 331	com/squareup/picasso/l:a	(Ljava/lang/String;)I
    //   232: istore 31
    //   234: aload_0
    //   235: aload 5
    //   237: aload 4
    //   239: invokespecial 323	com/squareup/picasso/Picasso:a	(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    //   242: astore 15
    //   244: aload_1
    //   245: getstatic 286	com/squareup/picasso/g:b	Lcom/squareup/picasso/g;
    //   248: putfield 249	com/squareup/picasso/e:n	Lcom/squareup/picasso/g;
    //   251: iload 31
    //   253: istore 16
    //   255: goto -170 -> 85
    //   258: ldc_w 333
    //   261: aload 7
    //   263: invokevirtual 294	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   266: ifeq +26 -> 292
    //   269: aload_0
    //   270: aload 5
    //   272: aload 4
    //   274: invokespecial 323	com/squareup/picasso/Picasso:a	(Landroid/net/Uri;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    //   277: astore 15
    //   279: aload_1
    //   280: getstatic 286	com/squareup/picasso/g:b	Lcom/squareup/picasso/g;
    //   283: putfield 249	com/squareup/picasso/e:n	Lcom/squareup/picasso/g;
    //   286: iconst_0
    //   287: istore 16
    //   289: goto -204 -> 85
    //   292: aload_0
    //   293: getfield 53	com/squareup/picasso/Picasso:d	Lcom/squareup/picasso/Loader;
    //   296: astore 10
    //   298: aload_1
    //   299: getfield 336	com/squareup/picasso/e:o	I
    //   302: ifne +47 -> 349
    //   305: iconst_1
    //   306: istore 11
    //   308: aload 10
    //   310: aload 5
    //   312: iload 11
    //   314: invokeinterface 341 3 0
    //   319: astore 12
    //   321: aload 12
    //   323: ifnonnull +32 -> 355
    //   326: aload 12
    //   328: ifnull +19 -> 347
    //   331: aload 12
    //   333: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   336: ifnull +11 -> 347
    //   339: aload 12
    //   341: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   344: invokevirtual 351	java/io/InputStream:close	()V
    //   347: aconst_null
    //   348: areturn
    //   349: iconst_0
    //   350: istore 11
    //   352: goto -44 -> 308
    //   355: aload 12
    //   357: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   360: aload 4
    //   362: invokestatic 318	com/squareup/picasso/Picasso:a	(Ljava/io/InputStream;Lcom/squareup/picasso/c;)Landroid/graphics/Bitmap;
    //   365: astore 13
    //   367: aload 12
    //   369: ifnull +19 -> 388
    //   372: aload 12
    //   374: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   377: ifnull +11 -> 388
    //   380: aload 12
    //   382: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   385: invokevirtual 351	java/io/InputStream:close	()V
    //   388: aload 12
    //   390: getfield 353	com/squareup/picasso/Loader$Response:b	Z
    //   393: ifeq +47 -> 440
    //   396: getstatic 286	com/squareup/picasso/g:b	Lcom/squareup/picasso/g;
    //   399: astore 14
    //   401: aload_1
    //   402: aload 14
    //   404: putfield 249	com/squareup/picasso/e:n	Lcom/squareup/picasso/g;
    //   407: aload 13
    //   409: astore 15
    //   411: iconst_0
    //   412: istore 16
    //   414: goto -329 -> 85
    //   417: astore 8
    //   419: aload_2
    //   420: ifnull +17 -> 437
    //   423: aload_2
    //   424: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   427: ifnull +10 -> 437
    //   430: aload_2
    //   431: getfield 346	com/squareup/picasso/Loader$Response:a	Ljava/io/InputStream;
    //   434: invokevirtual 351	java/io/InputStream:close	()V
    //   437: aload 8
    //   439: athrow
    //   440: getstatic 355	com/squareup/picasso/g:c	Lcom/squareup/picasso/g;
    //   443: astore 14
    //   445: goto -44 -> 401
    //   448: aload_0
    //   449: getfield 61	com/squareup/picasso/Picasso:h	Lcom/squareup/picasso/h;
    //   452: aload 15
    //   454: invokevirtual 358	com/squareup/picasso/h:a	(Landroid/graphics/Bitmap;)V
    //   457: aload 4
    //   459: ifnull +66 -> 525
    //   462: aload 4
    //   464: getfield 360	com/squareup/picasso/c:c	Z
    //   467: ifeq +58 -> 525
    //   470: aload_1
    //   471: getfield 363	com/squareup/picasso/e:d	Ljava/lang/ref/WeakReference;
    //   474: invokevirtual 369	java/lang/ref/WeakReference:get	()Ljava/lang/Object;
    //   477: checkcast 371	android/widget/ImageView
    //   480: astore 26
    //   482: aload 26
    //   484: ifnull +41 -> 525
    //   487: aload 26
    //   489: invokevirtual 374	android/widget/ImageView:getMeasuredWidth	()I
    //   492: istore 27
    //   494: aload 26
    //   496: invokevirtual 377	android/widget/ImageView:getMeasuredHeight	()I
    //   499: istore 28
    //   501: iload 27
    //   503: ifeq +22 -> 525
    //   506: iload 28
    //   508: ifeq +17 -> 525
    //   511: aload 4
    //   513: iload 27
    //   515: putfield 111	com/squareup/picasso/c:a	I
    //   518: aload 4
    //   520: iload 28
    //   522: putfield 113	com/squareup/picasso/c:b	I
    //   525: aload 4
    //   527: ifnonnull +8 -> 535
    //   530: iload 16
    //   532: ifeq +319 -> 851
    //   535: aload 4
    //   537: aload 15
    //   539: iload 16
    //   541: invokestatic 379	com/squareup/picasso/Picasso:a	(Lcom/squareup/picasso/c;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    //   544: astore 17
    //   546: aload_1
    //   547: getfield 382	com/squareup/picasso/e:f	Ljava/util/List;
    //   550: astore 18
    //   552: aload 18
    //   554: ifnull -461 -> 93
    //   557: aload 18
    //   559: invokeinterface 385 1 0
    //   564: istore 19
    //   566: aload 17
    //   568: astore 20
    //   570: iload_3
    //   571: iload 19
    //   573: if_icmpge +243 -> 816
    //   576: aload 18
    //   578: iload_3
    //   579: invokeinterface 388 2 0
    //   584: checkcast 390	com/squareup/picasso/Transformation
    //   587: astore 21
    //   589: aload 21
    //   591: invokeinterface 393 1 0
    //   596: astore 22
    //   598: aload 22
    //   600: ifnonnull +102 -> 702
    //   603: new 253	java/lang/StringBuilder
    //   606: dup
    //   607: ldc_w 395
    //   610: invokespecial 258	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   613: aload 21
    //   615: invokeinterface 397 1 0
    //   620: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: ldc_w 402
    //   626: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   629: iload_3
    //   630: invokevirtual 405	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   633: ldc_w 407
    //   636: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   639: astore 23
    //   641: aload 18
    //   643: invokeinterface 411 1 0
    //   648: astore 24
    //   650: aload 24
    //   652: invokeinterface 416 1 0
    //   657: ifeq +32 -> 689
    //   660: aload 23
    //   662: aload 24
    //   664: invokeinterface 419 1 0
    //   669: checkcast 390	com/squareup/picasso/Transformation
    //   672: invokeinterface 397 1 0
    //   677: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   680: bipush 10
    //   682: invokevirtual 422	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   685: pop
    //   686: goto -36 -> 650
    //   689: new 424	java/lang/NullPointerException
    //   692: dup
    //   693: aload 23
    //   695: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   698: invokespecial 425	java/lang/NullPointerException:<init>	(Ljava/lang/String;)V
    //   701: athrow
    //   702: aload 22
    //   704: aload 20
    //   706: if_acmpne +48 -> 754
    //   709: aload 20
    //   711: invokevirtual 428	android/graphics/Bitmap:isRecycled	()Z
    //   714: ifeq +40 -> 754
    //   717: new 430	java/lang/IllegalStateException
    //   720: dup
    //   721: new 253	java/lang/StringBuilder
    //   724: dup
    //   725: ldc_w 395
    //   728: invokespecial 258	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   731: aload 21
    //   733: invokeinterface 397 1 0
    //   738: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   741: ldc_w 432
    //   744: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   747: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   750: invokespecial 433	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   753: athrow
    //   754: aload 22
    //   756: aload 20
    //   758: if_acmpeq +48 -> 806
    //   761: aload 20
    //   763: invokevirtual 428	android/graphics/Bitmap:isRecycled	()Z
    //   766: ifne +40 -> 806
    //   769: new 430	java/lang/IllegalStateException
    //   772: dup
    //   773: new 253	java/lang/StringBuilder
    //   776: dup
    //   777: ldc_w 395
    //   780: invokespecial 258	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   783: aload 21
    //   785: invokeinterface 397 1 0
    //   790: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   793: ldc_w 435
    //   796: invokevirtual 400	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   799: invokevirtual 266	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   802: invokespecial 433	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   805: athrow
    //   806: iinc 3 1
    //   809: aload 22
    //   811: astore 20
    //   813: goto -243 -> 570
    //   816: aload_0
    //   817: getfield 61	com/squareup/picasso/Picasso:h	Lcom/squareup/picasso/h;
    //   820: aload 20
    //   822: invokevirtual 437	com/squareup/picasso/h:b	(Landroid/graphics/Bitmap;)V
    //   825: aload 20
    //   827: areturn
    //   828: astore 9
    //   830: goto -393 -> 437
    //   833: astore 8
    //   835: aload 12
    //   837: astore_2
    //   838: goto -419 -> 419
    //   841: astore 29
    //   843: goto -455 -> 388
    //   846: astore 30
    //   848: goto -501 -> 347
    //   851: aload 15
    //   853: astore 17
    //   855: goto -309 -> 546
    //
    // Exception table:
    //   from	to	target	type
    //   292	305	417	finally
    //   308	321	417	finally
    //   430	437	828	java/io/IOException
    //   355	367	833	finally
    //   380	388	841	java/io/IOException
    //   339	347	846	java/io/IOException
  }

  final Bitmap a(Object paramObject, Uri paramUri, String paramString)
  {
    Bitmap localBitmap = this.f.a(paramString);
    a(paramObject, paramUri);
    if (localBitmap != null)
      this.h.a();
    return localBitmap;
  }

  public final RequestBuilder a(File paramFile)
  {
    if (paramFile == null)
      return new RequestBuilder(this, null);
    return a(Uri.fromFile(paramFile));
  }

  public final RequestBuilder a(String paramString)
  {
    if (paramString == null)
      return new RequestBuilder(this, null);
    if (paramString.trim().length() == 0)
      throw new IllegalArgumentException("Path must not be empty.");
    return a(Uri.parse(paramString));
  }

  final void a(e parame)
  {
    Object localObject = parame.a();
    if (localObject == null)
      return;
    a(localObject, parame.b);
    this.i.put(localObject, parame);
    parame.l = this.e.submit(parame);
  }

  final void b(e parame)
  {
    try
    {
      Bitmap localBitmap = e(parame);
      if (localBitmap == null)
      {
        this.a.sendMessage(this.a.obtainMessage(3, parame));
        return;
      }
      parame.m = localBitmap;
      this.a.sendMessage(this.a.obtainMessage(1, parame));
      return;
    }
    catch (IOException localIOException)
    {
      if ((this.g != null) && (parame.b != null))
      {
        Picasso.Listener localListener = this.g;
        localListener.a();
      }
      this.a.sendMessageDelayed(this.a.obtainMessage(2, parame), 500L);
    }
  }

  final void c(e parame)
  {
    if (parame.p)
      return;
    if (parame.o > 0)
    {
      parame.o = (-1 + parame.o);
      a(parame);
      return;
    }
    this.i.remove(parame.a());
    parame.c();
  }

  final void d(e parame)
  {
    this.i.remove(parame.a());
    parame.c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.Picasso
 * JD-Core Version:    0.6.2
 */