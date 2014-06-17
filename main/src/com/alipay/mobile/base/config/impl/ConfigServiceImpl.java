package com.alipay.mobile.base.config.impl;

import android.content.Context;
import android.os.Bundle;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class ConfigServiceImpl extends ConfigService
{
  public static final long ONE_HOUR = 3600000L;
  public static long loadTime;
  private final Object a = new Object();
  private Map<String, String> b = null;

  // ERROR //
  private String a(java.io.InputStream paramInputStream)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 23	com/alipay/mobile/base/config/impl/ConfigServiceImpl:a	Ljava/lang/Object;
    //   4: astore_2
    //   5: aload_2
    //   6: monitorenter
    //   7: ldc 43
    //   9: astore_3
    //   10: aload_1
    //   11: ifnull +79 -> 90
    //   14: new 45	java/io/InputStreamReader
    //   17: dup
    //   18: aload_1
    //   19: ldc 47
    //   21: invokespecial 50	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   24: astore 5
    //   26: new 52	java/io/BufferedReader
    //   29: dup
    //   30: aload 5
    //   32: invokespecial 55	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   35: astore 6
    //   37: aload 6
    //   39: invokevirtual 58	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   42: astore 12
    //   44: aload 12
    //   46: ifnull +26 -> 72
    //   49: new 60	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 61	java/lang/StringBuilder:<init>	()V
    //   56: aload_3
    //   57: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload 12
    //   62: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: astore_3
    //   69: goto -32 -> 37
    //   72: aload 6
    //   74: invokevirtual 71	java/io/BufferedReader:close	()V
    //   77: aload 5
    //   79: invokevirtual 72	java/io/InputStreamReader:close	()V
    //   82: aload_1
    //   83: ifnull +7 -> 90
    //   86: aload_1
    //   87: invokevirtual 75	java/io/InputStream:close	()V
    //   90: aload_2
    //   91: monitorexit
    //   92: aload_3
    //   93: areturn
    //   94: astore 9
    //   96: new 60	java/lang/StringBuilder
    //   99: dup
    //   100: ldc 77
    //   102: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   105: aload 9
    //   107: invokevirtual 83	java/io/IOException:getMessage	()Ljava/lang/String;
    //   110: invokevirtual 65	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 68	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: pop
    //   117: aload_1
    //   118: ifnull -28 -> 90
    //   121: aload_1
    //   122: invokevirtual 75	java/io/InputStream:close	()V
    //   125: goto -35 -> 90
    //   128: astore 11
    //   130: goto -40 -> 90
    //   133: astore 7
    //   135: aload_1
    //   136: ifnull +7 -> 143
    //   139: aload_1
    //   140: invokevirtual 75	java/io/InputStream:close	()V
    //   143: aload 7
    //   145: athrow
    //   146: astore 4
    //   148: aload_2
    //   149: monitorexit
    //   150: aload 4
    //   152: athrow
    //   153: astore 13
    //   155: goto -65 -> 90
    //   158: astore 8
    //   160: goto -17 -> 143
    //
    // Exception table:
    //   from	to	target	type
    //   14	37	94	java/io/IOException
    //   37	44	94	java/io/IOException
    //   49	69	94	java/io/IOException
    //   72	82	94	java/io/IOException
    //   121	125	128	java/io/IOException
    //   14	37	133	finally
    //   37	44	133	finally
    //   49	69	133	finally
    //   72	82	133	finally
    //   96	117	133	finally
    //   86	90	146	finally
    //   90	92	146	finally
    //   121	125	146	finally
    //   139	143	146	finally
    //   143	146	146	finally
    //   86	90	153	java/io/IOException
    //   139	143	158	java/io/IOException
  }

  private Map<String, String> a(String paramString1, String paramString2, String paramString3)
  {
    try
    {
      File localFile = new File(paramString1 + File.separator + paramString2, paramString3);
      if (localFile.exists())
        return a(new JSONObject(a(new FileInputStream(localFile))));
      throw new IOException("can't find common json file");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private static Map<String, String> a(JSONObject paramJSONObject)
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

  public String getConfig(String paramString)
  {
    if ((this.b == null) || (this.b.size() <= 0))
      this.b = a(getMicroApplicationContext().getApplicationContext().getFilesDir().getAbsolutePath(), "Alipay", "CommonConfig.json");
    if ((this.b != null) && (this.b.size() != 0))
      return (String)this.b.get(paramString);
    return null;
  }

  public void loadConfig()
  {
    new ConfigServiceImpl.ConfigLoaderTask(this, (byte)0).start();
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.config.impl.ConfigServiceImpl
 * JD-Core Version:    0.6.2
 */