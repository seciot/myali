package com.aps;

public class k
{
  // ERROR //
  java.lang.String a(java.lang.String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +10 -> 11
    //   4: aload_1
    //   5: invokevirtual 22	java/lang/String:length	()I
    //   8: ifne +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: new 24	java/io/ByteArrayInputStream
    //   16: dup
    //   17: aload_1
    //   18: ldc 26
    //   20: invokevirtual 30	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   23: invokespecial 33	java/io/ByteArrayInputStream:<init>	([B)V
    //   26: astore_2
    //   27: new 35	com/aps/k$b
    //   30: dup
    //   31: aload_0
    //   32: aconst_null
    //   33: invokespecial 38	com/aps/k$b:<init>	(Lcom/aps/k;Lcom/aps/k$1;)V
    //   36: astore_3
    //   37: invokestatic 44	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   40: invokevirtual 48	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   43: aload_2
    //   44: aload_3
    //   45: invokevirtual 54	javax/xml/parsers/SAXParser:parse	(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    //   48: aload_2
    //   49: invokevirtual 59	java/io/InputStream:close	()V
    //   52: aload_3
    //   53: getfield 62	com/aps/k$b:a	Ljava/lang/String;
    //   56: areturn
    //   57: astore 7
    //   59: aconst_null
    //   60: astore_2
    //   61: goto -34 -> 27
    //   64: astore 6
    //   66: aload 6
    //   68: invokestatic 67	com/aps/n:a	(Ljava/lang/Throwable;)V
    //   71: goto -19 -> 52
    //   74: astore 5
    //   76: aload 5
    //   78: athrow
    //   79: astore 4
    //   81: goto -29 -> 52
    //
    // Exception table:
    //   from	to	target	type
    //   13	27	57	java/io/UnsupportedEncodingException
    //   37	52	64	java/lang/Exception
    //   37	52	74	finally
    //   66	71	74	finally
    //   37	52	79	org/xml/sax/SAXException
  }

  // ERROR //
  c b(java.lang.String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnull +10 -> 11
    //   4: aload_1
    //   5: invokevirtual 22	java/lang/String:length	()I
    //   8: ifne +5 -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: aload_1
    //   14: ldc 71
    //   16: invokevirtual 75	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   19: ifne -8 -> 11
    //   22: new 24	java/io/ByteArrayInputStream
    //   25: dup
    //   26: aload_1
    //   27: ldc 26
    //   29: invokevirtual 30	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   32: invokespecial 33	java/io/ByteArrayInputStream:<init>	([B)V
    //   35: astore_2
    //   36: invokestatic 44	javax/xml/parsers/SAXParserFactory:newInstance	()Ljavax/xml/parsers/SAXParserFactory;
    //   39: astore_3
    //   40: new 77	com/aps/k$a
    //   43: dup
    //   44: aload_0
    //   45: aconst_null
    //   46: invokespecial 78	com/aps/k$a:<init>	(Lcom/aps/k;Lcom/aps/k$1;)V
    //   49: astore 4
    //   51: aload_3
    //   52: invokevirtual 48	javax/xml/parsers/SAXParserFactory:newSAXParser	()Ljavax/xml/parsers/SAXParser;
    //   55: aload_2
    //   56: aload 4
    //   58: invokevirtual 54	javax/xml/parsers/SAXParser:parse	(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    //   61: aload_2
    //   62: invokevirtual 59	java/io/InputStream:close	()V
    //   65: aload 4
    //   67: getfield 81	com/aps/k$a:a	Lcom/aps/c;
    //   70: ldc 83
    //   72: invokevirtual 88	com/aps/c:a	(Ljava/lang/String;)V
    //   75: aload 4
    //   77: getfield 81	com/aps/k$a:a	Lcom/aps/c;
    //   80: invokestatic 91	com/aps/n:a	()J
    //   83: invokevirtual 94	com/aps/c:a	(J)V
    //   86: aload 4
    //   88: getfield 81	com/aps/k$a:a	Lcom/aps/c;
    //   91: areturn
    //   92: astore 7
    //   94: aconst_null
    //   95: astore_2
    //   96: goto -60 -> 36
    //   99: astore 6
    //   101: aload 6
    //   103: athrow
    //   104: astore 5
    //   106: goto -41 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   22	36	92	java/io/UnsupportedEncodingException
    //   51	65	99	finally
    //   51	65	104	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.k
 * JD-Core Version:    0.6.2
 */