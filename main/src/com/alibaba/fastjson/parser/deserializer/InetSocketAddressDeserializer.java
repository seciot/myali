package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import java.lang.reflect.Type;
import java.net.InetAddress;
import java.net.InetSocketAddress;

public class InetSocketAddressDeserializer
  implements ObjectDeserializer
{
  public static final InetSocketAddressDeserializer instance = new InetSocketAddressDeserializer();

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    Object localObject1 = null;
    JSONLexer localJSONLexer = paramDefaultJSONParser.getLexer();
    if (localJSONLexer.token() == 8)
    {
      localJSONLexer.nextToken();
      return null;
    }
    paramDefaultJSONParser.accept(12);
    int i = 0;
    String str = localJSONLexer.symbol(paramDefaultJSONParser.getSymbolTable());
    localJSONLexer.nextToken();
    Object localObject2;
    int j;
    if (str.equals("address"))
    {
      paramDefaultJSONParser.accept(17);
      InetAddress localInetAddress = (InetAddress)paramDefaultJSONParser.parseObject(InetAddress.class);
      int k = i;
      localObject2 = localInetAddress;
      j = k;
    }
    while (true)
    {
      if (localJSONLexer.token() != 16)
        break label210;
      localJSONLexer.nextToken();
      localObject1 = localObject2;
      i = j;
      break;
      if (str.equals("port"))
      {
        paramDefaultJSONParser.accept(17);
        if (localJSONLexer.token() != 2)
          throw new JSONException("port is not int");
        j = localJSONLexer.intValue();
        localJSONLexer.nextToken();
        localObject2 = localObject1;
      }
      else
      {
        paramDefaultJSONParser.accept(17);
        paramDefaultJSONParser.parse();
        j = i;
        localObject2 = localObject1;
      }
    }
    label210: paramDefaultJSONParser.accept(13);
    return new InetSocketAddress((InetAddress)localObject2, j);
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.InetSocketAddressDeserializer
 * JD-Core Version:    0.6.2
 */