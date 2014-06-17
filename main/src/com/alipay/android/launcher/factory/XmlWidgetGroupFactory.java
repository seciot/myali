package com.alipay.android.launcher.factory;

import android.app.Activity;
import com.alipay.android.launcher.core.IWidgetGroup;
import com.alipay.android.launcher.core.IWidgetGroupFactory;
import java.util.ArrayList;
import java.util.List;

public class XmlWidgetGroupFactory
  implements IWidgetGroupFactory
{
  private List<IWidgetGroup> a;
  private Activity b;
  private List<ClassLoader> c;

  public XmlWidgetGroupFactory(Activity paramActivity)
  {
    this.b = paramActivity;
    this.c = new ArrayList();
    a();
  }

  // ERROR //
  private void a()
  {
    // Byte code:
    //   0: new 33	com/alipay/android/launcher/factory/WidgetGroupDao
    //   3: dup
    //   4: invokespecial 34	com/alipay/android/launcher/factory/WidgetGroupDao:<init>	()V
    //   7: pop
    //   8: invokestatic 40	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   11: invokevirtual 44	com/alipay/mobile/framework/AlipayApplication:getBundleContext	()Lcom/alipay/mobile/framework/BundleContext;
    //   14: astore_3
    //   15: invokestatic 47	com/alipay/android/launcher/factory/WidgetGroupDao:a	()Ljava/util/List;
    //   18: astore 4
    //   20: aload_0
    //   21: new 22	java/util/ArrayList
    //   24: dup
    //   25: invokespecial 23	java/util/ArrayList:<init>	()V
    //   28: putfield 49	com/alipay/android/launcher/factory/XmlWidgetGroupFactory:a	Ljava/util/List;
    //   31: aload 4
    //   33: invokeinterface 55 1 0
    //   38: astore 5
    //   40: aload 5
    //   42: invokeinterface 61 1 0
    //   47: ifeq +108 -> 155
    //   50: aload 5
    //   52: invokeinterface 65 1 0
    //   57: checkcast 67	com/alipay/android/launcher/beans/WidgetGroup
    //   60: astore 6
    //   62: aload 6
    //   64: invokevirtual 70	com/alipay/android/launcher/beans/WidgetGroup:a	()Ljava/lang/String;
    //   67: pop
    //   68: aload 6
    //   70: invokevirtual 72	com/alipay/android/launcher/beans/WidgetGroup:b	()Ljava/lang/String;
    //   73: astore 10
    //   75: aload_3
    //   76: aload 6
    //   78: invokevirtual 74	com/alipay/android/launcher/beans/WidgetGroup:c	()Ljava/lang/String;
    //   81: invokevirtual 80	com/alipay/mobile/framework/BundleContext:findClassLoaderByBundleName	(Ljava/lang/String;)Ljava/lang/ClassLoader;
    //   84: astore 11
    //   86: aload_0
    //   87: getfield 25	com/alipay/android/launcher/factory/XmlWidgetGroupFactory:c	Ljava/util/List;
    //   90: aload 11
    //   92: invokeinterface 84 2 0
    //   97: pop
    //   98: aload 11
    //   100: aload 10
    //   102: invokevirtual 90	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
    //   105: invokestatic 95	com/alipay/mobile/common/reflect/ReflectUtil:getInstance	(Ljava/lang/Class;)Ljava/lang/Object;
    //   108: checkcast 97	com/alipay/android/launcher/core/IWidgetGroup
    //   111: astore 13
    //   113: aload 13
    //   115: aload 6
    //   117: invokevirtual 70	com/alipay/android/launcher/beans/WidgetGroup:a	()Ljava/lang/String;
    //   120: invokeinterface 101 2 0
    //   125: aload_0
    //   126: getfield 49	com/alipay/android/launcher/factory/XmlWidgetGroupFactory:a	Ljava/util/List;
    //   129: aload 13
    //   131: invokeinterface 84 2 0
    //   136: pop
    //   137: goto -97 -> 40
    //   140: astore 8
    //   142: aload 8
    //   144: invokevirtual 104	java/lang/ClassNotFoundException:printStackTrace	()V
    //   147: goto -107 -> 40
    //   150: astore_2
    //   151: aload_2
    //   152: invokevirtual 105	java/lang/Exception:printStackTrace	()V
    //   155: return
    //   156: astore 7
    //   158: aload 7
    //   160: invokevirtual 105	java/lang/Exception:printStackTrace	()V
    //   163: goto -123 -> 40
    //
    // Exception table:
    //   from	to	target	type
    //   62	137	140	java/lang/ClassNotFoundException
    //   0	40	150	java/lang/Exception
    //   40	62	150	java/lang/Exception
    //   142	147	150	java/lang/Exception
    //   158	163	150	java/lang/Exception
    //   62	137	156	java/lang/Exception
  }

  public List<IWidgetGroup> getAllWidgetGroups()
  {
    return this.a;
  }

  public List<ClassLoader> getClassloaders()
  {
    return this.c;
  }

  public IWidgetGroup getWidgetGroup(String paramString)
  {
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.factory.XmlWidgetGroupFactory
 * JD-Core Version:    0.6.2
 */