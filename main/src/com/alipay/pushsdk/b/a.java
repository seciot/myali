package com.alipay.pushsdk.b;

import android.content.Context;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class a extends com.alipay.pushsdk.BundlesManager.AppBundle.BundlesManagerImpl
{
  public static int b = 1;
  public static int c = 2;
  private static final String g = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(AppBundle.class);
  public int a = 0;
  Context d;

  public a(String paramString, Context paramContext)
  {
    super(paramString, paramContext);
    this.d = paramContext;
  }

  public final String a(String paramString)
  {
    String str = null;
    try
    {
      ArrayList localArrayList1 = new ArrayList();
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(new BasicNameValuePair("requestData", paramString));
      URL localURL = a();
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(3, "HttpClient", "Request" + paramString);
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(3, "HttpClient", "Dest url:  " + localURL.toString());
      HttpResponse localHttpResponse = a(localArrayList2, localArrayList1);
      if (localHttpResponse == null)
        return null;
      str = URLDecoder.decode(EntityUtils.toString(localHttpResponse.getEntity()), "UTF-8");
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.a(3, g, "Response " + str.toString());
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return str;
  }

  public final String b(String paramString)
  {
    return a(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.a
 * JD-Core Version:    0.6.2
 */