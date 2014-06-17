package mtop.push.device.register;

import android.taobao.service.appdevice.mtop.IMTOPDataObject;
import java.io.Serializable;

public class Request
  implements IMTOPDataObject, Serializable
{
  public static final String API_NAME = "mtop.push.device.register";
  public static final boolean NEED_ECODE = false;
  public static final String version = "4.0";
  private String a;
  private String b;

  public String getApp_info()
  {
    return this.b;
  }

  public String getApp_version()
  {
    return this.a;
  }

  public void setApp_info(String paramString)
  {
    this.b = paramString;
  }

  public void setApp_version(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     mtop.push.device.register.Request
 * JD-Core Version:    0.6.2
 */