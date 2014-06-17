package com.alipay.android.phone.home.util;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.widget.ImageView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.ImageLoaderService;
import com.alipay.mobile.framework.service.common.TaskScheduleService;

public class ImageLoadHelper
{
  public static String a = "NfdBizImageOwner";
  public static String b = "NfdBizImageGroup";

  public static Bitmap a(Bitmap paramBitmap)
  {
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      Paint localPaint = new Paint();
      Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
      RectF localRectF = new RectF(new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight()));
      localPaint.setAntiAlias(true);
      localCanvas.drawARGB(0, 0, 0, 0);
      localPaint.setColor(-16777216);
      localCanvas.drawRoundRect(localRectF, 16.0F, 16.0F, localPaint);
      localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
      localCanvas.drawBitmap(paramBitmap, new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight()), localRect, localPaint);
      return localBitmap;
    }
    catch (Exception localException)
    {
    }
    return paramBitmap;
  }

  public static void a(ImageView paramImageView, String paramString, int paramInt1, int paramInt2)
  {
    if (paramString != null)
      try
      {
        if (paramString.trim().equals(""))
          return;
        MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
        ImageLoaderService localImageLoaderService = (ImageLoaderService)localMicroApplicationContext.findServiceByInterface(ImageLoaderService.class.getName());
        ((TaskScheduleService)localMicroApplicationContext.findServiceByInterface(TaskScheduleService.class.getName())).parallelExecute(new a(localImageLoaderService, paramString, paramImageView, paramInt1, paramInt2));
        return;
      }
      catch (Exception localException)
      {
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.ImageLoadHelper
 * JD-Core Version:    0.6.2
 */