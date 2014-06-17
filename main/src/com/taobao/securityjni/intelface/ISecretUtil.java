package com.taobao.securityjni.intelface;

import com.taobao.securityjni.tools.DataContext;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.TreeMap;

public abstract interface ISecretUtil
{
  public abstract String getExternalSign(LinkedHashMap paramLinkedHashMap, DataContext paramDataContext);

  public abstract String getLaiwangSign(String paramString1, String paramString2, DataContext paramDataContext);

  public abstract String getLoginTopToken(String paramString1, String paramString2, DataContext paramDataContext);

  public abstract String getMtopSign(HashMap paramHashMap, DataContext paramDataContext);

  public abstract String getMtopV4RespSign(String paramString, DataContext paramDataContext);

  public abstract String getMtopV4Sign(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, DataContext paramDataContext);

  public abstract String getQianNiuSign(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2);

  public abstract String getTopSign(TreeMap paramTreeMap, DataContext paramDataContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.intelface.ISecretUtil
 * JD-Core Version:    0.6.2
 */