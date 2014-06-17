package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;

public class ThrowableDeserializer extends JavaBeanDeserializer
{
  public ThrowableDeserializer(ParserConfig paramParserConfig, Class<?> paramClass)
  {
    super(paramParserConfig, paramClass);
  }

  private Throwable createException(String paramString, Throwable paramThrowable, Class<?> paramClass)
  {
    Object localObject1 = null;
    Object localObject2 = null;
    Constructor[] arrayOfConstructor = paramClass.getConstructors();
    int i = arrayOfConstructor.length;
    int j = 0;
    Object localObject3 = null;
    Object localObject4;
    Object localObject5;
    if (j < i)
    {
      localObject4 = arrayOfConstructor[j];
      if (((Constructor)localObject4).getParameterTypes().length == 0)
      {
        Object localObject6 = localObject2;
        localObject5 = localObject4;
        localObject4 = localObject6;
      }
    }
    while (true)
    {
      j++;
      localObject1 = localObject5;
      localObject2 = localObject4;
      break;
      if ((((Constructor)localObject4).getParameterTypes().length == 1) && (localObject4.getParameterTypes()[0] == String.class))
      {
        localObject5 = localObject1;
      }
      else if ((((Constructor)localObject4).getParameterTypes().length == 2) && (localObject4.getParameterTypes()[0] == String.class) && (localObject4.getParameterTypes()[1] == Throwable.class))
      {
        localObject3 = localObject4;
        localObject4 = localObject2;
        localObject5 = localObject1;
        continue;
        if (localObject3 != null)
          return (Throwable)localObject3.newInstance(new Object[] { paramString, paramThrowable });
        if (localObject2 != null)
          return (Throwable)localObject2.newInstance(new Object[] { paramString });
        if (localObject1 != null)
          return (Throwable)localObject1.newInstance(new Object[0]);
        return null;
      }
      else
      {
        localObject4 = localObject2;
        localObject5 = localObject1;
      }
    }
  }

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    Object localObject1;
    Class localClass1;
    if (paramDefaultJSONParser.getResolveStatus() == 2)
    {
      paramDefaultJSONParser.setResolveStatus(0);
      localObject1 = null;
      if ((paramType == null) || (!(paramType instanceof Class)))
        break label576;
      localClass1 = (Class)paramType;
      if (!Throwable.class.isAssignableFrom(localClass1))
        break label576;
    }
    while (true)
    {
      Object localObject2 = null;
      Object localObject3 = null;
      HashMap localHashMap = new HashMap();
      Object localObject4 = localClass1;
      while (true)
      {
        label71: String str1 = localJSONScanner.scanSymbol(paramDefaultJSONParser.getSymbolTable());
        label104: Object localObject9;
        if (str1 == null)
          if (localJSONScanner.token() == 13)
          {
            localJSONScanner.nextToken(16);
            if (localObject4 != null)
              break label510;
            localObject9 = new Exception((String)localObject2, (Throwable)localObject1);
          }
        label122: Object localObject7;
        Object localObject8;
        Object localObject6;
        Object localObject5;
        while (true)
        {
          if (localObject3 != null)
            ((Throwable)localObject9).setStackTrace((StackTraceElement[])localObject3);
          return localObject9;
          if (localJSONScanner.token() == 12)
            break;
          throw new JSONException("syntax error");
          if ((localJSONScanner.token() == 16) && (localJSONScanner.isEnabled(Feature.AllowArbitraryCommas)))
            break label71;
          localJSONScanner.nextTokenWithColon(4);
          if ("@type".equals(str1))
            if (localJSONScanner.token() == 4)
            {
              Class localClass2 = TypeUtils.loadClass(localJSONScanner.stringVal());
              localJSONScanner.nextToken(16);
              localObject7 = localObject1;
              localObject8 = localObject2;
              Object localObject12 = localObject3;
              localObject6 = localClass2;
              localObject5 = localObject12;
            }
          while (true)
            if (localJSONScanner.token() != 16)
            {
              if (localJSONScanner.token() == 13)
              {
                localJSONScanner.nextToken(16);
                localObject2 = localObject8;
                localObject1 = localObject7;
                localObject4 = localObject6;
                localObject3 = localObject5;
                break label104;
                throw new JSONException("syntax error");
                if ("message".equals(str1))
                {
                  if (localJSONScanner.token() == 8);
                  for (String str2 = null; ; str2 = localJSONScanner.stringVal())
                  {
                    localJSONScanner.nextToken();
                    Object localObject11 = localObject3;
                    localObject6 = localObject4;
                    localObject7 = localObject1;
                    localObject8 = str2;
                    localObject5 = localObject11;
                    break;
                    if (localJSONScanner.token() != 4)
                      break label366;
                  }
                  label366: throw new JSONException("syntax error");
                }
                if ("cause".equals(str1))
                {
                  Throwable localThrowable = (Throwable)deserialze(paramDefaultJSONParser, null, "cause");
                  localObject8 = localObject2;
                  Object localObject10 = localObject4;
                  localObject7 = localThrowable;
                  localObject5 = localObject3;
                  localObject6 = localObject10;
                  continue;
                }
                if ("stackTrace".equals(str1))
                {
                  localObject5 = (StackTraceElement[])paramDefaultJSONParser.parseObject([Ljava.lang.StackTraceElement.class);
                  localObject6 = localObject4;
                  localObject7 = localObject1;
                  localObject8 = localObject2;
                  continue;
                }
                localHashMap.put(str1, paramDefaultJSONParser.parse());
                localObject5 = localObject3;
                localObject6 = localObject4;
                localObject7 = localObject1;
                localObject8 = localObject2;
                continue;
              }
              localObject2 = localObject8;
              localObject1 = localObject7;
              localObject4 = localObject6;
              localObject3 = localObject5;
              break;
              try
              {
                label510: localObject9 = createException((String)localObject2, (Throwable)localObject1, (Class)localObject4);
                if (localObject9 != null)
                  break label122;
                localObject9 = new Exception((String)localObject2, (Throwable)localObject1);
              }
              catch (Exception localException)
              {
                throw new JSONException("create instance error", localException);
              }
            }
        }
        localObject2 = localObject8;
        localObject1 = localObject7;
        localObject4 = localObject6;
        localObject3 = localObject5;
      }
      label576: localClass1 = null;
    }
  }

  public int getFastMatchToken()
  {
    return 12;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer
 * JD-Core Version:    0.6.2
 */