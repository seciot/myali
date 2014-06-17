package com.alipay.mobile.android.avatar.process;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region.Op;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.widget.FrameLayout;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileOutputStream;
import java.lang.reflect.Field;

public class CropImageView extends FrameLayout
  implements View.OnClickListener, View.OnTouchListener
{
  static final int DRAG = 1;
  static final float MAX_SCALE = 10.0F;
  static final int NONE = 0;
  static final int ZOOM = 2;
  private Bitmap a;
  private int b;
  private int c;
  private int d;
  private int e;
  private RectF f;
  private DisplayMetrics g;
  private EditAvatarActivity h;
  private String i = "";
  private boolean j;
  private boolean k = true;
  private int l = 0;
  private int m = 4;
  Matrix mMatrix = new Matrix();
  PointF mid = new PointF();
  float minScaleR;
  int mode = 0;
  private int n = 0;
  float oldDist = 1.0F;
  PointF prev = new PointF();
  Matrix savedMatrix = new Matrix();
  public String tmp_avatarDirStr = "";

  public CropImageView(Context paramContext)
  {
    super(paramContext);
    a();
    b();
  }

  public CropImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
    this.d = (2 * this.g.widthPixels / 3);
    this.e = (2 * this.g.widthPixels / 3);
    setMinimumWidth(this.d);
    setMinimumHeight(this.e);
    b();
  }

  private static float a(MotionEvent paramMotionEvent)
  {
    float f1 = paramMotionEvent.getX(0) - paramMotionEvent.getX(1);
    float f2 = paramMotionEvent.getY(0) - paramMotionEvent.getY(1);
    return FloatMath.sqrt(f1 * f1 + f2 * f2);
  }

  private void a()
  {
    this.g = new DisplayMetrics();
    ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay().getMetrics(this.g);
  }

  private boolean a(float paramFloat1, float paramFloat2)
  {
    float[] arrayOfFloat = new float[9];
    this.mMatrix.getValues(arrayOfFloat);
    float f1 = Math.max(Math.abs(arrayOfFloat[0]), Math.abs(arrayOfFloat[1]));
    int i1 = this.n;
    RectF localRectF = null;
    switch (i1)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while ((localRectF != null) && (localRectF.contains(paramFloat1, paramFloat2)))
    {
      return true;
      localRectF = new RectF(arrayOfFloat[2], arrayOfFloat[5], arrayOfFloat[2] + f1 * this.b, arrayOfFloat[5] + f1 * this.c);
      continue;
      localRectF = new RectF(arrayOfFloat[2], arrayOfFloat[5] - f1 * this.b, arrayOfFloat[2] + f1 * this.c, arrayOfFloat[5]);
      continue;
      localRectF = new RectF(arrayOfFloat[2] - f1 * this.b, arrayOfFloat[5] - f1 * this.c, arrayOfFloat[2], arrayOfFloat[5]);
      continue;
      localRectF = new RectF(arrayOfFloat[2] - f1 * this.c, arrayOfFloat[5], arrayOfFloat[2], arrayOfFloat[5] + f1 * this.b);
    }
    return false;
  }

  private void b()
  {
    setOnTouchListener(this);
    setLongClickable(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    try
    {
      Class localClass = Class.forName("com.android.internal.R$dimen");
      Object localObject = localClass.newInstance();
      int i1 = Integer.parseInt(localClass.getField("status_bar_height").get(localObject).toString());
      this.l = getResources().getDimensionPixelSize(i1);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void c()
  {
    if (this.b > this.c);
    for (float f1 = 1.0F * this.g.widthPixels / this.b; ; f1 = 1.0F * this.g.heightPixels / this.c)
    {
      this.mMatrix.postScale(f1, f1);
      float f2 = this.f.centerX() - 0.5F * (f1 * this.b);
      float f3 = this.f.centerY() - 0.5F * (f1 * this.c);
      this.mMatrix.postTranslate(f2, f3);
      return;
    }
  }

  private RectF d()
  {
    RectF localRectF = new RectF(0.0F, 0.0F, this.b, this.c);
    this.mMatrix.mapRect(localRectF);
    return localRectF;
  }

  protected void center(boolean paramBoolean1, boolean paramBoolean2)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.set(this.mMatrix);
    RectF localRectF = new RectF(0.0F, 0.0F, this.a.getWidth(), this.a.getHeight());
    localMatrix.mapRect(localRectF);
    float f1 = localRectF.height();
    float f2 = localRectF.width();
    int i2;
    float f3;
    if (paramBoolean2)
    {
      i2 = this.g.heightPixels;
      if (f1 < i2)
        f3 = (i2 - f1 - this.l) / 2.0F - localRectF.top;
    }
    while (true)
    {
      float f4 = 0.0F;
      int i1;
      if (paramBoolean1)
      {
        i1 = this.g.widthPixels;
        if (f2 >= i1)
          break label252;
        f4 = (i1 - f2) / 2.0F - localRectF.left;
      }
      while (true)
      {
        this.mMatrix.postTranslate(f4, f3);
        if (this.n % 4 != 0)
          this.mMatrix.postRotate(-90 * (this.n % 4), this.b / 2, this.c / 2);
        return;
        if (localRectF.top > 0.0F)
        {
          f3 = -localRectF.top;
          break;
        }
        if (localRectF.bottom >= i2)
          break label311;
        f3 = this.c - localRectF.bottom;
        break;
        label252: if (localRectF.left > 0.0F)
        {
          f4 = -localRectF.left;
        }
        else
        {
          boolean bool = localRectF.right < i1;
          f4 = 0.0F;
          if (bool)
            f4 = (i1 - f2) / 2.0F - localRectF.left;
        }
      }
      label311: f3 = 0.0F;
    }
  }

  // ERROR //
  public void copyFile(File paramFile1, File paramFile2)
  {
    // Byte code:
    //   0: new 310	java/io/BufferedInputStream
    //   3: dup
    //   4: new 312	java/io/FileInputStream
    //   7: dup
    //   8: aload_1
    //   9: invokespecial 315	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   12: invokespecial 318	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   15: astore_3
    //   16: new 320	java/io/BufferedOutputStream
    //   19: dup
    //   20: new 322	java/io/FileOutputStream
    //   23: dup
    //   24: aload_2
    //   25: invokespecial 323	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   28: invokespecial 326	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   31: astore 4
    //   33: sipush 5120
    //   36: newarray byte
    //   38: astore 7
    //   40: aload_3
    //   41: aload 7
    //   43: invokevirtual 330	java/io/BufferedInputStream:read	([B)I
    //   46: istore 8
    //   48: iload 8
    //   50: iconst_m1
    //   51: if_icmpeq +44 -> 95
    //   54: aload 4
    //   56: aload 7
    //   58: iconst_0
    //   59: iload 8
    //   61: invokevirtual 334	java/io/BufferedOutputStream:write	([BII)V
    //   64: goto -24 -> 40
    //   67: astore 5
    //   69: aload_3
    //   70: astore 6
    //   72: aload 6
    //   74: ifnull +8 -> 82
    //   77: aload 6
    //   79: invokevirtual 337	java/io/BufferedInputStream:close	()V
    //   82: aload 4
    //   84: ifnull +8 -> 92
    //   87: aload 4
    //   89: invokevirtual 338	java/io/BufferedOutputStream:close	()V
    //   92: aload 5
    //   94: athrow
    //   95: aload 4
    //   97: invokevirtual 341	java/io/BufferedOutputStream:flush	()V
    //   100: aload_3
    //   101: invokevirtual 337	java/io/BufferedInputStream:close	()V
    //   104: aload 4
    //   106: invokevirtual 338	java/io/BufferedOutputStream:close	()V
    //   109: return
    //   110: astore 5
    //   112: aconst_null
    //   113: astore 4
    //   115: aconst_null
    //   116: astore 6
    //   118: goto -46 -> 72
    //   121: astore 5
    //   123: aload_3
    //   124: astore 6
    //   126: aconst_null
    //   127: astore 4
    //   129: goto -57 -> 72
    //
    // Exception table:
    //   from	to	target	type
    //   33	40	67	finally
    //   40	48	67	finally
    //   54	64	67	finally
    //   95	100	67	finally
    //   0	16	110	finally
    //   16	33	121	finally
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if ((this.a != null) && (!this.a.isRecycled()))
      paramCanvas.drawBitmap(this.a, this.mMatrix, null);
    Paint localPaint = new Paint();
    localPaint.setColor(-256);
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeWidth(4.0F);
    paramCanvas.clipRect(this.f, Region.Op.XOR);
    paramCanvas.drawColor(1711276032);
    paramCanvas.drawRect(this.f, localPaint);
    super.dispatchDraw(paramCanvas);
  }

  public Bitmap getBitmap()
  {
    return this.a;
  }

  public Bitmap getBitmap(FileDescriptor paramFileDescriptor)
  {
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    localOptions1.inJustDecodeBounds = true;
    BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions1);
    int i1 = Math.max(localOptions1.outWidth / this.g.widthPixels, localOptions1.outHeight / this.g.heightPixels);
    BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
    localOptions2.inDensity = this.g.densityDpi;
    localOptions2.inScaled = true;
    localOptions2.inPurgeable = true;
    localOptions2.inSampleSize = i1;
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeFileDescriptor(paramFileDescriptor, null, localOptions2);
      return localBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public Bitmap getBitmap(String paramString)
  {
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    localOptions1.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions1);
    int i1 = Math.max(localOptions1.outWidth / this.g.widthPixels, localOptions1.outHeight / this.g.heightPixels);
    BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
    localOptions2.inDensity = this.g.densityDpi;
    localOptions2.inScaled = true;
    localOptions2.inPurgeable = true;
    localOptions2.inSampleSize = i1;
    try
    {
      Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions2);
      return localBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public Bitmap getCropBitmap()
  {
    if (this.a == null)
      return null;
    Bitmap localBitmap = Bitmap.createBitmap(this.d, this.e, Bitmap.Config.RGB_565);
    Canvas localCanvas = new Canvas(localBitmap);
    if (this.f != null)
      localCanvas.translate(-this.f.left, -this.f.top);
    localCanvas.drawBitmap(this.a, this.mMatrix, null);
    return localBitmap;
  }

  public void onClick(View paramView)
  {
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if ((this.j) || (paramBoolean))
    {
      Rect localRect = new Rect(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
      this.f = new RectF(localRect.centerX() - 0.5F * this.d, localRect.centerY() - 0.5F * this.e, localRect.centerX() + 0.5F * this.d, localRect.centerY() + 0.5F * this.e);
      if (this.k)
      {
        c();
        this.k = false;
      }
      if (this.j)
      {
        this.j = false;
        this.mMatrix = new Matrix();
        c();
      }
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 3:
    case 4:
    default:
    case 0:
    case 5:
    case 1:
    case 6:
    case 2:
    }
    while (true)
    {
      float[] arrayOfFloat = new float[9];
      this.mMatrix.getValues(arrayOfFloat);
      float f3 = Math.max(Math.abs(arrayOfFloat[0]), Math.abs(arrayOfFloat[1]));
      if (this.mode == 2)
      {
        if (f3 < this.minScaleR)
        {
          this.mMatrix.setScale(this.minScaleR, this.minScaleR);
          center(true, true);
        }
        if (f3 > 10.0F)
          this.mMatrix.set(this.savedMatrix);
      }
      invalidate();
      return true;
      this.savedMatrix.set(this.mMatrix);
      this.prev.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      if (a(paramMotionEvent.getX(), paramMotionEvent.getY()))
      {
        this.mode = 1;
      }
      else
      {
        this.mode = 0;
        continue;
        this.oldDist = a(paramMotionEvent);
        boolean bool = a(paramMotionEvent.getX(), paramMotionEvent.getY());
        if ((this.oldDist > 10.0F) && (bool))
        {
          this.savedMatrix.set(this.mMatrix);
          PointF localPointF = this.mid;
          float f4 = paramMotionEvent.getX(0) + paramMotionEvent.getX(1);
          float f5 = paramMotionEvent.getY(0) + paramMotionEvent.getY(1);
          localPointF.set(f4 / 2.0F, f5 / 2.0F);
          this.mode = 2;
          continue;
          this.mode = 0;
          continue;
          if (this.mode == 1)
          {
            this.mMatrix.set(this.savedMatrix);
            this.mMatrix.postTranslate(paramMotionEvent.getX() - this.prev.x, paramMotionEvent.getY() - this.prev.y);
          }
          else if (this.mode == 2)
          {
            float f1 = a(paramMotionEvent);
            if (f1 > 10.0F)
            {
              this.mMatrix.set(this.savedMatrix);
              float f2 = f1 / this.oldDist;
              this.mMatrix.postScale(f2, f2, this.mid.x, this.mid.y);
            }
          }
        }
      }
    }
  }

  public void recycle()
  {
    if (this.a != null)
      this.a.recycle();
  }

  public void resizeBitmap(float paramFloat)
  {
    RectF localRectF = d();
    this.mMatrix.postScale(paramFloat, paramFloat, localRectF.centerX(), localRectF.centerY());
    postInvalidate();
  }

  public void rotateBitmap(float paramFloat)
  {
    RectF localRectF = d();
    int i1 = -1 + this.m;
    this.m = i1;
    this.n = (i1 % 4);
    this.n = Math.abs(this.n);
    this.mMatrix.postRotate(90.0F, localRectF.centerX(), localRectF.centerY());
    this.savedMatrix.postRotate(90.0F);
    postInvalidate();
  }

  void setActivity(EditAvatarActivity paramEditAvatarActivity)
  {
    this.h = paramEditAvatarActivity;
    this.tmp_avatarDirStr = (this.h.getFilesDir() + File.separator + "userdata" + File.separator + "useravatar" + File.separator + this.h.c() + File.separator);
    this.i = (this.h.getFilesDir() + File.separator + "userdata" + File.separator + "useravatar" + File.separator + this.h.c() + File.separator + "__tmp_avatar.jpg");
  }

  public void setBitmap(Bitmap paramBitmap)
  {
    if (paramBitmap == null)
      return;
    this.j = true;
    this.a = paramBitmap;
    this.b = paramBitmap.getWidth();
    this.c = paramBitmap.getHeight();
    requestLayout();
  }

  public void setBitmap(String paramString)
  {
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    localOptions1.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions1);
    int i1 = Math.max(localOptions1.outWidth / this.g.widthPixels, localOptions1.outHeight / this.g.heightPixels);
    BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
    localOptions2.inDensity = this.g.densityDpi;
    localOptions2.inScaled = true;
    localOptions2.inPurgeable = true;
    localOptions2.inSampleSize = i1;
    try
    {
      Bitmap localBitmap2 = BitmapFactory.decodeFile(paramString, localOptions2);
      localBitmap1 = localBitmap2;
      setBitmap(localBitmap1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        Bitmap localBitmap1 = null;
      }
    }
  }

  public String writeBitmap(Bitmap paramBitmap)
  {
    File localFile1 = new File(this.tmp_avatarDirStr);
    if (!localFile1.exists())
      localFile1.mkdirs();
    File localFile2 = new File(this.i);
    BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(localFile2));
    paramBitmap.compress(Bitmap.CompressFormat.JPEG, 50, localBufferedOutputStream);
    localBufferedOutputStream.flush();
    localBufferedOutputStream.close();
    return localFile2.getPath();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.avatar.process.CropImageView
 * JD-Core Version:    0.6.2
 */