package com.alipay.mobile.common.rpc.protocol.json;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alipay.mobile.common.rpc.protocol.AbstractSerializer;
import java.util.ArrayList;
import org.apache.http.message.BasicNameValuePair;

public class JsonSerializer extends AbstractSerializer
{
  public static final String VERSION = "1.0.0";
  private int a;
  private Object b;

  public JsonSerializer(int paramInt, String paramString, Object paramObject)
  {
    super(paramString, paramObject);
    this.a = paramInt;
  }

  public int getId()
  {
    return this.a;
  }

  public Object packet()
  {
    ArrayList localArrayList = new ArrayList();
    if (this.b != null)
      localArrayList.add(new BasicNameValuePair("extParam", JSON.toJSONString(this.b)));
    localArrayList.add(new BasicNameValuePair("operationType", this.mOperationType));
    localArrayList.add(new BasicNameValuePair("id", this.a));
    new StringBuilder("mParams is:").append(this.mParams).toString();
    if (this.mParams == null);
    Object localObject;
    SerializerFeature[] arrayOfSerializerFeature;
    for (String str = "[]"; ; str = JSON.toJSONString(localObject, arrayOfSerializerFeature))
    {
      localArrayList.add(new BasicNameValuePair("requestData", str));
      return localArrayList;
      localObject = this.mParams;
      arrayOfSerializerFeature = new SerializerFeature[1];
      arrayOfSerializerFeature[0] = SerializerFeature.DisableCircularReferenceDetect;
    }
  }

  public void setExtParam(Object paramObject)
  {
    this.b = paramObject;
  }

  public void setId(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.protocol.json.JsonSerializer
 * JD-Core Version:    0.6.2
 */