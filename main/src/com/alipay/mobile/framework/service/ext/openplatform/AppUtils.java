package com.alipay.mobile.framework.service.ext.openplatform;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.openplatform.common.R.drawable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public final class AppUtils
{
  private static final String CREATE_SHORTCUT_ACTION = "com.android.launcher.action.INSTALL_SHORTCUT";
  private static int SYSTEM_ICON_HEIGHT = 0;
  private static int SYSTEM_ICON_WEIGHT = 0;
  private static final String TAG = "AppUtils";

  public static boolean checkCanAddShortcut(App paramApp)
  {
    if (paramApp == null);
    List localList;
    do
    {
      do
        return false;
      while ((!paramApp.isInstalled()) || (!paramApp.iconHasLoaded()) || (!ModelChecker.canAddShortCut()));
      Intent localIntent = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      localList = AlipayApplication.getInstance().getPackageManager().queryBroadcastReceivers(localIntent, 0);
    }
    while ((localList == null) || (localList.size() <= 0));
    return true;
  }

  public static int compareVersion(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return 0;
    String[] arrayOfString1 = paramString1.split("\\.");
    String[] arrayOfString2 = paramString2.split("\\.");
    int i = Math.min(arrayOfString1.length, arrayOfString2.length);
    int j = 0;
    while (j < i)
      try
      {
        if (Integer.parseInt(arrayOfString1[j]) != Integer.parseInt(arrayOfString2[j]))
        {
          int k = Integer.parseInt(arrayOfString1[j]);
          int m = Integer.parseInt(arrayOfString2[j]);
          return k - m;
        }
        j++;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
    return 0;
  }

  public static final Bitmap createRoundIcon(Bitmap paramBitmap)
  {
    if (paramBitmap.getWidth() < 72)
      return createRoundIcon(paramBitmap, 7, 7);
    return createRoundIcon(paramBitmap, 10, 10);
  }

  private static final Bitmap createRoundIcon(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    BitmapShader localBitmapShader = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    RectF localRectF1 = new RectF(0.0F, 0.0F, i, j);
    Matrix localMatrix = new Matrix();
    RectF localRectF2 = new RectF(0.0F, 0.0F, i, j);
    localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.CENTER);
    localBitmapShader.setLocalMatrix(localMatrix);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader(localBitmapShader);
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    localCanvas.drawRoundRect(localRectF2, paramInt1, paramInt2, localPaint);
    return localBitmap;
  }

  public static final Bitmap createShortcutIcon(Bitmap paramBitmap)
  {
    Bitmap localBitmap1 = ((BitmapDrawable)AlipayApplication.getInstance().getResources().getDrawable(R.drawable.icon_alipay_sign)).getBitmap();
    int i = SYSTEM_ICON_WEIGHT;
    int j = SYSTEM_ICON_HEIGHT;
    Matrix localMatrix1 = new Matrix();
    localMatrix1.postScale(i / localBitmap1.getWidth(), j / localBitmap1.getHeight());
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, localBitmap1.getWidth(), localBitmap1.getHeight(), localMatrix1, true);
    Matrix localMatrix2 = new Matrix();
    localMatrix2.postScale((float)(0.6D * i) / paramBitmap.getWidth(), (float)(0.6D * j) / paramBitmap.getHeight());
    Bitmap localBitmap3 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix2, true);
    Bitmap localBitmap4 = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap4);
    localCanvas.drawBitmap(localBitmap2, 0.0F, 0.0F, null);
    Paint localPaint = new Paint();
    int k = (localBitmap2.getWidth() - localBitmap3.getWidth()) / 2;
    localCanvas.drawBitmap(localBitmap3, k, k, localPaint);
    return localBitmap4;
  }

  public static final Bitmap createShortcutIconForGuide(Bitmap paramBitmap)
  {
    float f = 1.5F;
    Activity localActivity = (Activity)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get();
    if (localActivity != null)
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      localActivity.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      f = localDisplayMetrics.density;
    }
    Bitmap localBitmap1 = ((BitmapDrawable)AlipayApplication.getInstance().getResources().getDrawable(R.drawable.icon_alipay_sign)).getBitmap();
    int i = (int)(64.0F * f);
    int j = (int)(f * 64.0F);
    Matrix localMatrix1 = new Matrix();
    localMatrix1.postScale(i / localBitmap1.getWidth(), j / localBitmap1.getHeight());
    Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, 0, 0, localBitmap1.getWidth(), localBitmap1.getHeight(), localMatrix1, true);
    Matrix localMatrix2 = new Matrix();
    localMatrix2.postScale((float)(0.6D * i) / paramBitmap.getWidth(), (float)(0.6D * j) / paramBitmap.getHeight());
    Bitmap localBitmap3 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix2, true);
    Bitmap localBitmap4 = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap4);
    localCanvas.drawBitmap(localBitmap2, 0.0F, 0.0F, null);
    Paint localPaint = new Paint();
    int k = (localBitmap2.getWidth() - localBitmap3.getWidth()) / 2;
    localCanvas.drawBitmap(localBitmap3, k, k, localPaint);
    return localBitmap4;
  }

  public static final Intent getApkAppLaunchIntent(String paramString)
  {
    if (paramString == null)
      return null;
    return AlipayApplication.getInstance().getPackageManager().getLaunchIntentForPackage(paramString);
  }

  public static Map<String, String> jsonToMap(JSONObject paramJSONObject)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramJSONObject.keys();
    Object localObject = null;
    while (true)
      if (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        try
        {
          String str2 = paramJSONObject.getString(str1);
          localObject = str2;
          localHashMap.put(str1, localObject);
        }
        catch (JSONException localJSONException)
        {
          while (true)
            localJSONException.printStackTrace();
        }
      }
    return localHashMap;
  }

  public static String mapToJson(Map<String, String> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    Map.Entry localEntry;
    String str3;
    for (String str1 = "{"; localIterator.hasNext(); str1 = str3 + "'" + (String)localEntry.getValue() + "',")
    {
      localEntry = (Map.Entry)localIterator.next();
      str3 = str1 + "'" + (String)localEntry.getKey() + "':";
    }
    int i = str1.lastIndexOf(",");
    if (i < 0)
      i = 0;
    String str2 = str1.substring(0, i);
    return str2 + "}";
  }

  public static final void showToastCenter(int paramInt)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    String str = localAlipayApplication.getResources().getString(paramInt);
    localAlipayApplication.getMicroApplicationContext().Toast(str, 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.AppUtils
 * JD-Core Version:    0.6.2
 */