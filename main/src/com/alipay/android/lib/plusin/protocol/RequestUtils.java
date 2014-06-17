package com.alipay.android.lib.plusin.protocol;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.net.MspClient;
import com.alipay.android.app.util.LogUtils;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.CharArrayBuffer;
import org.apache.http.util.EntityUtils;

public class RequestUtils
{
  private static MspClient a;

  public static String a(HttpResponse paramHttpResponse)
  {
    StatusLine localStatusLine = paramHttpResponse.getStatusLine();
    int i = localStatusLine.getStatusCode();
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    Object localObject1 = null;
    try
    {
      localObject1 = localHttpEntity.getContent();
      if ((localStatusLine.getStatusCode() != 200) || (localObject1 == null))
        throw new NetErrorException(i + " " + localStatusLine.getReasonPhrase());
    }
    catch (Exception localException2)
    {
      localException2 = localException2;
      LogUtils.a(localException2);
      throw new NetErrorException();
    }
    finally
    {
    }
    try
    {
      ((InputStream)localObject1).close();
      throw localObject2;
      Header localHeader = localHttpEntity.getContentEncoding();
      if ((localHeader != null) && (localHeader.getValue().contains("gzip")))
        localObject1 = new GZIPInputStream((InputStream)localObject1);
      j = (int)localHttpEntity.getContentLength();
      if (j < 0)
      {
        k = 4096;
        String str1 = EntityUtils.getContentCharSet(localHttpEntity);
        if (str1 == null)
          str1 = "UTF-8";
        InputStreamReader localInputStreamReader = new InputStreamReader((InputStream)localObject1, str1);
        CharArrayBuffer localCharArrayBuffer = new CharArrayBuffer(k);
        char[] arrayOfChar = new char[1024];
        while (true)
        {
          int m = localInputStreamReader.read(arrayOfChar);
          if (m == -1)
            break;
          localCharArrayBuffer.append(arrayOfChar, 0, m);
        }
        String str2 = localCharArrayBuffer.toString();
        try
        {
          ((InputStream)localObject1).close();
          return str2;
        }
        catch (Exception localException3)
        {
          return str2;
        }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        int j;
        continue;
        int k = j;
      }
    }
  }

  public static HttpResponse a(Context paramContext, String paramString1, String paramString2)
  {
    long l1 = System.currentTimeMillis();
    if (a == null)
      a = new MspClient(paramContext, paramString1);
    while (true)
    {
      HttpResponse localHttpResponse = a.b(paramString2);
      long l2 = System.currentTimeMillis() - l1;
      MonitorThread.a().a(l2, paramString1);
      return localHttpResponse;
      if (!TextUtils.equals(paramString1, a.a()))
        a.a(paramString1);
    }
  }

  public static HttpResponse a(Context paramContext, String paramString1, String paramString2, InteractionData paramInteractionData)
  {
    long l1 = System.currentTimeMillis();
    if (a == null)
    {
      a = new MspClient(paramContext, paramString1);
      if (paramInteractionData == null)
        break label80;
    }
    label80: for (HttpResponse localHttpResponse = a.a(paramString2, paramInteractionData); ; localHttpResponse = a.b(paramString2))
    {
      long l2 = System.currentTimeMillis() - l1;
      MonitorThread.a().a(l2, paramString1);
      return localHttpResponse;
      if (TextUtils.equals(paramString1, a.a()))
        break;
      a.a(paramString1);
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.protocol.RequestUtils
 * JD-Core Version:    0.6.2
 */