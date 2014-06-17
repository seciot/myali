package android.taobao.service.appdevice.mtop;

public abstract class BaseOutDo
  implements IMTOPDataObject
{
  private String a;
  private String b;
  private String[] c;

  public String getApi()
  {
    return this.a;
  }

  public abstract Object getData();

  public String[] getRet()
  {
    return this.c;
  }

  public String getV()
  {
    return this.b;
  }

  public void setApi(String paramString)
  {
    this.a = paramString;
  }

  public void setRet(String[] paramArrayOfString)
  {
    this.c = paramArrayOfString;
  }

  public void setV(String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.mtop.BaseOutDo
 * JD-Core Version:    0.6.2
 */