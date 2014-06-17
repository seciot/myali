package com.taobao.securityjni.usertrack;

import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.errorcode.SEInvalidParametersException;
import com.taobao.securityjni.errorcode.SEKeyNotEqualError;
import com.taobao.securityjni.errorcode.SEStaticFileNotStoreValueException;
import com.taobao.securityjni.errorcode.SEStaticFileVersionError;
import com.taobao.securityjni.errorcode.SErrCode;
import com.taobao.securityjni.errorcode.SErrMap;
import com.taobao.securityjni.tools.RetObject;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.concurrent.atomic.AtomicBoolean;

public final class a
{
  private static final String a = "1.2.9.4";
  private static AtomicBoolean b = new AtomicBoolean(false);
  private static int c = 0;
  private static volatile int d = 0;

  private static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
    if (paramThrowable != null)
    {
      localPrintWriter.print(paramThrowable.toString());
      return localStringWriter.toString();
    }
    return "Throwable is null!!";
  }

  public static void a(int paramInt)
  {
    try
    {
      c = paramInt;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(int paramInt, String paramString1, String paramString2, String paramString3, String[] paramArrayOfString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[LoadCode=").append(Integer.toString(GlobalInit.LOAD_FLAG, 16)).append("]");
    label73: int i;
    if (paramString2 != null)
    {
      localStringBuilder.append("R: [").append(paramString2);
      localStringBuilder.append("]");
      if (paramString3 == null)
        break label178;
      localStringBuilder.append("E: [").append(paramString3);
      localStringBuilder.append("]");
      localStringBuilder.append("Cert: [null");
      localStringBuilder.append("]");
      localStringBuilder.append("ExtData: [");
      if (paramArrayOfString.length <= 0)
        break label210;
      i = 0;
      label114: if (i >= paramArrayOfString.length)
        break label210;
      if (paramArrayOfString[i] == null)
        break label189;
      localStringBuilder.append("{").append(i).append("::").append(paramArrayOfString[i]).append("}");
    }
    while (true)
    {
      i++;
      break label114;
      localStringBuilder.append("R: [null");
      break;
      label178: localStringBuilder.append("E: [null");
      break label73;
      label189: localStringBuilder.append("{").append(i).append("::}");
    }
    label210: localStringBuilder.append("]");
    String str = localStringBuilder.toString();
    if (paramInt == 0)
    {
      a("SecurityAllData", paramString1, str, a);
      return;
    }
    if (paramInt == 1)
    {
      a("SecurityRightData", paramString1, str, a);
      return;
    }
    if (paramInt == 2)
    {
      a("SecurityErrorData", paramString1, str, a);
      return;
    }
    a("SecurityLoginData", paramString1, str, a);
  }

  public static void a(String paramString1, String paramString2, String paramString3)
  {
    a(1, paramString1, paramString2, paramString3, new String[0]);
  }

  private static void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      TBSecurityUsertrackProxy.UserTrackUpload(paramString1, paramString2, paramString3, paramString4);
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public static void a(String paramString, Throwable paramThrowable)
  {
    RetObject localRetObject = SErrCode.ParseErrorCode(paramThrowable);
    if (b.get())
      paramThrowable.printStackTrace();
    int i;
    if ((localRetObject != null) && (localRetObject.functionName != null))
    {
      byte[] arrayOfByte = localRetObject.functionName;
      if ((arrayOfByte[0] == 84) && (arrayOfByte[1] == 45))
      {
        int k = d;
        i = 0;
        if (k > 12)
          if (i != 0)
            break label85;
      }
    }
    label85: 
    do
    {
      return;
      d = 1 + d;
      i = 1;
      break;
      int j = -1;
      if (localRetObject != null)
        j = SErrMap.GetErrorKind(localRetObject.errorCode);
      if (j != 2)
      {
        if (!(paramThrowable instanceof Error))
          break label190;
        String str3 = a((Error)paramThrowable);
        StringBuilder localStringBuilder2 = new StringBuilder();
        localStringBuilder2.append("[LoadCode=").append(Integer.toString(GlobalInit.LOAD_FLAG, 16)).append("]");
        localStringBuilder2.append(str3);
        a("SecurityException", paramString, localStringBuilder2.toString(), a);
      }
      while (c == 1)
      {
        SErrCode.SetErrorCode(localRetObject);
        return;
        String str2 = a((Exception)paramThrowable);
        StringBuilder localStringBuilder1 = new StringBuilder();
        localStringBuilder1.append("[LoadCode=").append(Integer.toString(GlobalInit.LOAD_FLAG, 16)).append("]");
        localStringBuilder1.append(str2);
        a("SecurityException", paramString, localStringBuilder1.toString(), a);
      }
    }
    while ((c != 2) || (localRetObject == null));
    label190: String str1 = SErrMap.GetErrorDescption(localRetObject.errorCode);
    switch (localRetObject.errorCode)
    {
    default:
      return;
    case -302:
      throw new SEStaticFileVersionError(str1, paramThrowable);
    case -110:
    case -2:
      throw new SEInvalidParametersException(str1, paramThrowable);
    case -111:
      throw new SEStaticFileNotStoreValueException(str1, paramThrowable);
    case -104:
    }
    throw new SEKeyNotEqualError(str1, paramThrowable);
  }

  public static void a(boolean paramBoolean)
  {
    b.getAndSet(paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.usertrack.a
 * JD-Core Version:    0.6.2
 */