package com.alipay.android.widget.security.ui.authentication;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class CameraHelper
{
  public static int a(Context paramContext, int paramInt, Camera paramCamera)
  {
    int i;
    int k;
    switch (((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getRotation())
    {
    default:
      i = 0;
      int j = c(paramInt);
      k = b(paramInt);
      if (j != 1)
        break;
    case 0:
    case 1:
    case 2:
    case 3:
    }
    for (int m = (360 - (i + k) % 360) % 360; ; m = (360 + (k - i)) % 360)
    {
      paramCamera.setDisplayOrientation(m);
      return m;
      i = 0;
      break;
      i = 90;
      break;
      i = 180;
      break;
      i = 270;
      break;
    }
  }

  @SuppressLint({"NewApi"})
  public static Camera a(int paramInt)
  {
    if (Build.VERSION.SDK_INT >= 9)
      try
      {
        Camera localCamera2 = Camera.open(paramInt);
        return localCamera2;
      }
      catch (RuntimeException localRuntimeException)
      {
        localRuntimeException.printStackTrace();
        return null;
      }
    try
    {
      Camera localCamera1 = Camera.open();
      return localCamera1;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  private static Object a(Object paramObject)
  {
    try
    {
      Integer localInteger = Integer.valueOf(paramObject.getClass().getField("orientation").getInt(paramObject));
      return localInteger;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static boolean a()
  {
    String str = Build.MODEL;
    return ("ZTE".equalsIgnoreCase(Build.MANUFACTURER)) && ("ZTE U970".equalsIgnoreCase(str));
  }

  public static boolean a(Context paramContext)
  {
    return (c(paramContext)) || (b(paramContext));
  }

  public static boolean a(String paramString1, String paramString2)
  {
    String str = Build.MODEL;
    return (paramString1.equalsIgnoreCase(Build.MANUFACTURER)) && (paramString2.equalsIgnoreCase(str));
  }

  @SuppressLint({"NewApi"})
  public static int b(int paramInt)
  {
    Object localObject1 = d(paramInt);
    if (localObject1 != null)
    {
      if (Build.VERSION.SDK_INT >= 9)
        return ((Camera.CameraInfo)localObject1).orientation;
      Object localObject2 = a(localObject1);
      if (localObject2 != null)
        return ((Integer)localObject2).intValue();
    }
    return 90;
  }

  public static boolean b()
  {
    String str1 = Build.MODEL;
    String str2 = Build.MANUFACTURER;
    new StringBuilder("model: ").append(str1).toString();
    new StringBuilder("manufacturer: ").append(str2).toString();
    return ("Meizu".equalsIgnoreCase(str2)) && (!"M353".equalsIgnoreCase(str1));
  }

  @SuppressLint({"InlinedApi"})
  public static boolean b(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.camera.front");
  }

  @SuppressLint({"NewApi"})
  public static int c(int paramInt)
  {
    Object localObject1 = d(paramInt);
    if (localObject1 != null)
    {
      if (Build.VERSION.SDK_INT >= 9)
      {
        if (((Camera.CameraInfo)localObject1).facing == 1)
          return 1;
        return 0;
      }
      Object localObject2 = a(localObject1);
      if (localObject2 != null)
        return ((Integer)localObject2).intValue();
    }
    return -1;
  }

  public static boolean c()
  {
    String str1 = Build.MODEL;
    String str2 = Build.MANUFACTURER;
    new StringBuilder("model: ").append(str1).toString();
    new StringBuilder("manufacturer: ").append(str2).toString();
    return ("Xiaomi".equalsIgnoreCase(str2)) && ("MI 3".equalsIgnoreCase(str1));
  }

  public static boolean c(Context paramContext)
  {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.camera");
  }

  @SuppressLint({"NewApi"})
  public static int d(Context paramContext)
  {
    if (!b(paramContext))
      return -1;
    int j;
    if (Build.VERSION.SDK_INT >= 9)
    {
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      int i = Camera.getNumberOfCameras();
      j = 0;
      if (j < i)
      {
        Camera.getCameraInfo(j, localCameraInfo);
        if (localCameraInfo.facing != 1);
      }
    }
    while (true)
    {
      return j;
      j++;
      break;
      j = -1;
    }
  }

  @SuppressLint({"NewApi"})
  private static Object d(int paramInt)
  {
    Camera.CameraInfo localCameraInfo;
    if (Build.VERSION.SDK_INT >= 9)
    {
      localCameraInfo = new Camera.CameraInfo();
      Camera.getCameraInfo(paramInt, localCameraInfo);
      return localCameraInfo;
    }
    while (true)
    {
      try
      {
        Class localClass1 = Class.forName("android.hardware.Camera");
        Class localClass2 = Class.forName("android.hardware.Camera$CameraInfo");
        if (localClass2 != null)
        {
          localObject = localClass2.newInstance();
          Class[] arrayOfClass = new Class[2];
          arrayOfClass[0] = Integer.TYPE;
          arrayOfClass[1] = localClass2;
          Method localMethod = localClass1.getMethod("getCameraInfo", arrayOfClass);
          localCameraInfo = null;
          if (localMethod == null)
            break;
          localCameraInfo = null;
          if (localClass2 == null)
            break;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(paramInt);
          arrayOfObject[1] = localObject;
          localMethod.invoke(null, arrayOfObject);
          return null;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return null;
      }
      Object localObject = null;
    }
  }

  @SuppressLint({"NewApi"})
  public static int e(Context paramContext)
  {
    if (!c(paramContext))
      return -1;
    int i = Build.VERSION.SDK_INT;
    int j = 0;
    if (i >= 9)
    {
      Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
      int k = Camera.getNumberOfCameras();
      if (j >= k)
        break label60;
      Camera.getCameraInfo(j, localCameraInfo);
      if (localCameraInfo.facing != 0)
        break label54;
    }
    while (true)
    {
      return j;
      label54: j++;
      break;
      label60: j = -1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CameraHelper
 * JD-Core Version:    0.6.2
 */