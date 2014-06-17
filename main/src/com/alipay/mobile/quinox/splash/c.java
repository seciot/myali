package com.alipay.mobile.quinox.splash;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import java.lang.reflect.Field;

public final class c
{
  boolean a = true;
  a b;
  b c;
  private ImageView d;
  private RelativeLayout e;
  private Activity f;
  private Handler g;
  private Thread h;
  private boolean i = false;
  private String j;
  private String k = "";
  private WebView l;

  public c(Activity paramActivity, Handler paramHandler)
  {
    this.f = paramActivity;
    this.g = paramHandler;
    this.d = ((ImageView)paramActivity.findViewById(b("client_bg")));
    this.e = ((RelativeLayout)paramActivity.findViewById(b("alipaylogin_layout")));
  }

  private int b(String paramString)
  {
    try
    {
      int m = ((Integer)Class.forName(this.f.getPackageName() + ".R$id").getDeclaredField(paramString).get(null)).intValue();
      return m;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  private int c(String paramString)
  {
    try
    {
      int m = ((Integer)Class.forName(this.f.getPackageName() + ".R$drawable").getDeclaredField(paramString).get(null)).intValue();
      return m;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  public final void a()
  {
    ImageView localImageView = (ImageView)this.f.findViewById(b("first_deploy_logo"));
    localImageView.setBackgroundResource(c("first_deploy_logo"));
    localImageView.setVisibility(0);
  }

  public final void a(String paramString)
  {
    this.k = paramString;
    if (!TextUtils.isEmpty(this.k))
    {
      this.f.getIntent().setData(Uri.parse(this.k));
      this.g.sendEmptyMessage(2);
    }
  }

  public final void b()
  {
    this.b = new a(this.f);
    this.c = this.b.b();
    if (this.c == null)
    {
      this.g.postDelayed(new e(this), 0L);
      return;
    }
    this.j = this.c.f;
    this.h = new Thread(new d(this));
    if ("true".equalsIgnoreCase(this.c.h))
    {
      String str2 = this.b.a() + this.c.a + "/background/";
      String str3;
      switch (this.f.getResources().getDisplayMetrics().densityDpi)
      {
      default:
        str3 = "high/";
      case 240:
      case 160:
      case 120:
      case 320:
      }
      while (true)
      {
        try
        {
          b localb = this.c;
          BitmapFactory.Options localOptions = new BitmapFactory.Options();
          localOptions.inPreferredConfig = Bitmap.Config.ARGB_8888;
          Bitmap localBitmap = BitmapFactory.decodeFile(str2 + str3 + localb.g, localOptions);
          if (localBitmap != null)
          {
            BitmapDrawable localBitmapDrawable = new BitmapDrawable(localBitmap);
            localBitmapDrawable.setBounds(0, 0, localBitmap.getWidth(), localBitmap.getHeight());
            this.d.setBackgroundDrawable(localBitmapDrawable);
          }
          if ((this.d == null) || (this.i))
            break;
          this.h.start();
          return;
        }
        catch (Exception localException)
        {
          localException.printStackTrace();
          return;
        }
        str3 = "medium/";
        continue;
        str3 = "medium/";
        continue;
        str3 = "low/";
        continue;
        str3 = "high/";
      }
    }
    String str1 = this.b.a() + this.c.a + "/" + this.c.e;
    this.l = new WebView(this.f.getApplicationContext());
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.addRule(3, this.d.getId());
    this.l.setLayoutParams(localLayoutParams);
    this.e.addView(this.l);
    this.l.setBackgroundColor(0);
    this.l.setBackgroundResource(c("startclient"));
    this.l.getSettings().setJavaScriptEnabled(true);
    if (Build.VERSION.SDK_INT >= 11)
      this.l.setLayerType(1, null);
    this.l.setScrollBarStyle(0);
    this.l.loadUrl("file://" + str1);
    this.l.setWebViewClient(new f(this, (byte)0));
  }

  public final void c()
  {
    if (this.l != null);
    try
    {
      ViewGroup localViewGroup = (ViewGroup)this.l.getParent();
      if (localViewGroup != null)
        localViewGroup.removeView(this.l);
      this.l.removeAllViews();
      this.l.destroy();
      this.l = null;
      label49: if ((this.d != null) && (this.d.getBackground() != null))
      {
        this.d.setBackgroundDrawable(null);
        this.d = null;
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      break label49;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.splash.c
 * JD-Core Version:    0.6.2
 */