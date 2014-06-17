package android.webkit;

public class ConsoleMessage
{
  private ConsoleMessage.MessageLevel a;
  private String b;
  private String c;
  private int d;

  public ConsoleMessage(String paramString1, String paramString2, int paramInt, ConsoleMessage.MessageLevel paramMessageLevel)
  {
    this.b = paramString1;
    this.c = paramString2;
    this.d = paramInt;
    this.a = paramMessageLevel;
  }

  public int lineNumber()
  {
    return this.d;
  }

  public String message()
  {
    return this.b;
  }

  public ConsoleMessage.MessageLevel messageLevel()
  {
    return this.a;
  }

  public String sourceId()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.webkit.ConsoleMessage
 * JD-Core Version:    0.6.2
 */