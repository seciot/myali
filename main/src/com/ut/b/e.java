package com.ut.b;

import android.util.Xml;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlSerializer;

class e
{
  public static final Object a(XmlPullParser paramXmlPullParser, String[] paramArrayOfString)
  {
    int i = paramXmlPullParser.getEventType();
    while (true)
    {
      if (i == 2)
        return b(paramXmlPullParser, paramArrayOfString);
      if (i == 3)
        throw new XmlPullParserException("Unexpected end tag at: " + paramXmlPullParser.getName());
      if (i == 4)
        throw new XmlPullParserException("Unexpected text: " + paramXmlPullParser.getText());
      try
      {
        int j = paramXmlPullParser.next();
        i = j;
        if (i == 1)
          throw new XmlPullParserException("Unexpected end of document");
      }
      catch (Exception localException)
      {
      }
    }
    throw new XmlPullParserException("Unexpected call next(): " + paramXmlPullParser.getName());
  }

  public static final HashMap a(InputStream paramInputStream)
  {
    XmlPullParser localXmlPullParser = Xml.newPullParser();
    localXmlPullParser.setInput(paramInputStream, null);
    return (HashMap)a(localXmlPullParser, new String[1]);
  }

  public static final HashMap a(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
  {
    HashMap localHashMap = new HashMap();
    int i = paramXmlPullParser.getEventType();
    if (i == 2)
    {
      localObject = b(paramXmlPullParser, paramArrayOfString);
      if (paramArrayOfString[0] != null)
        localHashMap.put(paramArrayOfString[0], localObject);
    }
    while (i != 3)
    {
      Object localObject;
      i = paramXmlPullParser.next();
      if (i != 1)
        break;
      throw new XmlPullParserException("Document ended before " + paramString + " end tag");
      throw new XmlPullParserException("Map value without name attribute: " + paramXmlPullParser.getName());
    }
    if (paramXmlPullParser.getName().equals(paramString))
      return localHashMap;
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }

  public static final void a(Object paramObject, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramObject == null)
    {
      paramXmlSerializer.startTag(null, "null");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    if ((paramObject instanceof String))
    {
      paramXmlSerializer.startTag(null, "string");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.text(paramObject.toString());
      paramXmlSerializer.endTag(null, "string");
      return;
    }
    String str;
    if ((paramObject instanceof Integer))
      str = "int";
    while (true)
    {
      paramXmlSerializer.startTag(null, str);
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.attribute(null, "value", paramObject.toString());
      paramXmlSerializer.endTag(null, str);
      return;
      if ((paramObject instanceof Long))
      {
        str = "long";
      }
      else if ((paramObject instanceof Float))
      {
        str = "float";
      }
      else if ((paramObject instanceof Double))
      {
        str = "double";
      }
      else
      {
        if (!(paramObject instanceof Boolean))
          break;
        str = "boolean";
      }
    }
    if ((paramObject instanceof byte[]))
    {
      a((byte[])paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof int[]))
    {
      a((int[])paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof Map))
    {
      a((Map)paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof List))
    {
      a((List)paramObject, paramString, paramXmlSerializer);
      return;
    }
    if ((paramObject instanceof CharSequence))
    {
      paramXmlSerializer.startTag(null, "string");
      if (paramString != null)
        paramXmlSerializer.attribute(null, "name", paramString);
      paramXmlSerializer.text(paramObject.toString());
      paramXmlSerializer.endTag(null, "string");
      return;
    }
    throw new RuntimeException("writeValueXml: unable to write value " + paramObject);
  }

  public static final void a(List paramList, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramList == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "list");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    int i = paramList.size();
    for (int j = 0; j < i; j++)
      a(paramList.get(j), null, paramXmlSerializer);
    paramXmlSerializer.endTag(null, "list");
  }

  public static final void a(Map paramMap, OutputStream paramOutputStream)
  {
    a locala = new a();
    locala.setOutput(paramOutputStream, "utf-8");
    locala.startDocument(null, Boolean.valueOf(true));
    locala.setFeature("http://xmlpull.org/v1/doc/features.html#indent-output", true);
    a(paramMap, null, locala);
    locala.endDocument();
  }

