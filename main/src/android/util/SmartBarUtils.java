package android.util;

import android.os.Build;
import java.lang.reflect.Method;

public class SmartBarUtils
{
  public static boolean hasSmartBar()
  {
    try
    {
      boolean bool = ((Boolean)Class.forName("android.os.Build").getMethod("hasSmartBar", new Class[0]).invoke(null, new Object[0])).booleanValue();
      return bool;
    }
    catch (Exception localException)
    {
      if (Build.DEVICE.equals("mx2"))
        return true;
      if ((Build.DEVICE.equals("mx")) || (Build.DEVICE.equals("m9")))
        return false;
    }
    return false;
  }

  // ERROR //
  public static void setActionBarTabsShowAtBottom(android.app.ActionBar paramActionBar, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 70
    //   2: invokestatic 20	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore 5
    //   7: iconst_1
    //   8: anewarray 16	java/lang/Class
    //   11: astore 6
    //   13: aload 6
    //   15: iconst_0
    //   16: getstatic 74	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   19: aastore
    //   20: aload 5
    //   22: ldc 76
    //   24: aload 6
    //   26: invokevirtual 25	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   29: astore 7
    //   31: iconst_1
    //   32: anewarray 4	java/lang/Object
    //   35: astore 11
    //   37: aload 11
    //   39: iconst_0
    //   40: iload_1
    //   41: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   44: aastore
    //   45: aload 7
    //   47: aload_0
    //   48: aload 11
    //   50: invokevirtual 31	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   53: pop
    //   54: return
    //   55: astore 10
    //   57: aload 10
    //   59: invokevirtual 83	java/lang/IllegalArgumentException:printStackTrace	()V
    //   62: return
    //   63: astore 4
    //   65: aload 4
    //   67: invokevirtual 84	java/lang/SecurityException:printStackTrace	()V
    //   70: return
    //   71: astore 9
    //   73: aload 9
    //   75: invokevirtual 85	java/lang/IllegalAccessException:printStackTrace	()V
    //   78: return
    //   79: astore_3
    //   80: aload_3
    //   81: invokevirtual 86	java/lang/NoSuchMethodException:printStackTrace	()V
    //   84: return
    //   85: astore 8
    //   87: aload 8
    //   89: invokevirtual 87	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   92: return
    //   93: astore_2
    //   94: aload_2
    //   95: invokevirtual 88	java/lang/ClassNotFoundException:printStackTrace	()V
    //   98: return
    //
    // Exception table:
    //   from	to	target	type
    //   31	54	55	java/lang/IllegalArgumentException
    //   0	31	63	java/lang/SecurityException
    //   31	54	63	java/lang/SecurityException
    //   57	62	63	java/lang/SecurityException
    //   73	78	63	java/lang/SecurityException
    //   87	92	63	java/lang/SecurityException
    //   31	54	71	java/lang/IllegalAccessException
    //   0	31	79	java/lang/NoSuchMethodException
    //   31	54	79	java/lang/NoSuchMethodException
    //   57	62	79	java/lang/NoSuchMethodException
    //   73	78	79	java/lang/NoSuchMethodException
    //   87	92	79	java/lang/NoSuchMethodException
    //   31	54	85	java/lang/reflect/InvocationTargetException
    //   0	31	93	java/lang/ClassNotFoundException
    //   31	54	93	java/lang/ClassNotFoundException
    //   57	62	93	java/lang/ClassNotFoundException
    //   73	78	93	java/lang/ClassNotFoundException
    //   87	92	93	java/lang/ClassNotFoundException
  }

