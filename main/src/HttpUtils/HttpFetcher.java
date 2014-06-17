package HttpUtils;

import android.util.Base64;
import com.alipay.mobilesecuritysdk.util.CommonUtils;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;

public class HttpFetcher
{
  private static List a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    if (paramString2 == null);
    while (true)
    {
      return null;
      if (paramBoolean);
      try
      {
        String str;
        for (Object localObject = CommonUtils.d(paramString2); !CommonUtils.a((String)localObject); localObject = str)
        {
          ArrayList localArrayList = new ArrayList();
          StringBuilder localStringBuilder = new StringBuilder();
          if (!CommonUtils.a(paramString1))
          {
            localArrayList.add(new BasicNameValuePair("serviceId", paramString1));
            localStringBuilder.append("serviceId=");
            localStringBuilder.append(paramString1);
            localStringBuilder.append("&");
          }
          if (!CommonUtils.a(paramString3))
          {
            localArrayList.add(new BasicNameValuePair("version", paramString3));
            localStringBuilder.append("version=");
            localStringBuilder.append(paramString3);
            localStringBuilder.append("&");
          }
          localArrayList.add(new BasicNameValuePair("data", (String)localObject));
          localStringBuilder.append("data=");
          localStringBuilder.append((String)localObject);
          localStringBuilder.append("02000016-0010-0080-8000-10CA006D2CA5");
          localArrayList.add(new BasicNameValuePair("sign", CommonUtils.b(localStringBuilder.toString())));
          new StringBuilder(String.valueOf(localStringBuilder.toString())).append(localArrayList.toString()).toString();
          return localArrayList;
          str = Base64.encodeToString(paramString2.getBytes(), 8);
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
      }
    }
    return null;
  }

  public static HttpResponse a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    if (paramString3 == null);
    while (true)
    {
      return null;
      try
      {
        HttpPost localHttpPost = new HttpPost(paramString1);
        List localList = a(paramString2, paramString3, paramString4, paramBoolean);
        if (localList != null)
        {
          localHttpPost.setEntity(new UrlEncodedFormEntity(localList, "UTF-8"));
          BasicHttpParams localBasicHttpParams = new BasicHttpParams();
          HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 5000);
          HttpConnectionParams.setSoTimeout(localBasicHttpParams, 5000);
          HttpResponse localHttpResponse = new DefaultHttpClient(localBasicHttpParams).execute(localHttpPost);
          return localHttpResponse;
        }
      }
      catch (Exception localException)
      {
        localException.getMessage();
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     HttpUtils.HttpFetcher
 * JD-Core Version:    0.6.2
 */