  public static final void a(Map paramMap, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramMap == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    Iterator localIterator = paramMap.entrySet().iterator();
    paramXmlSerializer.startTag(null, "map");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      a(localEntry.getValue(), (String)localEntry.getKey(), paramXmlSerializer);
    }
    paramXmlSerializer.endTag(null, "map");
  }

  public static final void a(byte[] paramArrayOfByte, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramArrayOfByte == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "byte-array");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    int i = paramArrayOfByte.length;
    paramXmlSerializer.attribute(null, "num", Integer.toString(i));
    StringBuilder localStringBuilder = new StringBuilder(2 * paramArrayOfByte.length);
    int j = 0;
    if (j < i)
    {
      int k = paramArrayOfByte[j];
      int m = k >> 4;
      int n;
      label121: int i1;
      if (m >= 10)
      {
        n = -10 + (m + 97);
        localStringBuilder.append(n);
        i1 = k & 0xFF;
        if (i1 < 10)
          break label178;
      }
      label178: for (int i2 = -10 + (i1 + 97); ; i2 = i1 + 48)
      {
        localStringBuilder.append(i2);
        j++;
        break;
        n = m + 48;
        break label121;
      }
    }
    paramXmlSerializer.text(localStringBuilder.toString());
    paramXmlSerializer.endTag(null, "byte-array");
  }

  public static final void a(int[] paramArrayOfInt, String paramString, XmlSerializer paramXmlSerializer)
  {
    if (paramArrayOfInt == null)
    {
      paramXmlSerializer.startTag(null, "null");
      paramXmlSerializer.endTag(null, "null");
      return;
    }
    paramXmlSerializer.startTag(null, "int-array");
    if (paramString != null)
      paramXmlSerializer.attribute(null, "name", paramString);
    int i = paramArrayOfInt.length;
    paramXmlSerializer.attribute(null, "num", Integer.toString(i));
    for (int j = 0; j < i; j++)
    {
      paramXmlSerializer.startTag(null, "item");
      paramXmlSerializer.attribute(null, "value", Integer.toString(paramArrayOfInt[j]));
      paramXmlSerializer.endTag(null, "item");
    }
    paramXmlSerializer.endTag(null, "int-array");
  }

  private static final Object b(XmlPullParser paramXmlPullParser, String[] paramArrayOfString)
  {
    String str1 = paramXmlPullParser.getAttributeValue(null, "name");
    String str2 = paramXmlPullParser.getName();
    boolean bool = str2.equals("null");
    Object localObject = null;
    if (bool);
    int i;
    label229: label502: 
    do
    {
      while (true)
      {
        i = paramXmlPullParser.next();
        if (i == 1)
          break label634;
        if (i != 3)
          break label542;
        if (!paramXmlPullParser.getName().equals(str2))
          break label502;
        paramArrayOfString[0] = str1;
        return localObject;
        if (str2.equals("string"))
        {
          String str3 = "";
          int j;
          do
            while (true)
            {
              j = paramXmlPullParser.next();
              if (j == 1)
                break label229;
              if (j == 3)
              {
                if (paramXmlPullParser.getName().equals("string"))
                {
                  paramArrayOfString[0] = str1;
                  return str3;
                }
                throw new XmlPullParserException("Unexpected end tag in <string>: " + paramXmlPullParser.getName());
              }
              if (j != 4)
                break;
              str3 = str3 + paramXmlPullParser.getText();
            }
          while (j != 2);
          throw new XmlPullParserException("Unexpected start tag in <string>: " + paramXmlPullParser.getName());
          throw new XmlPullParserException("Unexpected end of document in <string>");
        }
        if (str2.equals("int"))
        {
          localObject = Integer.valueOf(Integer.parseInt(paramXmlPullParser.getAttributeValue(null, "value")));
        }
        else if (str2.equals("long"))
        {
          localObject = Long.valueOf(paramXmlPullParser.getAttributeValue(null, "value"));
        }
        else if (str2.equals("float"))
        {
          localObject = new Float(paramXmlPullParser.getAttributeValue(null, "value"));
        }
        else if (str2.equals("double"))
        {
          localObject = new Double(paramXmlPullParser.getAttributeValue(null, "value"));
        }
        else
        {
          if (!str2.equals("boolean"))
            break;
          localObject = Boolean.valueOf(paramXmlPullParser.getAttributeValue(null, "value"));
        }
      }
      if (str2.equals("int-array"))
      {
        paramXmlPullParser.next();
        int[] arrayOfInt = c(paramXmlPullParser, "int-array", paramArrayOfString);
        paramArrayOfString[0] = str1;
        return arrayOfInt;
      }
      if (str2.equals("map"))
      {
        paramXmlPullParser.next();
        HashMap localHashMap = a(paramXmlPullParser, "map", paramArrayOfString);
        paramArrayOfString[0] = str1;
        return localHashMap;
      }
      if (str2.equals("list"))
      {
        paramXmlPullParser.next();
        ArrayList localArrayList = b(paramXmlPullParser, "list", paramArrayOfString);
        paramArrayOfString[0] = str1;
        return localArrayList;
      }
      throw new XmlPullParserException("Unknown tag: " + str2);
      throw new XmlPullParserException("Unexpected end tag in <" + str2 + ">: " + paramXmlPullParser.getName());
      if (i == 4)
        throw new XmlPullParserException("Unexpected text in <" + str2 + ">: " + paramXmlPullParser.getName());
    }
    while (i != 2);
    label542: throw new XmlPullParserException("Unexpected start tag in <" + str2 + ">: " + paramXmlPullParser.getName());
    label634: throw new XmlPullParserException("Unexpected end of document in <" + str2 + ">");
  }

  public static final ArrayList b(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramXmlPullParser.getEventType();
    if (i == 2)
      localArrayList.add(b(paramXmlPullParser, paramArrayOfString));
    while (i != 3)
    {
      i = paramXmlPullParser.next();
      if (i != 1)
        break;
      throw new XmlPullParserException("Document ended before " + paramString + " end tag");
    }
    if (paramXmlPullParser.getName().equals(paramString))
      return localArrayList;
    throw new XmlPullParserException("Expected " + paramString + " end tag at: " + paramXmlPullParser.getName());
  }

  // ERROR //
  public static final int[] c(XmlPullParser paramXmlPullParser, String paramString, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aconst_null
    //   2: ldc 238
    //   4: invokeinterface 255 3 0
    //   9: invokestatic 268	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   12: istore 5
    //   14: iload 5
    //   16: newarray int
    //   18: astore 6
    //   20: aload_0
    //   21: invokeinterface 14 1 0
    //   26: istore 7
    //   28: iconst_0
    //   29: istore 8
    //   31: iload 7
    //   33: istore 9
    //   35: iload 9
    //   37: iconst_2
    //   38: if_icmpne +158 -> 196
    //   41: aload_0
    //   42: invokeinterface 31 1 0
    //   47: ldc 251
    //   49: invokevirtual 86	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   52: ifeq +114 -> 166
    //   55: aload 6
    //   57: iload 8
    //   59: aload_0
    //   60: aconst_null
    //   61: ldc 121
    //   63: invokeinterface 255 3 0
    //   68: invokestatic 268	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   71: iastore
    //   72: aload_0
    //   73: invokeinterface 47 1 0
    //   78: istore 9
    //   80: iload 9
    //   82: iconst_1
    //   83: if_icmpne -48 -> 35
    //   86: new 19	org/xmlpull/v1/XmlPullParserException
    //   89: dup
    //   90: new 21	java/lang/StringBuilder
    //   93: dup
    //   94: ldc 78
    //   96: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   99: aload_1
    //   100: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc 80
    //   105: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   114: athrow
    //   115: astore 4
    //   117: new 19	org/xmlpull/v1/XmlPullParserException
    //   120: dup
    //   121: ldc_w 314
    //   124: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   127: athrow
    //   128: astore_3
    //   129: new 19	org/xmlpull/v1/XmlPullParserException
    //   132: dup
    //   133: ldc_w 316
    //   136: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   139: athrow
    //   140: astore 11
    //   142: new 19	org/xmlpull/v1/XmlPullParserException
    //   145: dup
    //   146: ldc_w 318
    //   149: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   152: athrow
    //   153: astore 10
    //   155: new 19	org/xmlpull/v1/XmlPullParserException
    //   158: dup
    //   159: ldc_w 320
    //   162: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   165: athrow
    //   166: new 19	org/xmlpull/v1/XmlPullParserException
    //   169: dup
    //   170: new 21	java/lang/StringBuilder
    //   173: dup
    //   174: ldc_w 322
    //   177: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_0
    //   181: invokeinterface 31 1 0
    //   186: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   195: athrow
    //   196: iload 9
    //   198: iconst_3
    //   199: if_icmpne -127 -> 72
    //   202: aload_0
    //   203: invokeinterface 31 1 0
    //   208: aload_1
    //   209: invokevirtual 86	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   212: ifeq +6 -> 218
    //   215: aload 6
    //   217: areturn
    //   218: aload_0
    //   219: invokeinterface 31 1 0
    //   224: ldc 251
    //   226: invokevirtual 86	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   229: ifeq +9 -> 238
    //   232: iinc 8 1
    //   235: goto -163 -> 72
    //   238: new 19	org/xmlpull/v1/XmlPullParserException
    //   241: dup
    //   242: new 21	java/lang/StringBuilder
    //   245: dup
    //   246: ldc 88
    //   248: invokespecial 27	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   251: aload_1
    //   252: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc 90
    //   257: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: aload_0
    //   261: invokeinterface 31 1 0
    //   266: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual 38	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   272: invokespecial 39	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   275: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   0	14	115	java/lang/NullPointerException
    //   0	14	128	java/lang/NumberFormatException
    //   55	72	140	java/lang/NullPointerException
    //   55	72	153	java/lang/NumberFormatException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.b.e
 * JD-Core Version:    0.6.2
 */