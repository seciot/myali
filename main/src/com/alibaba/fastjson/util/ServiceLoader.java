package com.alibaba.fastjson.util;

import java.io.Closeable;
import java.io.IOException;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class ServiceLoader
{
  private static final String PREFIX = "META-INF/services/";
  private static final Set<String> loadedUrls = new HashSet();

  public static void close(Closeable paramCloseable)
  {
    if (paramCloseable != null)
      paramCloseable.close();
  }

  public static <T> Set<T> load(Class<T> paramClass, ClassLoader paramClassLoader)
  {
    HashSet localHashSet1 = new HashSet();
    String str1 = paramClass.getName();
    String str2 = "META-INF/services/" + str1;
    HashSet localHashSet2 = new HashSet();
    try
    {
      Enumeration localEnumeration = paramClassLoader.getResources(str2);
      while (localEnumeration.hasMoreElements())
      {
        URL localURL = (URL)localEnumeration.nextElement();
        if (!loadedUrls.contains(localURL.toString()))
        {
          load(localURL, localHashSet2);
          loadedUrls.add(localURL.toString());
        }
      }
    }
    catch (IOException localIOException)
    {
      Iterator localIterator = localHashSet2.iterator();
      while (localIterator.hasNext())
      {
        String str3 = (String)localIterator.next();
        try
        {
          localHashSet1.add(paramClassLoader.loadClass(str3).newInstance());
        }
        catch (Exception localException)
        {
        }
      }
    }
    return localHashSet1;
  }

  // ERROR //
  public static void load(URL paramURL, Set<String> paramSet)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 107	java/net/URL:openStream	()Ljava/io/InputStream;
    //   4: astore 5
    //   6: new 109	java/io/BufferedReader
    //   9: dup
    //   10: new 111	java/io/InputStreamReader
    //   13: dup
    //   14: aload 5
    //   16: ldc 113
    //   18: invokespecial 116	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   21: invokespecial 119	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   24: astore_3
    //   25: aload_3
    //   26: invokevirtual 122	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   29: astore 6
    //   31: aload 6
    //   33: ifnull +70 -> 103
    //   36: aload 6
    //   38: bipush 35
    //   40: invokevirtual 126	java/lang/String:indexOf	(I)I
    //   43: istore 7
    //   45: iload 7
    //   47: iflt +13 -> 60
    //   50: aload 6
    //   52: iconst_0
    //   53: iload 7
    //   55: invokevirtual 130	java/lang/String:substring	(II)Ljava/lang/String;
    //   58: astore 6
    //   60: aload 6
    //   62: invokevirtual 133	java/lang/String:trim	()Ljava/lang/String;
    //   65: astore 8
    //   67: aload 8
    //   69: invokevirtual 137	java/lang/String:length	()I
    //   72: ifeq -47 -> 25
    //   75: aload_1
    //   76: aload 8
    //   78: invokeinterface 82 2 0
    //   83: pop
    //   84: goto -59 -> 25
    //   87: astore_2
    //   88: aload 5
    //   90: astore 4
    //   92: aload_3
    //   93: invokestatic 139	com/alibaba/fastjson/util/ServiceLoader:close	(Ljava/io/Closeable;)V
    //   96: aload 4
    //   98: invokestatic 139	com/alibaba/fastjson/util/ServiceLoader:close	(Ljava/io/Closeable;)V
    //   101: aload_2
    //   102: athrow
    //   103: aload_3
    //   104: invokestatic 139	com/alibaba/fastjson/util/ServiceLoader:close	(Ljava/io/Closeable;)V
    //   107: aload 5
    //   109: invokestatic 139	com/alibaba/fastjson/util/ServiceLoader:close	(Ljava/io/Closeable;)V
    //   112: return
    //   113: astore_2
    //   114: aconst_null
    //   115: astore_3
    //   116: aconst_null
    //   117: astore 4
    //   119: goto -27 -> 92
    //   122: astore_2
    //   123: aload 5
    //   125: astore 4
    //   127: aconst_null
    //   128: astore_3
    //   129: goto -37 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   25	31	87	finally
    //   36	45	87	finally
    //   50	60	87	finally
    //   60	84	87	finally
    //   0	6	113	finally
    //   6	25	122	finally
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.ServiceLoader
 * JD-Core Version:    0.6.2
 */