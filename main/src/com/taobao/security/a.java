package com.taobao.security;

import android.content.ContextWrapper;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.StaticDataStore;
import com.taobao.securityjni.connector.ConnectorHelper;
import com.taobao.securityjni.errorcode.SESoNotInitedError;
import org.json.JSONException;
import org.json.JSONObject;

public final class a
  implements ConnectorHelper
{
  private ContextWrapper a = null;

  public a(ContextWrapper paramContextWrapper)
  {
    this.a = paramContextWrapper;
  }

  private static ProtocalEntry a(String paramString)
  {
    ProtocalEntry localProtocalEntry = new ProtocalEntry();
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      if (localJSONObject.optInt("ret", 1) == 0)
        return null;
      int i = localJSONObject.optInt("ep", -1);
      String str1 = localJSONObject.optString("fp");
      int j = localJSONObject.optInt("bs", -1);
      String str2 = localJSONObject.optString("v");
      localProtocalEntry.ep = i;
      localProtocalEntry.bs = j;
      localProtocalEntry.fp = str1;
      localProtocalEntry.v = str2;
      return localProtocalEntry;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localProtocalEntry;
  }

  public final String getApiUrl()
  {
    Object localObject = GlobalInit.GetGlobalAppKey();
    StaticDataStore localStaticDataStore;
    if (localObject == null)
      localStaticDataStore = new StaticDataStore(this.a);
    try
    {
      String str = localStaticDataStore.getAppKey();
      localObject = str;
      localStringBuilder = new StringBuilder();
      if (GlobalInit.GetSecurityDebugMode())
      {
        localStringBuilder.append("http://10.125.10.20/collina/sbb/get_config/?");
        new StringBuilder("ConfigConnectorHelper=").append("http://10.125.10.20/collina/sbb/get_config/?").toString();
        localStringBuilder.append("bid=").append((String)localObject);
        return localStringBuilder.toString();
      }
    }
    catch (SESoNotInitedError localSESoNotInitedError)
    {
      while (true)
      {
        StringBuilder localStringBuilder;
        localSESoNotInitedError.printStackTrace();
        continue;
        localStringBuilder.append("http://acjs.aliyun.com/collina/sbb/get_config?");
      }
    }
  }

  public final Object syncPaser(Object paramObject)
  {
    return a((String)paramObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.a
 * JD-Core Version:    0.6.2
 */