  // ERROR //
  public static void setActionBarViewCollapsable(android.app.ActionBar paramActionBar, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 70
    //   2: invokestatic 20	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore 5
    //   7: iconst_1
    //   8: anewarray 16	java/lang/Class
    //   11: astore 6
    //   13: aload 6
    //   15: iconst_0
    //   16: getstatic 74	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   19: aastore
    //   20: aload 5
    //   22: ldc 90
    //   24: aload 6
    //   26: invokevirtual 25	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   29: astore 7
    //   31: iconst_1
    //   32: anewarray 4	java/lang/Object
    //   35: astore 11
    //   37: aload 11
    //   39: iconst_0
    //   40: iload_1
    //   41: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   44: aastore
    //   45: aload 7
    //   47: aload_0
    //   48: aload 11
    //   50: invokevirtual 31	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   53: pop
    //   54: return
    //   55: astore 10
    //   57: aload 10
    //   59: invokevirtual 83	java/lang/IllegalArgumentException:printStackTrace	()V
    //   62: return
    //   63: astore 4
    //   65: aload 4
    //   67: invokevirtual 84	java/lang/SecurityException:printStackTrace	()V
    //   70: return
    //   71: astore 9
    //   73: aload 9
    //   75: invokevirtual 85	java/lang/IllegalAccessException:printStackTrace	()V
    //   78: return
    //   79: astore_3
    //   80: aload_3
    //   81: invokevirtual 86	java/lang/NoSuchMethodException:printStackTrace	()V
    //   84: return
    //   85: astore 8
    //   87: aload 8
    //   89: invokevirtual 87	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   92: return
    //   93: astore_2
    //   94: aload_2
    //   95: invokevirtual 88	java/lang/ClassNotFoundException:printStackTrace	()V
    //   98: return
    //
    // Exception table:
    //   from	to	target	type
    //   31	54	55	java/lang/IllegalArgumentException
    //   0	31	63	java/lang/SecurityException
    //   31	54	63	java/lang/SecurityException
    //   57	62	63	java/lang/SecurityException
    //   73	78	63	java/lang/SecurityException
    //   87	92	63	java/lang/SecurityException
    //   31	54	71	java/lang/IllegalAccessException
    //   0	31	79	java/lang/NoSuchMethodException
    //   31	54	79	java/lang/NoSuchMethodException
    //   57	62	79	java/lang/NoSuchMethodException
    //   73	78	79	java/lang/NoSuchMethodException
    //   87	92	79	java/lang/NoSuchMethodException
    //   31	54	85	java/lang/reflect/InvocationTargetException
    //   0	31	93	java/lang/ClassNotFoundException
    //   31	54	93	java/lang/ClassNotFoundException
    //   57	62	93	java/lang/ClassNotFoundException
    //   73	78	93	java/lang/ClassNotFoundException
    //   87	92	93	java/lang/ClassNotFoundException
  }

  // ERROR //
  public static void setActionModeHeaderHidden(android.app.ActionBar paramActionBar, boolean paramBoolean)
  {
    // Byte code:
    //   0: ldc 70
    //   2: invokestatic 20	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore 5
    //   7: iconst_1
    //   8: anewarray 16	java/lang/Class
    //   11: astore 6
    //   13: aload 6
    //   15: iconst_0
    //   16: getstatic 74	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   19: aastore
    //   20: aload 5
    //   22: ldc 92
    //   24: aload 6
    //   26: invokevirtual 25	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   29: astore 7
    //   31: iconst_1
    //   32: anewarray 4	java/lang/Object
    //   35: astore 11
    //   37: aload 11
    //   39: iconst_0
    //   40: iload_1
    //   41: invokestatic 80	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   44: aastore
    //   45: aload 7
    //   47: aload_0
    //   48: aload 11
    //   50: invokevirtual 31	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   53: pop
    //   54: return
    //   55: astore 10
    //   57: aload 10
    //   59: invokevirtual 83	java/lang/IllegalArgumentException:printStackTrace	()V
    //   62: return
    //   63: astore 4
    //   65: aload 4
    //   67: invokevirtual 84	java/lang/SecurityException:printStackTrace	()V
    //   70: return
    //   71: astore 9
    //   73: aload 9
    //   75: invokevirtual 85	java/lang/IllegalAccessException:printStackTrace	()V
    //   78: return
    //   79: astore_3
    //   80: aload_3
    //   81: invokevirtual 86	java/lang/NoSuchMethodException:printStackTrace	()V
    //   84: return
    //   85: astore 8
    //   87: aload 8
    //   89: invokevirtual 87	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   92: return
    //   93: astore_2
    //   94: aload_2
    //   95: invokevirtual 88	java/lang/ClassNotFoundException:printStackTrace	()V
    //   98: return
    //
    // Exception table:
    //   from	to	target	type
    //   31	54	55	java/lang/IllegalArgumentException
    //   0	31	63	java/lang/SecurityException
    //   31	54	63	java/lang/SecurityException
    //   57	62	63	java/lang/SecurityException
    //   73	78	63	java/lang/SecurityException
    //   87	92	63	java/lang/SecurityException
    //   31	54	71	java/lang/IllegalAccessException
    //   0	31	79	java/lang/NoSuchMethodException
    //   31	54	79	java/lang/NoSuchMethodException
    //   57	62	79	java/lang/NoSuchMethodException
    //   73	78	79	java/lang/NoSuchMethodException
    //   87	92	79	java/lang/NoSuchMethodException
    //   31	54	85	java/lang/reflect/InvocationTargetException
    //   0	31	93	java/lang/ClassNotFoundException
    //   31	54	93	java/lang/ClassNotFoundException
    //   57	62	93	java/lang/ClassNotFoundException
    //   73	78	93	java/lang/ClassNotFoundException
    //   87	92	93	java/lang/ClassNotFoundException
  }

