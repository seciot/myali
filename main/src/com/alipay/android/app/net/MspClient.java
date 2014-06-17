package com.alipay.android.app.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.sys.NetConnectionType;
import com.alipay.android.app.util.LogUtils;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.params.HttpParams;

public class MspClient
{
  private Context a;
  private String b;

  public MspClient(Context paramContext, String paramString)
  {
    this.a = paramContext;
    this.b = paramString;
  }

  private URL b()
  {
    try
    {
      new StringBuilder("mUrl : ").append(this.b).toString();
      LogUtils.c();
      URL localURL = new URL(this.b);
      return localURL;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    return null;
  }

  private NetworkInfo c()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.a.getSystemService("connectivity")).getActiveNetworkInfo();
      return localNetworkInfo;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public final String a()
  {
    return this.b;
  }

  public final HttpResponse a(String paramString, InteractionData paramInteractionData)
  {
    if (DeviceInfo.b(this.a) == NetConnectionType.p)
      throw new NetErrorException();
    MspHttpClient localMspHttpClient = MspHttpClient.a();
    while (true)
    {
      try
      {
        HttpParams localHttpParams = localMspHttpClient.d();
        if (Build.VERSION.SDK_INT >= 11)
        {
          URL localURL = b();
          if (localURL == null)
            break label705;
          "https".equalsIgnoreCase(localURL.getProtocol());
          String str3 = System.getProperty("https.proxyHost");
          String str4 = System.getProperty("https.proxyPort");
          if (TextUtils.isEmpty(str3))
            break label705;
          localHttpHost = new HttpHost(str3, Integer.parseInt(str4));
          if (localHttpHost != null)
            localHttpParams.setParameter("http.route.default-proxy", localHttpHost);
          new StringBuilder("requestUrl : ").append(this.b).toString();
          LogUtils.i();
          new StringBuilder("requestData : ").append(paramString).toString();
          LogUtils.g();
          if (!TextUtils.isEmpty(paramString))
            continue;
          localObject = new HttpGet(this.b);
          if (paramInteractionData == null)
            continue;
          ArrayList localArrayList = paramInteractionData.a();
          if (localArrayList == null)
            continue;
          Iterator localIterator = localArrayList.iterator();
          if (!localIterator.hasNext())
            continue;
          ((HttpUriRequest)localObject).addHeader((BasicHeader)localIterator.next());
          continue;
        }
      }
      catch (NetErrorException localNetErrorException)
      {
        throw localNetErrorException;
        NetworkInfo localNetworkInfo = c();
        if ((localNetworkInfo == null) || (!localNetworkInfo.isAvailable()) || (localNetworkInfo.getType() != 0))
          break label699;
        String str2 = Proxy.getDefaultHost();
        int i = Proxy.getDefaultPort();
        if (str2 == null)
          break label699;
        localHttpHost = new HttpHost(str2, i);
        continue;
      }
      catch (ConnectTimeoutException localConnectTimeoutException)
      {
        if (localMspHttpClient != null)
          localMspHttpClient.c();
        MonitorThread.a().c(localConnectTimeoutException, "connction time out");
        LogUtils.a(localConnectTimeoutException);
        throw new NetErrorException();
        localObject = new HttpPost(this.b);
        if (paramInteractionData != null)
        {
          str1 = paramInteractionData.b();
          if (!TextUtils.isEmpty(paramInteractionData.c()))
            paramString = paramInteractionData.c() + "=" + paramString;
          if (TextUtils.isEmpty(str1))
            str1 = "application/octet-stream;binary/octet-stream";
          ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(paramString.getBytes("utf-8"));
          localByteArrayEntity.setContentType(str1);
          ((HttpPost)localObject).setEntity(localByteArrayEntity);
          ((HttpUriRequest)localObject).addHeader("Accept-Charset", "UTF-8");
          ((HttpUriRequest)localObject).addHeader("Accept-Encoding", "gzip");
          ((HttpUriRequest)localObject).addHeader("Connection", "Keep-Alive");
          ((HttpUriRequest)localObject).addHeader("Keep-Alive", "timeout=180, max=100");
          continue;
        }
      }
      catch (SocketException localSocketException)
      {
        Object localObject;
        MonitorThread.a().c(localSocketException, "connect reset");
        LogUtils.a(localSocketException);
        throw new NetErrorException();
        if (GlobalContext.a().d())
          ((HttpUriRequest)localObject).addHeader("OS", "Android");
        HttpResponse localHttpResponse = localMspHttpClient.a((HttpUriRequest)localObject);
        Header[] arrayOfHeader1 = localHttpResponse.getHeaders("X-Hostname");
        if ((arrayOfHeader1 != null) && (arrayOfHeader1.length > 0) && (arrayOfHeader1[0] != null))
        {
          localHttpResponse.getHeaders("X-Hostname")[0].toString();
          LogUtils.c();
        }
        Header[] arrayOfHeader2 = localHttpResponse.getHeaders("X-ExecuteTime");
        if ((arrayOfHeader2 != null) && (arrayOfHeader2.length > 0) && (arrayOfHeader2[0] != null))
        {
          localHttpResponse.getHeaders("X-ExecuteTime")[0].toString();
          LogUtils.c();
        }
        return localHttpResponse;
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        MonitorThread.a().c(localSocketTimeoutException, "socket time out");
        LogUtils.a(localSocketTimeoutException);
        throw new NetErrorException();
      }
      catch (Exception localException)
      {
        MonitorThread.a().c(localException, "connction net error");
        LogUtils.a(localException);
        throw new NetErrorException();
      }
      String str1 = null;
      continue;
      label699: HttpHost localHttpHost = null;
      continue;
      label705: localHttpHost = null;
    }
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final HttpResponse b(String paramString)
  {
    return a(paramString, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.net.MspClient
 * JD-Core Version:    0.6.2
 */