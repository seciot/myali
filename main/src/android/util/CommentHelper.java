package android.util;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.common.utils.BundleUtil;

public class CommentHelper
{
  private static String a;

  private static String a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = { 80, 75, 5, 6 };
    int i = -22 + Math.min(paramArrayOfByte.length, paramInt);
    if (i >= 0)
    {
      int j = 0;
      if (j < arrayOfByte.length)
        if (paramArrayOfByte[(i + j)] == arrayOfByte[j]);
      for (int k = 0; ; k = 1)
      {
        if (k != 0)
        {
          int m = paramArrayOfByte[(i + 20)];
          int n = paramArrayOfByte[(i + 21)];
          if (m >= 0)
            label90: if (n < 0)
              break label136;
          while (true)
          {
            int i1 = m + n * 256;
            return new String(paramArrayOfByte, i + 22, i1);
            j++;
            break;
            m += 256;
            break label90;
            label136: n += 256;
          }
        }
        i--;
        break;
      }
    }
    return null;
  }

  // ERROR //
  public static String extractZipComment(String paramString)
  {
    // Byte code:
    //   0: getstatic 34	android/util/CommentHelper:a	Ljava/lang/String;
    //   3: invokestatic 40	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifne +7 -> 13
    //   9: getstatic 34	android/util/CommentHelper:a	Ljava/lang/String;
    //   12: areturn
    //   13: new 42	java/io/File
    //   16: dup
    //   17: aload_0
    //   18: invokespecial 45	java/io/File:<init>	(Ljava/lang/String;)V
    //   21: astore_1
    //   22: aload_1
    //   23: invokevirtual 49	java/io/File:length	()J
    //   26: l2i
    //   27: istore_2
    //   28: new 51	java/io/FileInputStream
    //   31: dup
    //   32: aload_1
    //   33: invokespecial 54	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   36: astore_3
    //   37: iload_2
    //   38: ldc 55
    //   40: invokestatic 21	java/lang/Math:min	(II)I
    //   43: newarray byte
    //   45: astore 9
    //   47: aload_3
    //   48: iload_2
    //   49: aload 9
    //   51: arraylength
    //   52: isub
    //   53: i2l
    //   54: invokevirtual 59	java/io/FileInputStream:skip	(J)J
    //   57: pop2
    //   58: aload_3
    //   59: aload 9
    //   61: invokevirtual 63	java/io/FileInputStream:read	([B)I
    //   64: istore 12
    //   66: aconst_null
    //   67: astore 7
    //   69: iload 12
    //   71: ifle +16 -> 87
    //   74: aload 9
    //   76: iload 12
    //   78: invokestatic 65	android/util/CommentHelper:a	([BI)Ljava/lang/String;
    //   81: astore 13
    //   83: aload 13
    //   85: astore 7
    //   87: aload_3
    //   88: invokevirtual 68	java/io/FileInputStream:close	()V
    //   91: aload 7
    //   93: putstatic 34	android/util/CommentHelper:a	Ljava/lang/String;
    //   96: aload 7
    //   98: areturn
    //   99: astore 14
    //   101: aload 14
    //   103: invokevirtual 71	java/io/IOException:printStackTrace	()V
    //   106: goto -15 -> 91
    //   109: astore 4
    //   111: aconst_null
    //   112: astore_3
    //   113: aload 4
    //   115: invokevirtual 72	java/lang/Exception:printStackTrace	()V
    //   118: aconst_null
    //   119: astore 7
    //   121: aload_3
    //   122: ifnull -31 -> 91
    //   125: aload_3
    //   126: invokevirtual 68	java/io/FileInputStream:close	()V
    //   129: aconst_null
    //   130: astore 7
    //   132: goto -41 -> 91
    //   135: astore 8
    //   137: aload 8
    //   139: invokevirtual 71	java/io/IOException:printStackTrace	()V
    //   142: aconst_null
    //   143: astore 7
    //   145: goto -54 -> 91
    //   148: astore 15
    //   150: aconst_null
    //   151: astore_3
    //   152: aload 15
    //   154: astore 5
    //   156: aload_3
    //   157: ifnull +7 -> 164
    //   160: aload_3
    //   161: invokevirtual 68	java/io/FileInputStream:close	()V
    //   164: aload 5
    //   166: athrow
    //   167: astore 6
    //   169: aload 6
    //   171: invokevirtual 71	java/io/IOException:printStackTrace	()V
    //   174: goto -10 -> 164
    //   177: astore 5
    //   179: goto -23 -> 156
    //   182: astore 4
    //   184: goto -71 -> 113
    //
    // Exception table:
    //   from	to	target	type
    //   87	91	99	java/io/IOException
    //   28	37	109	java/lang/Exception
    //   125	129	135	java/io/IOException
    //   28	37	148	finally
    //   160	164	167	java/io/IOException
    //   37	66	177	finally
    //   74	83	177	finally
    //   113	118	177	finally
    //   37	66	182	java/lang/Exception
    //   74	83	182	java/lang/Exception
  }

  public static String getValueForKey(Uri paramUri, String paramString)
  {
    String str = null;
    if (paramUri != null)
    {
      boolean bool = TextUtils.isEmpty(paramUri.toString());
      str = null;
      if (!bool)
      {
        Bundle localBundle = BundleUtil.serialBundle(paramUri.getQuery());
        str = null;
        if (localBundle != null)
          str = localBundle.getString("channelId");
      }
    }
    return str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.util.CommentHelper
 * JD-Core Version:    0.6.2
 */