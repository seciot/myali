package com.alipay.mobile.command.rpc.serialize;

import android.text.TextUtils;
import com.alipay.mobile.command.util.JsonUtil;
import com.alipay.mobile.command.util.exception.RpcException;
import java.lang.reflect.Type;
import org.json.JSONObject;

public class JsonSerializer
  implements Serializer<String>
{
  public <E> E deCodeData(String paramString, Type paramType)
  {
    try
    {
      if (TextUtils.isEmpty(paramString))
        return null;
      JSONObject localJSONObject = new JSONObject(paramString);
      int i = localJSONObject.getInt("resultStatus");
      Object localObject1 = "";
      try
      {
        String str = localJSONObject.getString("tips");
        localObject1 = str;
        if (i != 1000)
          throw new RpcException(Integer.valueOf(i), (String)localObject1);
        if ((paramType instanceof Class))
        {
          localObject2 = ((Class)paramType).newInstance();
          JsonUtil.fill(new JSONObject(localJSONObject.getString("result")), localObject2, localObject2.getClass().getClassLoader());
          return localObject2;
        }
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          continue;
          Object localObject2 = null;
        }
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String encodeData(Object paramObject)
  {
    if (paramObject == null)
      return null;
    return JsonUtil.toJsonString(paramObject).replace("\\", "").replace("\"{\"", "{\"").replace("\"}\"", "\"}").replace("\"[", "[").replace("]\"", "]");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.serialize.JsonSerializer
 * JD-Core Version:    0.6.2
 */