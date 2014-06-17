package android.taobao.service.appdevice.net.mtop;

import java.util.Map;

public class MtopRequest
{
  public static final String SPLIT_STR = "&";
  private String a;
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private Map<String, Object> i = null;

  public String getApi()
  {
    return this.a;
  }

  public String getAppKey()
  {
    return this.f;
  }

  public String getAppSecret()
  {
    return this.h;
  }

  public String getDeviceId()
  {
    return this.g;
  }

  public String getEcode()
  {
    return this.e;
  }

  public Map<String, Object> getParams()
  {
    return this.i;
  }

  public String getSId()
  {
    return this.d;
  }

  public String getTtId()
  {
    return this.c;
  }

  public String getV()
  {
    return this.b;
  }

  public void putParams(String paramString, Object paramObject)
  {
    this.i.put(paramString, paramObject);
  }

  public void setApi(String paramString)
  {
    this.a = paramString;
  }

  public void setAppKey(String paramString)
  {
    this.f = paramString;
  }

  public void setAppSecret(String paramString)
  {
    this.h = paramString;
  }

  public void setDeviceId(String paramString)
  {
    this.g = paramString;
  }

  public void setEcode(String paramString)
  {
    this.e = paramString;
  }

  public void setSId(String paramString)
  {
    this.d = paramString;
  }

  public void setTtId(String paramString)
  {
    this.c = paramString;
  }

  public void setV(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.MtopRequest
 * JD-Core Version:    0.6.2
 */