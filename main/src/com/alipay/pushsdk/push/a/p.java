package com.alipay.pushsdk.push.a;

import java.io.PrintStream;
import java.io.PrintWriter;

public class p extends Exception
{
  private Throwable a = null;
  private String b = "";

  public p()
  {
  }

  public p(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.a = paramThrowable;
  }

  public String a()
  {
    return this.b;
  }

  public void a(String paramString)
  {
    this.b = paramString;
  }

  public String getMessage()
  {
    return super.getMessage();
  }

  public void printStackTrace()
  {
    printStackTrace(System.err);
  }

  public void printStackTrace(PrintStream paramPrintStream)
  {
    super.printStackTrace(paramPrintStream);
    if (this.a != null)
    {
      paramPrintStream.println("Nested Exception: ");
      this.a.printStackTrace(paramPrintStream);
    }
  }

  public void printStackTrace(PrintWriter paramPrintWriter)
  {
    super.printStackTrace(paramPrintWriter);
    if (this.a != null)
    {
      paramPrintWriter.println("Nested Exception: ");
      this.a.printStackTrace(paramPrintWriter);
    }
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    String str = super.getMessage();
    if (str != null)
      localStringBuilder.append(str).append(": ");
    if (this.a != null)
      localStringBuilder.append("\n  -- caused by: ").append(this.a);
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.p
 * JD-Core Version:    0.6.2
 */