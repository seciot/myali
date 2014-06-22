package mtop.push.device.register;

import android.taobao.service.appdevice.mtop.IMTOPDataObject;
import java.io.Serializable;

public class Data
  implements IMTOPDataObject, Serializable
{
  private String a;

  public String getPush_key()
  {
	//¿´²»¶®
    return this.a;
  }

  public void setPush_key(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     mtop.push.device.register.Data
 * JD-Core Version:    0.6.2
 */