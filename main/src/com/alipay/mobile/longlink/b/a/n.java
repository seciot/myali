package com.alipay.mobile.longlink.b.a;

import java.io.PrintStream;
import java.io.PrintWriter;

public class n extends Exception
{
  private Throwable a = null;
  private String b = "";

  public n()
  {
  }

  public n(String paramString, Throwable paramThrowable)
  {
    super(paramString);
    this.a = paramThrowable;
  }

  public String a()
  {
    return this.b;
  }

  public void getBundle(String paramString)
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
 * Qualified Name:     com.alipay.mobile.longlink.b.a.n
 * JD-Core Version:    0.6.2
 */