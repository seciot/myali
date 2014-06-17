package android.taobao.service.appdevice.net.mtop;

public class Result
{
  private boolean a;
  private String b;
  private String c;
  private String d;

  public String getData()
  {
    return this.b;
  }

  public String getRetCode()
  {
    return this.d;
  }

  public String getRetDesc()
  {
    return this.c;
  }

  public boolean isSuccess()
  {
    return this.a;
  }

  public void setData(String paramString)
  {
    this.b = paramString;
  }

  public void setRetCode(String paramString)
  {
    this.d = paramString;
  }

  public void setRetDesc(String paramString)
  {
    this.c = paramString;
  }

  public void setSuccess(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public String toString()
  {
    return "Result [isSuccess=" + this.a + ", data=" + this.b + ", retDesc=" + this.c + ", retCode=" + this.d + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.Result
 * JD-Core Version:    0.6.2
 */