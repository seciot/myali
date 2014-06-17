package com.alipay.mobile.common.rpc.protocol.json;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.Feature;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.protocol.AbstractDeserializer;
import java.lang.reflect.Type;

public class JsonDeserializer extends AbstractDeserializer
{
  public JsonDeserializer(Type paramType, String paramString)
  {
    super(paramType, paramString);
  }

  public Object parser()
  {
    JSONObject localJSONObject;
    Integer localInteger;
    try
    {
      localJSONObject = JSON.parseObject(this.mData);
      int i = localJSONObject.getIntValue("resultStatus");
      String str2 = localJSONObject.getString("tips");
      if (i != 1000)
        throw new RpcException(Integer.valueOf(i), str2);
    }
    catch (JSONException localJSONException)
    {
      localInteger = Integer.valueOf(10);
      if ("response  =" + this.mData + ":" + localJSONException != null);
    }
    for (String str1 = ""; ; str1 = localJSONException.getMessage())
    {
      throw new RpcException(localInteger, str1);
      if (this.mType == String.class)
        return localJSONObject.getObject("result", String.class);
      Object localObject = JSON.parseObject(localJSONObject.getString("result"), this.mType, new Feature[0]);
      return localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.protocol.json.JsonDeserializer
 * JD-Core Version:    0.6.2
 */