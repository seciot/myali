package com.ut.b;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.UnsupportedCharsetException;
import org.xmlpull.v1.XmlSerializer;

class a
  implements XmlSerializer
{
  private static final String[] ad = { null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&quot;", null, null, null, "&amp;", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "&lt;", null, "&gt;", null };
  private final char[] ae = new char[8192];
  private Writer af;
  private OutputStream ag;
  private CharsetEncoder ah;
  private ByteBuffer ai = ByteBuffer.allocate(8192);
  private boolean aj;
  private int mPos;

  private void a(String paramString, int paramInt1, int paramInt2)
  {
    if (paramInt2 > 8192)
    {
      int j = paramInt1 + paramInt2;
      if (paramInt1 < j)
      {
        int k = paramInt1 + 8192;
        if (k < j);
        for (int m = 8192; ; m = j - paramInt1)
        {
          a(paramString, paramInt1, m);
          paramInt1 = k;
          break;
        }
      }
    }
    else
    {
      int i = this.mPos;
      if (i + paramInt2 > 8192)
      {
        flush();
        i = this.mPos;
      }
      paramString.getChars(paramInt1, paramInt1 + paramInt2, this.ae, i);
      this.mPos = (i + paramInt2);
    }
  }

  private void a(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = (char)ad.length;
    String[] arrayOfString = ad;
    int j = paramInt1 + paramInt2;
    int k = paramInt1;
    while (paramInt1 < j)
    {
      int m = paramArrayOfChar[paramInt1];
      if (m < i)
      {
        String str = arrayOfString[m];
        if (str != null)
        {
          if (k < paramInt1)
            append(paramArrayOfChar, k, paramInt1 - k);
          k = paramInt1 + 1;
          append(str);
        }
      }
      paramInt1++;
    }
    if (k < paramInt1)
      append(paramArrayOfChar, k, paramInt1 - k);
  }

  private void append(char paramChar)
  {
    int i = this.mPos;
    if (i >= 8191)
    {
      flush();
      i = this.mPos;
    }
    this.ae[i] = paramChar;
    this.mPos = (i + 1);
  }

  private void append(String paramString)
  {
    a(paramString, 0, paramString.length());
  }

  private void append(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (paramInt2 > 8192)
    {
      int j = paramInt1 + paramInt2;
      if (paramInt1 < j)
      {
        int k = paramInt1 + 8192;
        if (k < j);
        for (int m = 8192; ; m = j - paramInt1)
        {
          append(paramArrayOfChar, paramInt1, m);
          paramInt1 = k;
          break;
        }
      }
    }
    else
    {
      int i = this.mPos;
      if (i + paramInt2 > 8192)
      {
        flush();
        i = this.mPos;
      }
      System.arraycopy(paramArrayOfChar, paramInt1, this.ae, i, paramInt2);
      this.mPos = (i + paramInt2);
    }
  }

  private void o()
  {
    int i = this.ai.position();
    if (i > 0)
    {
      this.ai.flip();
      this.ag.write(this.ai.array(), 0, i);
      this.ai.clear();
    }
  }

  private void y(String paramString)
  {
    int i = 0;
    int j = paramString.length();
    int k = (char)ad.length;
    String[] arrayOfString = ad;
    for (int m = 0; m < j; m++)
    {
      int n = paramString.charAt(m);
      if (n < k)
      {
        String str = arrayOfString[n];
        if (str != null)
        {
          if (i < m)
            a(paramString, i, m - i);
          i = m + 1;
          append(str);
        }
      }
    }
    if (i < m)
      a(paramString, i, m - i);
  }

  public XmlSerializer attribute(String paramString1, String paramString2, String paramString3)
  {
    append(' ');
    if (paramString1 != null)
    {
      append(paramString1);
      append(':');
    }
    append(paramString2);
    append("=\"");
    y(paramString3);
    append('"');
    return this;
  }

  public void cdsect(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void comment(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void docdecl(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void endDocument()
  {
    flush();
  }

  public XmlSerializer endTag(String paramString1, String paramString2)
  {
    if (this.aj)
      append(" />\n");
    while (true)
    {
      this.aj = false;
      return this;
      append("</");
      if (paramString1 != null)
      {
        append(paramString1);
        append(':');
      }
      append(paramString2);
      append(">\n");
    }
  }

  public void entityRef(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void flush()
  {
    if (this.mPos > 0)
    {
      if (this.ag == null)
        break label105;
      CharBuffer localCharBuffer = CharBuffer.wrap(this.ae, 0, this.mPos);
      for (CoderResult localCoderResult = this.ah.encode(localCharBuffer, this.ai, true); ; localCoderResult = this.ah.encode(localCharBuffer, this.ai, true))
      {
        if (localCoderResult.isError())
          throw new IOException(localCoderResult.toString());
        if (!localCoderResult.isOverflow())
          break;
        o();
      }
      o();
      this.ag.flush();
    }
    while (true)
    {
      this.mPos = 0;
      return;
      label105: this.af.write(this.ae, 0, this.mPos);
      this.af.flush();
    }
  }

  public int getDepth()
  {
    throw new UnsupportedOperationException();
  }

  public boolean getFeature(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public String getName()
  {
    throw new UnsupportedOperationException();
  }

  public String getNamespace()
  {
    throw new UnsupportedOperationException();
  }

  public String getPrefix(String paramString, boolean paramBoolean)
  {
    throw new UnsupportedOperationException();
  }

  public Object getProperty(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void ignorableWhitespace(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void processingInstruction(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public void setFeature(String paramString, boolean paramBoolean)
  {
    if (paramString.equals("http://xmlpull.org/v1/doc/features.html#indent-output"))
      return;
    throw new UnsupportedOperationException();
  }

  public void setOutput(OutputStream paramOutputStream, String paramString)
  {
    if (paramOutputStream == null)
      throw new IllegalArgumentException();
    try
    {
      this.ah = Charset.forName(paramString).newEncoder();
      this.ag = paramOutputStream;
      return;
    }
    catch (IllegalCharsetNameException localIllegalCharsetNameException)
    {
      throw ((UnsupportedEncodingException)new UnsupportedEncodingException(paramString).initCause(localIllegalCharsetNameException));
    }
    catch (UnsupportedCharsetException localUnsupportedCharsetException)
    {
      throw ((UnsupportedEncodingException)new UnsupportedEncodingException(paramString).initCause(localUnsupportedCharsetException));
    }
  }

  public void setOutput(Writer paramWriter)
  {
    this.af = paramWriter;
  }

  public void setPrefix(String paramString1, String paramString2)
  {
    throw new UnsupportedOperationException();
  }

  public void setProperty(String paramString, Object paramObject)
  {
    throw new UnsupportedOperationException();
  }

  public void startDocument(String paramString, Boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder("<?xml version='1.0' encoding='utf-8' standalone='");
    if (paramBoolean.booleanValue());
    for (String str = "yes"; ; str = "no")
    {
      append(str + "' ?>\n");
      return;
    }
  }

  public XmlSerializer startTag(String paramString1, String paramString2)
  {
    if (this.aj)
      append(">\n");
    append('<');
    if (paramString1 != null)
    {
      append(paramString1);
      append(':');
    }
    append(paramString2);
    this.aj = true;
    return this;
  }

  public XmlSerializer text(String paramString)
  {
    if (this.aj)
    {
      append(">");
      this.aj = false;
    }
    y(paramString);
    return this;
  }

  public XmlSerializer text(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    if (this.aj)
    {
      append(">");
      this.aj = false;
    }
    a(paramArrayOfChar, paramInt1, paramInt2);
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.b.a
 * JD-Core Version:    0.6.2
 */