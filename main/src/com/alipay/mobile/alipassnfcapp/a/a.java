package com.alipay.mobile.alipassnfcapp.a;

public final class a
{
  // ERROR //
  public static String getBundle(String paramString)
  {
    // Byte code:
    //   0: bipush 16
    //   2: newarray byte
    //   4: astore_1
    //   5: aload_0
    //   6: invokevirtual 16	java/lang/String:length	()I
    //   9: bipush 16
    //   11: if_icmpgt +207 -> 218
    //   14: aload_0
    //   15: invokevirtual 16	java/lang/String:length	()I
    //   18: istore 18
    //   20: iload 18
    //   22: bipush 16
    //   24: if_icmpge +46 -> 70
    //   27: iload 18
    //   29: bipush 16
    //   31: if_icmpge +39 -> 70
    //   34: new 18	java/lang/StringBuffer
    //   37: dup
    //   38: invokespecial 22	java/lang/StringBuffer:<init>	()V
    //   41: astore 21
    //   43: aload 21
    //   45: aload_0
    //   46: invokevirtual 26	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   49: ldc 28
    //   51: invokevirtual 26	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   54: pop
    //   55: aload 21
    //   57: invokevirtual 32	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   60: astore_0
    //   61: aload_0
    //   62: invokevirtual 16	java/lang/String:length	()I
    //   65: istore 18
    //   67: goto -40 -> 27
    //   70: aload_0
    //   71: ldc 34
    //   73: invokevirtual 38	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   76: astore 20
    //   78: aload 20
    //   80: astore 5
    //   82: ldc 40
    //   84: invokevirtual 43	java/lang/String:getBytes	()[B
    //   87: astore 7
    //   89: new 45	java/security/SecureRandom
    //   92: dup
    //   93: invokespecial 46	java/security/SecureRandom:<init>	()V
    //   96: astore 8
    //   98: new 48	javax/crypto/spec/DESKeySpec
    //   101: dup
    //   102: aload 7
    //   104: invokespecial 51	javax/crypto/spec/DESKeySpec:<init>	([B)V
    //   107: astore 9
    //   109: ldc 53
    //   111: invokestatic 59	javax/crypto/SecretKeyFactory:getInstance	(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    //   114: aload 9
    //   116: invokevirtual 63	javax/crypto/SecretKeyFactory:generateSecret	(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    //   119: astore 10
    //   121: ldc 53
    //   123: invokestatic 68	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   126: astore 11
    //   128: aload 11
    //   130: iconst_1
    //   131: aload 10
    //   133: aload 8
    //   135: invokevirtual 72	javax/crypto/Cipher:init	(ILjava/security/Key;Ljava/security/SecureRandom;)V
    //   138: aload 11
    //   140: aload 5
    //   142: invokevirtual 76	javax/crypto/Cipher:doFinal	([B)[B
    //   145: astore 12
    //   147: new 12	java/lang/String
    //   150: dup
    //   151: invokespecial 77	java/lang/String:<init>	()V
    //   154: astore 13
    //   156: iconst_0
    //   157: istore 14
    //   159: iload 14
    //   161: aload 12
    //   163: arraylength
    //   164: if_icmpge +154 -> 318
    //   167: iconst_1
    //   168: anewarray 4	java/lang/Object
    //   171: astore 15
    //   173: aload 15
    //   175: iconst_0
    //   176: aload 12
    //   178: iload 14
    //   180: baload
    //   181: invokestatic 83	java/lang/Byte:valueOf	(B)Ljava/lang/Byte;
    //   184: aastore
    //   185: aload 13
    //   187: ldc 85
    //   189: aload 15
    //   191: invokestatic 89	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   194: invokevirtual 92	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   197: astore 13
    //   199: iinc 14 1
    //   202: goto -43 -> 159
    //   205: astore 19
    //   207: aload 19
    //   209: invokevirtual 95	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   212: aload_1
    //   213: astore 5
    //   215: goto -133 -> 82
    //   218: aload_0
    //   219: invokestatic 98	com/alipay/mobile/alipassnfcapp/a/a:b	(Ljava/lang/String;)Ljava/lang/String;
    //   222: invokevirtual 101	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   225: astore_2
    //   226: bipush 16
    //   228: newarray char
    //   230: astore_3
    //   231: iconst_0
    //   232: istore 4
    //   234: iload 4
    //   236: bipush 16
    //   238: if_icmpge +93 -> 331
    //   241: ldc 103
    //   243: aload_2
    //   244: iload 4
    //   246: iconst_2
    //   247: imul
    //   248: invokevirtual 107	java/lang/String:charAt	(I)C
    //   251: invokevirtual 111	java/lang/String:indexOf	(I)I
    //   254: istore 16
    //   256: ldc 103
    //   258: aload_2
    //   259: iconst_1
    //   260: iload 4
    //   262: iconst_2
    //   263: imul
    //   264: iadd
    //   265: invokevirtual 107	java/lang/String:charAt	(I)C
    //   268: invokevirtual 111	java/lang/String:indexOf	(I)I
    //   271: istore 17
    //   273: iload 16
    //   275: iconst_m1
    //   276: if_icmpeq +9 -> 285
    //   279: iload 17
    //   281: iconst_m1
    //   282: if_icmpne +5 -> 287
    //   285: aconst_null
    //   286: areturn
    //   287: aload_3
    //   288: iload 4
    //   290: sipush 255
    //   293: iload 17
    //   295: iload 16
    //   297: iconst_4
    //   298: ishl
    //   299: ior
    //   300: iand
    //   301: i2c
    //   302: castore
    //   303: aload_1
    //   304: iload 4
    //   306: aload_3
    //   307: iload 4
    //   309: caload
    //   310: i2b
    //   311: bastore
    //   312: iinc 4 1
    //   315: goto -81 -> 234
    //   318: aload 13
    //   320: iconst_0
    //   321: bipush 32
    //   323: invokevirtual 115	java/lang/String:substring	(II)Ljava/lang/String;
    //   326: areturn
    //   327: astore 6
    //   329: aconst_null
    //   330: areturn
    //   331: aload_1
    //   332: astore 5
    //   334: goto -252 -> 82
    //
    // Exception table:
    //   from	to	target	type
    //   70	78	205	java/io/UnsupportedEncodingException
    //   82	147	327	java/lang/Exception
  }

  private static String dexopt(String paramString)
  {
    int i = paramString.length();
    if (i < 32)
      while (i < 32)
      {
        StringBuffer localStringBuffer = new StringBuffer();
        localStringBuffer.append("0").append(paramString);
        paramString = localStringBuffer.toString();
        i = paramString.length();
      }
    return paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.a.a
 * JD-Core Version:    0.6.2
 */