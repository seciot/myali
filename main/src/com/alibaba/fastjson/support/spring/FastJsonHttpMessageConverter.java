package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.serializer.SerializerFeature;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.converter.AbstractHttpMessageConverter;

public class FastJsonHttpMessageConverter extends AbstractHttpMessageConverter<Object>
{
  public static final Charset UTF8 = Charset.forName("UTF-8");
  private Charset charset = UTF8;
  private SerializerFeature[] serializerFeature;

  protected Object readInternal(Class<Object> paramClass, HttpInputMessage paramHttpInputMessage)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    InputStream localInputStream = paramHttpInputMessage.getBody();
    byte[] arrayOfByte1 = new byte[1024];
    while (true)
    {
      int i = localInputStream.read(arrayOfByte1);
      if (i == -1)
        break;
      if (i > 0)
        localByteArrayOutputStream.write(arrayOfByte1, 0, i);
    }
    byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    if (this.charset == UTF8)
      return JSON.parseObject(arrayOfByte2, paramClass, new Feature[0]);
    return JSON.parseObject(arrayOfByte2, 0, arrayOfByte2.length, this.charset.newDecoder(), paramClass, new Feature[0]);
  }

  protected boolean supports(Class<? extends Object> paramClass)
  {
    return true;
  }

  protected void writeInternal(Object paramObject, HttpOutputMessage paramHttpOutputMessage)
  {
    OutputStream localOutputStream = paramHttpOutputMessage.getBody();
    byte[] arrayOfByte;
    if (this.charset == UTF8)
    {
      if (this.serializerFeature != null);
      for (arrayOfByte = JSON.toJSONBytes(paramObject, this.serializerFeature); ; arrayOfByte = JSON.toJSONBytes(paramObject, new SerializerFeature[0]))
      {
        localOutputStream.write(arrayOfByte);
        return;
      }
    }
    if (this.serializerFeature != null);
    for (String str = JSON.toJSONString(paramObject, this.serializerFeature); ; str = JSON.toJSONString(paramObject))
    {
      arrayOfByte = str.getBytes(this.charset);
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter
 * JD-Core Version:    0.6.2
 */