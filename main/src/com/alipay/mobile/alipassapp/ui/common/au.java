package com.alipay.mobile.alipassapp.ui.common;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.view.WindowManager;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.style;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.androidquery.AQuery;

public class au
  implements View.OnClickListener
{
  private static final String a = au.class.getSimpleName();
  ax b = null;
  private String c = "";
  private boolean d = false;
  private String e = "";
  private int f = 0;
  private long g;
  private Context h;
  private View i;

  public au(Context paramContext)
  {
    this.h = paramContext;
    this.c = "";
  }

  public au(Context paramContext, String paramString)
  {
    this.h = paramContext;
    this.e = paramString;
    this.f = 0;
  }

  public au(Context paramContext, String paramString, boolean paramBoolean)
  {
    this.h = paramContext;
    this.c = paramString;
    this.d = paramBoolean;
  }

  private void a(APImageView paramAPImageView, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    StringBuffer localStringBuffer = new StringBuffer(this.c);
    for (int j = 4; j < this.c.length(); j += 4)
      localStringBuffer.insert(j + (j - 4) / 4, "-");
    String str1 = localStringBuffer.toString();
    Bitmap localBitmap = paramBitmap.copy(Bitmap.Config.ARGB_8888, true);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    new StringBuilder("contents = ").append(str1).toString();
    localPaint.setColor(-1);
    localCanvas.drawRect(0.0F, -4 + (paramInt2 - paramInt1 / 30), paramInt1, paramInt2, localPaint);
    localPaint.setTextSize(paramInt1 / 30);
    int k = str1.length();
    float f1 = paramInt1 - 60;
    localPaint.setColor(-16777216);
    float f2 = f1 / str1.length();
    for (int m = 0; m < k; m++)
    {
      String str2 = str1.substring(m, m + 1);
      localCanvas.drawText(str2, 30.0F + f2 * m + (f2 - localPaint.measureText(str2)) / 2.0F, paramInt2 - 4, localPaint);
    }
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(90.0F);
    paramAPImageView.setImageBitmap(Bitmap.createBitmap(localBitmap, 0, 0, paramInt1, paramInt2, localMatrix, true));
  }

  public final void a(View paramView, String paramString)
  {
    this.c = paramString;
    APImageView localAPImageView;
    Bitmap localBitmap;
    if (this.i != null)
    {
      localAPImageView = (APImageView)this.i.findViewById(R.id.image_big_show);
      localBitmap = ((BitmapDrawable)((APImageView)paramView).getDrawable()).getBitmap();
      if (localBitmap == null)
        localBitmap = BitmapFactory.decodeResource(this.h.getResources(), R.drawable.oper_loading_img);
      if (this.d)
        a(localAPImageView, localBitmap, localBitmap.getWidth(), localBitmap.getHeight());
    }
    else
    {
      return;
    }
    localAPImageView.setImageBitmap(localBitmap);
  }

  public void onClick(View paramView)
  {
    if (System.currentTimeMillis() - this.g < 600L);
    do
    {
      return;
      this.g = System.currentTimeMillis();
    }
    while ((paramView == null) || (!(paramView instanceof APImageView)));
    this.i = ((APRelativeLayout)LayoutInflater.from(this.h).inflate(R.layout.show_image_for_details, null));
    APImageView localAPImageView = (APImageView)this.i.findViewById(R.id.image_big_show);
    Bitmap localBitmap1;
    if (this.f == 0)
    {
      localBitmap1 = ((BitmapDrawable)((APImageView)paramView).getDrawable()).getBitmap();
      if (localBitmap1 != null)
        break label579;
    }
    label293: label579: for (Bitmap localBitmap2 = BitmapFactory.decodeResource(this.h.getResources(), R.drawable.oper_loading_img); ; localBitmap2 = localBitmap1)
    {
      localAPImageView.setImageBitmap(localBitmap2);
      int j = localBitmap2.getWidth();
      int k = localBitmap2.getHeight();
      BaseActivity localBaseActivity = (BaseActivity)this.h;
      this.b = ax.getBundle(localBaseActivity);
      this.b.e(localBaseActivity, ax.a, ax.a);
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localBaseActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      int m = (int)(0.8F * localDisplayMetrics.widthPixels);
      int n = (int)(0.8F * localDisplayMetrics.heightPixels);
      ViewGroup.LayoutParams localLayoutParams = localAPImageView.getLayoutParams();
      LogCatLog.v(a, "height = " + k + "width = " + j);
      if (this.d)
      {
        a(localAPImageView, localBitmap2, j, k);
        int i2;
        if ((int)(0.6F * localDisplayMetrics.widthPixels) > 600)
        {
          i2 = 600;
          localLayoutParams.width = i2;
          if (i2 * j / k <= n)
            break label493;
        }
        label493: for (int i3 = n; ; i3 = i2 * j / k)
        {
          localLayoutParams.height = i3;
          LogCatLog.v(a, "获取屏幕宽度：=" + localDisplayMetrics.widthPixels + ";图片的显示宽为=" + localLayoutParams.width + ";图片的显示高为=" + localLayoutParams.height);
          Dialog localDialog = new Dialog(localBaseActivity, R.style.details_show_image_dialog);
          localDialog.setContentView(this.i);
          localDialog.setCanceledOnTouchOutside(true);
          localDialog.getWindow().setLayout(-1, -1);
          localDialog.show();
          localAPImageView.setOnClickListener(new av(this, localBaseActivity, localDialog));
          localDialog.setOnCancelListener(new aw(this, localBaseActivity));
          return;
          localBitmap1 = new AQuery(this.h).getCachedImage(this.e);
          break;
          i2 = (int)(0.6F * localDisplayMetrics.widthPixels);
          break label293;
        }
      }
      if (m > 500);
      for (int i1 = 500; ; i1 = m)
      {
        localLayoutParams.width = i1;
        localLayoutParams.height = (i1 * k / j);
        if (localLayoutParams.height <= n)
          break;
        localLayoutParams.height = n;
        localLayoutParams.width = (j * n / k);
        break;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.au
 * JD-Core Version:    0.6.2
 */