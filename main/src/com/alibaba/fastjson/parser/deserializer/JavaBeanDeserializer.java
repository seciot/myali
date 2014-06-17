package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.DefaultJSONParser.ResolveTask;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.DeserializeBeanInfo;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class JavaBeanDeserializer
  implements ObjectDeserializer
{
  private DeserializeBeanInfo beanInfo;
  private final Class<?> clazz;
  private final Map<String, FieldDeserializer> feildDeserializerMap = new IdentityHashMap();
  private final List<FieldDeserializer> fieldDeserializers = new ArrayList();
  private final Type type;

  public JavaBeanDeserializer(ParserConfig paramParserConfig, Class<?> paramClass)
  {
    this(paramParserConfig, paramClass, paramClass);
  }

  public JavaBeanDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, Type paramType)
  {
    this.clazz = paramClass;
    this.type = paramType;
    this.beanInfo = DeserializeBeanInfo.computeSetters(paramClass, paramType);
    Iterator localIterator = this.beanInfo.getFieldList().iterator();
    while (localIterator.hasNext())
      addFieldDeserializer(paramParserConfig, paramClass, (FieldInfo)localIterator.next());
  }

  public JavaBeanDeserializer(DeserializeBeanInfo paramDeserializeBeanInfo)
  {
    this.beanInfo = paramDeserializeBeanInfo;
    this.clazz = paramDeserializeBeanInfo.getClazz();
    this.type = paramDeserializeBeanInfo.getType();
  }

  private void addFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    FieldDeserializer localFieldDeserializer = createFieldDeserializer(paramParserConfig, paramClass, paramFieldInfo);
    this.feildDeserializerMap.put(paramFieldInfo.getName().intern(), localFieldDeserializer);
    this.fieldDeserializers.add(localFieldDeserializer);
  }

  public FieldDeserializer createFieldDeserializer(ParserConfig paramParserConfig, Class<?> paramClass, FieldInfo paramFieldInfo)
  {
    return paramParserConfig.createFieldDeserializer(paramParserConfig, paramClass, paramFieldInfo);
  }

  public Object createInstance(DefaultJSONParser paramDefaultJSONParser, Type paramType)
  {
    Object localObject2;
    if (((paramType instanceof Class)) && (this.clazz.isInterface()))
    {
      Class localClass = (Class)paramType;
      ClassLoader localClassLoader = Thread.currentThread().getContextClassLoader();
      JSONObject localJSONObject = new JSONObject();
      localObject2 = Proxy.newProxyInstance(localClassLoader, new Class[] { localClass }, localJSONObject);
    }
    while (true)
    {
      return localObject2;
      if (this.beanInfo.getDefaultConstructor() == null)
        return null;
      try
      {
        Constructor localConstructor = this.beanInfo.getDefaultConstructor();
        Object localObject3;
        if (localConstructor.getParameterTypes().length == 0)
          localObject3 = localConstructor.newInstance(new Object[0]);
        Object localObject1;
        for (localObject2 = localObject3; paramDefaultJSONParser.isEnabled(Feature.InitStringFieldAsEmpty); localObject2 = localObject1)
        {
          Iterator localIterator = this.beanInfo.getFieldList().iterator();
          while (localIterator.hasNext())
          {
            FieldInfo localFieldInfo = (FieldInfo)localIterator.next();
            if (localFieldInfo.getFieldClass() == String.class)
              try
              {
                localFieldInfo.set(localObject2, "");
              }
              catch (Exception localException2)
              {
                throw new JSONException("create instance error, class " + this.clazz.getName(), localException2);
              }
          }
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = paramDefaultJSONParser.getContext().getObject();
          localObject1 = localConstructor.newInstance(arrayOfObject);
        }
      }
      catch (Exception localException1)
      {
        throw new JSONException("create instance error, class " + this.clazz.getName(), localException1);
      }
    }
  }

  public <T> T deserialze(DefaultJSONParser paramDefaultJSONParser, Type paramType, Object paramObject)
  {
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    if (localJSONScanner.token() == 8)
    {
      localJSONScanner.nextToken(16);
      return null;
    }
    ParseContext localParseContext1 = paramDefaultJSONParser.getContext();
    Object localObject1 = null;
    Object localObject2 = null;
    HashMap localHashMap = null;
    try
    {
      if (localJSONScanner.token() == 13)
      {
        localJSONScanner.nextToken(16);
        Object localObject19 = createInstance(paramDefaultJSONParser, paramType);
        paramDefaultJSONParser.setContext(localParseContext1);
        return localObject19;
      }
      int i = localJSONScanner.token();
      localObject2 = null;
      localObject1 = null;
      if (i == 12)
        break label168;
      int j = localJSONScanner.token();
      localObject2 = null;
      localObject1 = null;
      if (j == 16)
        break label168;
      throw new JSONException("syntax error, expect {, actual " + localJSONScanner.tokenName());
    }
    finally
    {
    }
    if (localObject1 != null)
      localObject1.setObject(localObject2);
    paramDefaultJSONParser.setContext(localParseContext1);
    throw localObject3;
    label168: if (paramDefaultJSONParser.getResolveStatus() == 2)
      paramDefaultJSONParser.setResolveStatus(0);
    Object localObject7 = null;
    label184: String str1;
    label221: label628: String str3;
    while (true)
    {
      Object localObject8;
      try
      {
        str1 = localJSONScanner.scanSymbol(paramDefaultJSONParser.getSymbolTable());
        if (str1 == null)
        {
          if (localJSONScanner.token() == 13)
          {
            localJSONScanner.nextToken(16);
            localObject1 = localObject7;
            if (localObject2 != null)
              break label1215;
            if (localHashMap != null)
              break label982;
            Object localObject16 = createInstance(paramDefaultJSONParser, paramType);
            if (localObject1 != null)
              localObject1.setObject(localObject16);
            paramDefaultJSONParser.setContext(localParseContext1);
            return localObject16;
          }
          if ((localJSONScanner.token() == 16) && (paramDefaultJSONParser.isEnabled(Feature.AllowArbitraryCommas)))
            continue;
        }
        if ("$ref" != str1)
          break label628;
        localJSONScanner.nextTokenWithColon(4);
        if (localJSONScanner.token() == 4)
        {
          String str2 = localJSONScanner.stringVal();
          if ("@".equals(str2))
          {
            Object localObject11 = localParseContext1.getObject();
            localObject8 = localObject11;
            Object localObject10;
            try
            {
              localJSONScanner.nextToken(13);
              if (localJSONScanner.token() == 13)
                break label589;
              throw new JSONException("illegal ref");
            }
            finally
            {
              localObject1 = localObject7;
              localObject10 = localObject8;
              Object localObject4 = localObject9;
            }
            break;
          }
          if ("..".equals(str2))
          {
            ParseContext localParseContext4 = localParseContext1.getParentContext();
            if (localParseContext4.getObject() != null)
            {
              localObject8 = localParseContext4.getObject();
              continue;
            }
            paramDefaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(localParseContext4, str2));
            paramDefaultJSONParser.setResolveStatus(1);
            localObject8 = localObject2;
            continue;
          }
          if ("$".equals(str2))
          {
            ParseContext localParseContext2 = localParseContext1;
            if (localParseContext2.getParentContext() != null)
            {
              localParseContext2 = localParseContext2.getParentContext();
              continue;
            }
            if (localParseContext2.getObject() != null)
            {
              localObject8 = localParseContext2.getObject();
              continue;
            }
            paramDefaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(localParseContext2, str2));
            paramDefaultJSONParser.setResolveStatus(1);
            localObject8 = localObject2;
            continue;
          }
          paramDefaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(localParseContext1, str2));
          paramDefaultJSONParser.setResolveStatus(1);
          localObject8 = localObject2;
          continue;
        }
        throw new JSONException("illegal ref, " + JSONToken.name(localJSONScanner.token()));
      }
      finally
      {
        localObject1 = localObject7;
      }
      break;
      label589: localJSONScanner.nextToken(16);
      ParseContext localParseContext3 = paramDefaultJSONParser.setContext(localParseContext1, localObject8, paramObject);
      if (localParseContext3 != null)
        localParseContext3.setObject(localObject8);
      paramDefaultJSONParser.setContext(localParseContext1);
      return localObject8;
      if ("@type" != str1)
        break label768;
      localJSONScanner.nextTokenWithColon(4);
      if (localJSONScanner.token() != 4)
        break label757;
      str3 = localJSONScanner.stringVal();
      localJSONScanner.nextToken(16);
      if ((!(paramType instanceof Class)) || (!str3.equals(((Class)paramType).getName())))
        break label709;
      if (localJSONScanner.token() == 13)
      {
        localJSONScanner.nextToken();
        localObject1 = localObject7;
      }
    }
    label709: Class localClass = TypeUtils.loadClass(str3);
    Object localObject12 = paramDefaultJSONParser.getConfig().getDeserializer(localClass).deserialze(paramDefaultJSONParser, localClass, paramObject);
    if (localObject7 != null)
      localObject7.setObject(localObject2);
    paramDefaultJSONParser.setContext(localParseContext1);
    return localObject12;
    label757: throw new JSONException("syntax error");
    label768: Object localObject17;
    if ((localObject2 == null) && (localHashMap == null))
    {
      localObject2 = createInstance(paramDefaultJSONParser, paramType);
      if (localObject2 == null)
        localHashMap = new HashMap(this.fieldDeserializers.size());
      ParseContext localParseContext5 = paramDefaultJSONParser.setContext(localParseContext1, localObject2, paramObject);
      localObject17 = localParseContext5;
    }
    for (Object localObject18 = localObject2; ; localObject18 = localObject2)
    {
      try
      {
        if (!parseField(paramDefaultJSONParser, str1, localObject18, paramType, localHashMap))
        {
          if (localJSONScanner.token() != 13)
            break label1222;
          localJSONScanner.nextToken();
          localObject2 = localObject18;
          localObject1 = localObject17;
          break label221;
        }
        if (localJSONScanner.token() == 16)
          break label1222;
        if (localJSONScanner.token() == 13)
        {
          localJSONScanner.nextToken(16);
          localObject2 = localObject18;
          localObject1 = localObject17;
          break label221;
        }
        if ((localJSONScanner.token() != 18) && (localJSONScanner.token() != 1))
          break label971;
        throw new JSONException("syntax error, unexpect token " + JSONToken.name(localJSONScanner.token()));
      }
      finally
      {
        localObject2 = localObject18;
        localObject1 = localObject17;
      }
      break;
      label971: localObject2 = localObject18;
      localObject7 = localObject17;
      break label184;
      label982: List localList = this.beanInfo.getFieldList();
      int k = localList.size();
      Object[] arrayOfObject = new Object[k];
      for (int m = 0; m < k; m++)
        arrayOfObject[m] = localHashMap.get(((FieldInfo)localList.get(m)).getName());
      Constructor localConstructor = this.beanInfo.getCreatorConstructor();
      if (localConstructor != null);
      while (true)
      {
        Object localObject13;
        try
        {
          Object localObject15 = this.beanInfo.getCreatorConstructor().newInstance(arrayOfObject);
          localObject13 = localObject15;
          if (localObject1 != null)
            localObject1.setObject(localObject13);
          paramDefaultJSONParser.setContext(localParseContext1);
          return localObject13;
        }
        catch (Exception localException2)
        {
          throw new JSONException("create instance error, " + this.beanInfo.getCreatorConstructor().toGenericString(), localException2);
        }
        Method localMethod = this.beanInfo.getFactoryMethod();
        if (localMethod != null)
          try
          {
            Object localObject14 = this.beanInfo.getFactoryMethod().invoke(null, arrayOfObject);
            localObject13 = localObject14;
          }
          catch (Exception localException1)
          {
            throw new JSONException("create factory method error, " + this.beanInfo.getFactoryMethod().toString(), localException1);
          }
        else
          label1215: localObject13 = localObject2;
      }
      label1222: localObject2 = localObject18;
      localObject7 = localObject17;
      break label184;
      localObject17 = localObject7;
    }
  }

  public Class<?> getClazz()
  {
    return this.clazz;
  }

  public int getFastMatchToken()
  {
    return 12;
  }

  public Map<String, FieldDeserializer> getFieldDeserializerMap()
  {
    return this.feildDeserializerMap;
  }

  public Type getType()
  {
    return this.type;
  }

  public boolean parseField(DefaultJSONParser paramDefaultJSONParser, String paramString, Object paramObject, Type paramType, Map<String, Object> paramMap)
  {
    JSONScanner localJSONScanner = (JSONScanner)paramDefaultJSONParser.getLexer();
    FieldDeserializer localFieldDeserializer = (FieldDeserializer)this.feildDeserializerMap.get(paramString);
    if (localFieldDeserializer == null)
    {
      Iterator localIterator = this.feildDeserializerMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((String)localEntry.getKey()).equalsIgnoreCase(paramString))
          localFieldDeserializer = (FieldDeserializer)localEntry.getValue();
      }
    }
    if (localFieldDeserializer == null)
    {
      if (!paramDefaultJSONParser.isEnabled(Feature.IgnoreNotMatch))
        throw new JSONException("setter not found, class " + this.clazz.getName() + ", property " + paramString);
      localJSONScanner.nextTokenWithColon();
      paramDefaultJSONParser.parse();
      return false;
    }
    localJSONScanner.nextTokenWithColon(localFieldDeserializer.getFastMatchToken());
    localFieldDeserializer.parseField(paramDefaultJSONParser, paramObject, paramType, paramMap);
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer
 * JD-Core Version:    0.6.2
 */