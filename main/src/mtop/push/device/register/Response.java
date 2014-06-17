package mtop.push.device.register;

import android.taobao.service.appdevice.mtop.BaseOutDo;
import java.io.Serializable;

public class Response extends BaseOutDo
  implements Serializable
{
  private Data a;

  public Object getData()
  {
    return this.a;
  }

  public void setData(Data paramData)
  {
    this.a = paramData;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     mtop.push.device.register.Response
 * JD-Core Version:    0.6.2
 */