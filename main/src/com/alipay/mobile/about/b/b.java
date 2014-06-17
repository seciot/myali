package com.alipay.mobile.about.b;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import android.widget.ImageView;
import com.alipay.mobile.security.securitycommon.FileUtil;
import com.alipay.mobile.security.securitycommon.ImageUtils;
import com.alipay.mobile.security.securitycommon.LWThumbnailUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class b
{
  public static final String a = b.class.getSimpleName();
  private static int c = 0;
  private Context b;
  private List<c> d = new ArrayList();
  private LruCache<String, Bitmap> e;

  @TargetApi(12)
  public b(Context paramContext)
  {
    this.b = paramContext;
    this.e = new c(this, (int)(Runtime.getRuntime().maxMemory() / 1024L));
  }

  private static void a(b paramb)
  {
    if (paramb.cancel(true))
      if ((paramb.a) && (!paramb.b))
      {
        c = -1 + c;
        paramb.b = true;
      }
    while ((!paramb.a) || (paramb.b))
      return;
    c = -1 + c;
    paramb.b = true;
  }

  private void a(c paramc)
  {
    if (this.d.isEmpty());
    for (int i = -1; ; i = -1 + this.d.size())
      for (int j = i; j >= 0; j--)
      {
        c localc = (c)this.d.get(j);
        if ((localc.b != null) && (paramc.b != null))
        {
          ImageView localImageView1 = (ImageView)localc.b.get();
          ImageView localImageView2 = (ImageView)paramc.b.get();
          if ((localImageView1 != null) && (localImageView2 != null) && (localImageView1 == localImageView2))
            this.d.remove(localc);
        }
      }
    this.d.add(0, paramc);
  }

  private static b b(ImageView paramImageView)
  {
    if (paramImageView != null)
    {
      Drawable localDrawable = paramImageView.getDrawable();
      if ((localDrawable instanceof a))
        return ((a)localDrawable).a();
    }
    return null;
  }

  public final void a()
  {
    while ((c < 15) && (!this.d.isEmpty()))
      if (this.d.size() > 0)
      {
        c localc = (c)this.d.remove(0);
        b localb = b((ImageView)localc.b.get());
        if (localb != null)
        {
          String str = b.a(localb);
          if ((str == null) || (!str.equals(localc.a)))
          {
            if (localb.getStatus() == AsyncTask.Status.PENDING)
              try
              {
                String[] arrayOfString = new String[1];
                arrayOfString[0] = localc.a;
                localb.execute(arrayOfString);
                i = 0;
                if (i == 0)
                  continue;
                a(localc);
              }
              catch (Exception localException)
              {
                while (true)
                  i = 1;
              }
              catch (Throwable localThrowable)
              {
                while (true)
                  int i = 1;
              }
            else
              a(localb);
          }
          else
            a(localb);
        }
      }
  }

  public final void a(ImageView paramImageView, String paramString, Bitmap paramBitmap)
  {
    if ((paramImageView == null) || (TextUtils.isEmpty(paramString)));
    while (true)
    {
      return;
      Bitmap localBitmap = (Bitmap)this.e.get(paramString);
      if (localBitmap != null)
      {
        paramImageView.setImageBitmap(localBitmap);
        return;
      }
      b localb1 = b(paramImageView);
      if (localb1 != null)
      {
        String str = b.a(localb1);
        if ((str != null) && (str.equals(paramString)))
          break label133;
        a(localb1);
      }
      label133: for (int i = 1; i != 0; i = 0)
      {
        b localb2 = new b(paramImageView);
        paramImageView.setImageDrawable(new a(this.b.getResources(), paramBitmap, localb2));
        a(new c(paramString, paramImageView));
        a();
        return;
      }
    }
  }

  public final void b()
  {
    this.d.clear();
    this.e.evictAll();
  }

  private static final class a extends BitmapDrawable
  {
    private final WeakReference<b.b> a;

    public a(Resources paramResources, Bitmap paramBitmap, b.b paramb)
    {
      super(paramBitmap);
      this.a = new WeakReference(paramb);
    }

    public final b.b a()
    {
      return (b.b)this.a.get();
    }
  }

  private final class b extends AsyncTask<String, Integer, Bitmap>
  {
    boolean a = false;
    boolean b = false;
    private String d;
    private final WeakReference<ImageView> e;

    public b(ImageView arg2)
    {
      Object localObject;
      this.e = new WeakReference(localObject);
    }

    private Bitmap a(String[] paramArrayOfString)
    {
      this.d = paramArrayOfString[0];
      String str = this.d;
      Bitmap localBitmap1;
      if ((ImageView)this.e.get() == null)
        localBitmap1 = null;
      while (true)
      {
        return localBitmap1;
        try
        {
          if ((!isCancelled()) && (a() != null))
          {
            File localFile = FileUtil.b(b.a(b.this));
            if (localFile != null)
            {
              localBitmap1 = ImageUtils.a(localFile.getAbsolutePath() + "/album/" + d.a(str));
              if (localBitmap1 != null)
                continue;
            }
            localBitmap1 = LWThumbnailUtils.a(b.a(b.this), Uri.fromFile(new File(str)));
            if (localBitmap1 != null)
            {
              if (localFile == null)
                continue;
              ImageUtils.a(localFile.getAbsolutePath() + "/album", d.a(str), localBitmap1, 80);
              localBitmap1.recycle();
              Bitmap localBitmap2 = ImageUtils.a(localFile.getAbsolutePath() + "/album/" + d.a(str));
              return localBitmap2;
            }
          }
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          System.gc();
          return null;
        }
        catch (Throwable localThrowable)
        {
          break label218;
        }
        catch (Exception localException)
        {
          label218: break label218;
        }
      }
    }

    private ImageView a()
    {
      ImageView localImageView = (ImageView)this.e.get();
      if (this == b.a(localImageView))
        return localImageView;
      return null;
    }

    protected final void onPreExecute()
    {
      b.c();
      this.a = true;
    }
  }

  private final class c
  {
    String a;
    WeakReference<ImageView> b;

    c(String paramImageView, ImageView arg3)
    {
      this.a = paramImageView;
      Object localObject;
      this.b = new WeakReference(localObject);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.b.b
 * JD-Core Version:    0.6.2
 */