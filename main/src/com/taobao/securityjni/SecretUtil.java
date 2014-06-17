package com.taobao.securityjni;

import android.content.ContextWrapper;
import com.taobao.securityjni.impl.CImplSecretUtil;
import com.taobao.securityjni.intelface.IAttachImpl;
import com.taobao.securityjni.intelface.ISecretUtil;
import com.taobao.securityjni.tools.DataContext;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.TreeMap;

public final class SecretUtil
  implements IAttachImpl, ISecretUtil
{
  public static final String M_API = "API";
  public static final String M_DATA = "DATA";
  public static final String M_DEV = "DEV";
  public static final String M_ECODE = "ECODE";
  public static final String M_IMEI = "IMEI";
  public static final String M_IMSI = "IMSI";
  public static final String M_SSO = "SSO";
  public static final String M_TIME = "TIME";
  public static final String M_V = "V";
  private String a = "";
  private ISecretUtil b = null;

  public SecretUtil(ContextWrapper paramContextWrapper)
  {
    this.b = new CImplSecretUtil(paramContextWrapper);
  }

  public SecretUtil(ContextWrapper paramContextWrapper, ISecretUtil paramISecretUtil)
  {
    if (paramISecretUtil == null)
    {
      this.b = new CImplSecretUtil(paramContextWrapper);
      return;
    }
    this.b = paramISecretUtil;
  }

  public final void AttachImplObject(Object paramObject)
  {
    if ((paramObject != null) && ((paramObject instanceof ISecretUtil)))
      this.b = ((ISecretUtil)paramObject);
  }

  public final String getExternalSign(LinkedHashMap paramLinkedHashMap, DataContext paramDataContext)
  {
    return this.b.getExternalSign(paramLinkedHashMap, paramDataContext);
  }

  public final String getLaiwangSign(String paramString1, String paramString2, DataContext paramDataContext)
  {
    return this.b.getLaiwangSign(paramString1, paramString2, paramDataContext);
  }

  public final String getLoginTopToken(String paramString1, String paramString2)
  {
    return getLoginTopToken(paramString1, paramString2, new DataContext(0, null));
  }

  public final String getLoginTopToken(String paramString1, String paramString2, DataContext paramDataContext)
  {
    return this.b.getLoginTopToken(paramString1, paramString2, paramDataContext);
  }

  public final String getMtopSign(HashMap paramHashMap, DataContext paramDataContext)
  {
    return this.b.getMtopSign(paramHashMap, paramDataContext);
  }

  public final String getMtopV4RespSign(String paramString, DataContext paramDataContext)
  {
    return this.b.getMtopV4RespSign(paramString, paramDataContext);
  }

  public final String getMtopV4Sign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, DataContext paramDataContext)
  {
    return this.b.getMtopV4Sign(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramString8, paramString9, paramString10, paramDataContext);
  }

  public final String getQianNiuSign(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    return this.b.getQianNiuSign(paramArrayOfByte1, paramArrayOfByte2);
  }

  public final String getSign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    return getSign(paramString1, paramString2, paramString3, paramString4, paramString5, null, paramString6);
  }

  public final String getSign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    if ((paramString1 == null) || (paramString2 == null) || (paramString3 == null) || (paramString4 == null) || (paramString7 == null))
      return null;
    HashMap localHashMap = new HashMap();
    localHashMap.put("API", paramString1);
    localHashMap.put("V", paramString2);
    localHashMap.put("IMEI", paramString3);
    localHashMap.put("IMSI", paramString4);
    if (paramString5 != null)
      localHashMap.put("DATA", paramString5);
    if (paramString6 != null)
      localHashMap.put("ECODE", paramString6);
    localHashMap.put("TIME", paramString7);
    return getSign(localHashMap, new DataContext(0, null));
  }

  public final String getSign(HashMap paramHashMap, DataContext paramDataContext)
  {
    return getMtopSign(paramHashMap, paramDataContext);
  }

  public final native String getTime();

  public final String getTopSign(TreeMap paramTreeMap)
  {
    return getTopSign(paramTreeMap, new DataContext(0, null));
  }

  public final String getTopSign(TreeMap paramTreeMap, DataContext paramDataContext)
  {
    return this.b.getTopSign(paramTreeMap, paramDataContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.SecretUtil
 * JD-Core Version:    0.6.2
 */