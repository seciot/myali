package android.taobao.service.appdevice.net.async;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpEntity;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;

public class RequestParams
{
  private static String a = "UTF-8";
  protected ConcurrentHashMap<String, RequestParams.FileWrapper> fileParams;
  protected ConcurrentHashMap<String, String> urlParams;

  public RequestParams()
  {
    a();
  }

  public RequestParams(String paramString1, String paramString2)
  {
    a();
    put(paramString1, paramString2);
  }

  public RequestParams(Map<String, String> paramMap)
  {
    a();
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      put((String)localEntry.getKey(), (String)localEntry.getValue());
    }
  }

  private void a()
  {
    this.urlParams = new ConcurrentHashMap();
    this.fileParams = new ConcurrentHashMap();
  }

  public HttpEntity getEntity()
  {
    Object localObject;
    if (!this.fileParams.isEmpty())
    {
      localObject = new SimpleMultipartEntity();
      Iterator localIterator1 = this.urlParams.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
        ((SimpleMultipartEntity)localObject).addPart((String)localEntry2.getKey(), (String)localEntry2.getValue());
      }
      int i = -1 + this.fileParams.entrySet().size();
      Iterator localIterator2 = this.fileParams.entrySet().iterator();
      int j = 0;
      if (!localIterator2.hasNext())
        break label256;
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      RequestParams.FileWrapper localFileWrapper = (RequestParams.FileWrapper)localEntry1.getValue();
      boolean bool;
      if (localFileWrapper.inputStream != null)
      {
        if (j != i)
          break label206;
        bool = true;
        label161: if (localFileWrapper.contentType == null)
          break label212;
        ((SimpleMultipartEntity)localObject).addPart((String)localEntry1.getKey(), localFileWrapper.getFileName(), localFileWrapper.inputStream, localFileWrapper.contentType, bool);
      }
      while (true)
      {
        j++;
        break;
        label206: bool = false;
        break label161;
        label212: ((SimpleMultipartEntity)localObject).addPart((String)localEntry1.getKey(), localFileWrapper.getFileName(), localFileWrapper.inputStream, bool);
      }
    }
    try
    {
      localObject = new UrlEncodedFormEntity(getParamsList(), a);
      label256: return localObject;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      localUnsupportedEncodingException.printStackTrace();
    }
    return null;
  }

  public String getParamString()
  {
    return URLEncodedUtils.format(getParamsList(), a);
  }

  protected List<BasicNameValuePair> getParamsList()
  {
    LinkedList localLinkedList = new LinkedList();
    Iterator localIterator = this.urlParams.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localLinkedList.add(new BasicNameValuePair((String)localEntry.getKey(), (String)localEntry.getValue()));
    }
    return localLinkedList;
  }

  public void put(String paramString, File paramFile)
  {
    put(paramString, new FileInputStream(paramFile), paramFile.getName());
  }

  public void put(String paramString, InputStream paramInputStream)
  {
    put(paramString, paramInputStream, null);
  }

  public void put(String paramString1, InputStream paramInputStream, String paramString2)
  {
    put(paramString1, paramInputStream, paramString2, null);
  }

  public void put(String paramString1, InputStream paramInputStream, String paramString2, String paramString3)
  {
    if ((paramString1 != null) && (paramInputStream != null))
      this.fileParams.put(paramString1, new RequestParams.FileWrapper(paramInputStream, paramString2, paramString3));
  }

  public void put(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString2 != null))
      this.urlParams.put(paramString1, paramString2);
  }

  public void remove(String paramString)
  {
    this.urlParams.remove(paramString);
    this.fileParams.remove(paramString);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator1 = this.urlParams.entrySet().iterator();
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry2 = (Map.Entry)localIterator1.next();
      if (localStringBuilder.length() > 0)
        localStringBuilder.append("&");
      localStringBuilder.append((String)localEntry2.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry2.getValue());
    }
    Iterator localIterator2 = this.fileParams.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry1 = (Map.Entry)localIterator2.next();
      if (localStringBuilder.length() > 0)
        localStringBuilder.append("&");
      localStringBuilder.append((String)localEntry1.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append("FILE");
    }
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.RequestParams
 * JD-Core Version:    0.6.2
 */