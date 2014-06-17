package com.alipay.mobile.quinox.engine;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

public class BundleEngine
{
  public static Object SBundleContext;

  public static BundleContext getBundleContext()
  {
    return new BundleContext(SBundleContext);
  }

  public static Class getProxyClazz(String paramString, ClassLoader paramClassLoader)
  {
    try
    {
      Class localClass;
      for (Object localObject = paramClassLoader.loadClass(paramString).getSuperclass(); localObject != null; localObject = localClass)
      {
        if (((Class)localObject).getName().startsWith("android."))
          return localObject;
        localClass = ((Class)localObject).getSuperclass();
      }
      return null;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
    }
    return null;
  }

  public static void startActivity(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getComponent() == null)
      throw new ActivityNotFoundException("No Activity found to handle " + paramIntent);
    Intent localIntent = new Intent(paramIntent);
    localIntent.setComponent(null);
    localIntent.setFlags(262144);
    BundleContext localBundleContext = getBundleContext();
    String str1 = paramIntent.getComponent().getClassName();
    String str2 = localBundleContext.getBundleNameByComponent(str1);
    if (TextUtils.isEmpty(str2))
      Log.e("BundleEngine", "ClassLoaderError currentcomponentClassName:" + str1 + " canNot find bundleName:" + str2);
    ClassLoader localClassLoader = localBundleContext.findClassLoaderByBundleName(str2);
    if (localClassLoader == null)
      Log.e("BundleEngine", "ClassLoaderError currentBunldleName:" + str2 + ",componetClassName:" + str1 + " canNot find bundleClassLoader");
    Class localClass = getProxyClazz(str1, localClassLoader);
    localIntent.setAction("android.intent.action.bundle." + localClass.getSimpleName() + "_SHELL");
    localIntent.setData(Uri.parse("content://" + paramIntent.getComponent().getClassName()));
    paramContext.startActivity(localIntent);
  }

  public static void startActivityForResult(Activity paramActivity, Intent paramIntent, int paramInt)
  {
    if (paramIntent.getComponent() == null)
      throw new ActivityNotFoundException("No Activity found to handle " + paramIntent);
    Intent localIntent = new Intent(paramIntent);
    localIntent.setComponent(null);
    localIntent.setFlags(262144);
    BundleContext localBundleContext = getBundleContext();
    String str1 = paramIntent.getComponent().getClassName();
    String str2 = localBundleContext.getBundleNameByComponent(str1);
    if (TextUtils.isEmpty(str2))
      Log.e("BundleEngine", "ClassLoaderError currentcomponentClassName:" + str1 + " canNot find bundleName:" + str2);
    ClassLoader localClassLoader = localBundleContext.findClassLoaderByBundleName(str2);
    if (localClassLoader == null)
      Log.e("BundleEngine", "ClassLoaderError currentBunldleName:" + str2 + ",componetClassName:" + str1 + " canNot find bundleClassLoader");
    Class localClass = getProxyClazz(str1, localClassLoader);
    localIntent.setAction("android.intent.action.bundle." + localClass.getSimpleName() + "_SHELL");
    localIntent.setData(Uri.parse("content://" + paramIntent.getComponent().getClassName()));
    paramActivity.startActivityForResult(localIntent, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.engine.BundleEngine
 * JD-Core Version:    0.6.2
 */