  // ERROR //
  public static void setSplitBackgroundDrawable(android.app.ActionBar paramActionBar, android.graphics.drawable.Drawable paramDrawable)
  {
    // Byte code:
    //   0: ldc 70
    //   2: invokestatic 20	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: ldc 95
    //   7: iconst_1
    //   8: anewarray 16	java/lang/Class
    //   11: dup
    //   12: iconst_0
    //   13: ldc 97
    //   15: aastore
    //   16: invokevirtual 25	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   19: astore 4
    //   21: aload 4
    //   23: aload_0
    //   24: iconst_1
    //   25: anewarray 4	java/lang/Object
    //   28: dup
    //   29: iconst_0
    //   30: aload_1
    //   31: aastore
    //   32: invokevirtual 31	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   35: pop
    //   36: return
    //   37: astore 7
    //   39: aload 7
    //   41: invokevirtual 83	java/lang/IllegalArgumentException:printStackTrace	()V
    //   44: return
    //   45: astore_3
    //   46: aload_3
    //   47: invokevirtual 86	java/lang/NoSuchMethodException:printStackTrace	()V
    //   50: return
    //   51: astore 6
    //   53: aload 6
    //   55: invokevirtual 85	java/lang/IllegalAccessException:printStackTrace	()V
    //   58: return
    //   59: astore_2
    //   60: aload_2
    //   61: invokevirtual 88	java/lang/ClassNotFoundException:printStackTrace	()V
    //   64: return
    //   65: astore 5
    //   67: aload 5
    //   69: invokevirtual 87	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   72: return
    //
    // Exception table:
    //   from	to	target	type
    //   21	36	37	java/lang/IllegalArgumentException
    //   0	21	45	java/lang/NoSuchMethodException
    //   21	36	45	java/lang/NoSuchMethodException
    //   39	44	45	java/lang/NoSuchMethodException
    //   53	58	45	java/lang/NoSuchMethodException
    //   67	72	45	java/lang/NoSuchMethodException
    //   21	36	51	java/lang/IllegalAccessException
    //   0	21	59	java/lang/ClassNotFoundException
    //   21	36	59	java/lang/ClassNotFoundException
    //   39	44	59	java/lang/ClassNotFoundException
    //   53	58	59	java/lang/ClassNotFoundException
    //   67	72	59	java/lang/ClassNotFoundException
    //   21	36	65	java/lang/reflect/InvocationTargetException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.util.SmartBarUtils
 * JD-Core Version:    0.6.2
 */