package android.taobao.service.appdevice.net.async;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public class SimpleMultipartEntity
  implements HttpEntity
{
  private static final char[] a = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private String b = null;
  boolean isSetFirst = false;
  boolean isSetLast = false;
  ByteArrayOutputStream out = new ByteArrayOutputStream();

  public SimpleMultipartEntity()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    Random localRandom = new Random();
    while (i < 30)
    {
      localStringBuffer.append(a[localRandom.nextInt(a.length)]);
      i++;
    }
    this.b = localStringBuffer.toString();
  }

  public void addPart(String paramString, File paramFile, boolean paramBoolean)
  {
    try
    {
      addPart(paramString, paramFile.getName(), new FileInputStream(paramFile), paramBoolean);
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      localFileNotFoundException.printStackTrace();
    }
  }

  public void addPart(String paramString1, String paramString2)
  {
    writeFirstBoundaryIfNeeds();
    try
    {
      this.out.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"\r\n\r\n").getBytes());
      this.out.write(paramString2.getBytes());
      this.out.write(("\r\n--" + this.b + "\r\n").getBytes());
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }

  public void addPart(String paramString1, String paramString2, InputStream paramInputStream, String paramString3, boolean paramBoolean)
  {
    writeFirstBoundaryIfNeeds();
    try
    {
      String str = "Content-Type: " + paramString3 + "\r\n";
      this.out.write(("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n").getBytes());
      this.out.write(str.getBytes());
      this.out.write("Content-Transfer-Encoding: binary\r\n\r\n".getBytes());
      byte[] arrayOfByte = new byte[4096];
      while (true)
      {
        int i = paramInputStream.read(arrayOfByte);
        if (i == -1)
          break;
        this.out.write(arrayOfByte, 0, i);
      }
    }
    catch (IOException localIOException2)
    {
      localIOException2 = localIOException2;
      localIOException2.printStackTrace();
      try
      {
        paramInputStream.close();
        return;
        if (!paramBoolean)
          this.out.write(("\r\n--" + this.b + "\r\n").getBytes());
        this.out.flush();
        try
        {
          paramInputStream.close();
          return;
        }
        catch (IOException localIOException4)
        {
          localIOException4.printStackTrace();
          return;
        }
      }
      catch (IOException localIOException3)
      {
        localIOException3.printStackTrace();
        return;
      }
    }
    finally
    {
    }
    try
    {
      paramInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        localIOException1.printStackTrace();
    }
  }

  public void addPart(String paramString1, String paramString2, InputStream paramInputStream, boolean paramBoolean)
  {
    addPart(paramString1, paramString2, paramInputStream, "application/octet-stream", paramBoolean);
  }

  public void consumeContent()
  {
    if (isStreaming())
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
  }

  public InputStream getContent()
  {
    return new ByteArrayInputStream(this.out.toByteArray());
  }

  public Header getContentEncoding()
  {
    return null;
  }

  public long getContentLength()
  {
    writeLastBoundaryIfNeeds();
    return this.out.toByteArray().length;
  }

  public Header getContentType()
  {
    return new BasicHeader("Content-Type", "multipart/form-data; boundary=" + this.b);
  }

  public boolean isChunked()
  {
    return false;
  }

  public boolean isRepeatable()
  {
    return false;
  }

  public boolean isStreaming()
  {
    return false;
  }

  public void writeFirstBoundaryIfNeeds()
  {
    if (!this.isSetFirst);
    try
    {
      this.out.write(("--" + this.b + "\r\n").getBytes());
      this.isSetFirst = true;
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public void writeLastBoundaryIfNeeds()
  {
    if (this.isSetLast)
      return;
    try
    {
      this.out.write(("\r\n--" + this.b + "--\r\n").getBytes());
      this.isSetLast = true;
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public void writeTo(OutputStream paramOutputStream)
  {
    paramOutputStream.write(this.out.toByteArray());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.SimpleMultipartEntity
 * JD-Core Version:    0.6.2
 */