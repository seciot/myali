package com.alipay.asset.common.util;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.net.Uri;
import android.view.View;
import android.view.Window;
import com.alipay.mobile.common.utils.StringUtils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class ToolUtil
{
  public static final String KEY_TID = "tid";
  public static final String KEY_TIMESTAMP = "timestamp";
  public static final String KEY_TOKEN = "key";
  public static final String VIRTUAL_IMEI = "virtualImei";
  public static final String VIRTUAL_IMSI = "virtualImsi";

  public static int byte2int(byte[] paramArrayOfByte)
  {
    int i = 0;
    if (paramArrayOfByte != null)
    {
      int j = paramArrayOfByte.length;
      i = 0;
      if (j != 4);
    }
    try
    {
      int k = 0xFF & paramArrayOfByte[0] | 0xFF00 & paramArrayOfByte[1] << 8 | paramArrayOfByte[2] << 24 >>> 8;
      int m = paramArrayOfByte[3];
      i = k | m << 24;
      return i;
    }
    catch (Exception localException)
    {
      new StringBuilder("{[info=byte2int], [msg=").append(localException.getMessage()).append("]}").toString();
    }
    return 0;
  }

  public static boolean checkCameraHardware(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.camera");
  }

  public static Double getDateNoTime(Double paramDouble)
  {
    try
    {
      Long localLong = Long.valueOf(paramDouble.longValue());
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      Double localDouble = Double.valueOf(Long.valueOf(localSimpleDateFormat.parse(localSimpleDateFormat.format(new Date(localLong.longValue()))).getTime()).doubleValue());
      return localDouble;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      new StringBuilder("{[info = getDateNoTime], [msg = ").append(localNumberFormatException.getMessage()).append("]}").toString();
      return null;
    }
    catch (ParseException localParseException)
    {
      while (true)
        new StringBuilder("{[info = getDateNoTime], [msg = ").append(localParseException.getMessage()).append("]}").toString();
    }
  }

  public static Double getDateNoTime(String paramString)
  {
    try
    {
      Long localLong = Long.valueOf(paramString);
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
      Double localDouble = Double.valueOf(Long.valueOf(localSimpleDateFormat.parse(localSimpleDateFormat.format(new Date(localLong.longValue()))).getTime()).doubleValue());
      return localDouble;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      new StringBuilder("{[info = getDateNoTime], [msg = ").append(localNumberFormatException.getMessage()).append("]}").toString();
      return null;
    }
    catch (ParseException localParseException)
    {
      while (true)
        new StringBuilder("{[info = getDateNoTime], [msg = ").append(localParseException.getMessage()).append("]}").toString();
    }
  }

  public static Double getDoubleFromString(String paramString)
  {
    Object localObject = null;
    if (paramString != null);
    try
    {
      Double localDouble = Double.valueOf(paramString);
      localObject = localDouble;
      return localObject;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      new StringBuilder("{[info=getDoubleFromString], [str = ").append(paramString).append("]}").toString();
    }
    return null;
  }

  public static int getStatusBarHeight(Activity paramActivity)
  {
    Rect localRect = new Rect();
    Window localWindow = paramActivity.getWindow();
    localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect);
    int i = localRect.top;
    int j = localWindow.findViewById(16908290).getTop() - i;
    if (j == 0)
    {
      int k = paramActivity.getResources().getIdentifier("status_bar_height", "dimen", "android");
      j = 0;
      if (k > 0)
        j = paramActivity.getResources().getDimensionPixelSize(k);
    }
    return j;
  }

  public static String getTid(Context paramContext)
  {
    Cursor localCursor = paramContext.getContentResolver().query(Uri.parse("content://com.alipay.android.app.share"), new String[] { "tid", "timestamp", "key", "virtualImei", "virtualImsi" }, null, null, null);
    String str = null;
    if (localCursor != null)
    {
      boolean bool = localCursor.moveToFirst();
      str = null;
      if (bool)
      {
        new StringBuilder("test virtual imei ").append(localCursor.getString(0)).append("  ").append(localCursor.getString(1)).append("  ").append(localCursor.getString(2)).append("  ").append(localCursor.getString(3)).append("  ").append(localCursor.getString(4)).toString();
        str = localCursor.getString(0);
        localCursor.close();
      }
    }
    return str;
  }

  public static boolean haveInstallApp(Context paramContext, String paramString)
  {
    if (StringUtils.isBlank(paramString));
    while (true)
    {
      return false;
      List localList = paramContext.getPackageManager().getInstalledPackages(0);
      if (localList != null)
        for (int i = 0; i < localList.size(); i++)
          if (StringUtils.equalsIgnoreCase(paramString, ((PackageInfo)localList.get(i)).packageName))
            return true;
    }
  }

  public static byte[] int2byte(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[0] = ((byte)(paramInt & 0xFF));
    arrayOfByte[1] = ((byte)(0xFF & paramInt >> 8));
    arrayOfByte[2] = ((byte)(0xFF & paramInt >> 16));
    arrayOfByte[3] = ((byte)(paramInt >>> 24));
    return arrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.util.ToolUtil
 * JD-Core Version:    0.6.2
 */