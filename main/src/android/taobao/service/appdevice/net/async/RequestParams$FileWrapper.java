package android.taobao.service.appdevice.net.async;

import java.io.InputStream;

class RequestParams$FileWrapper
{
  public String contentType;
  public String fileName;
  public InputStream inputStream;

  public RequestParams$FileWrapper(InputStream paramInputStream, String paramString1, String paramString2)
  {
    this.inputStream = paramInputStream;
    this.fileName = paramString1;
    this.contentType = paramString2;
  }

  public String getFileName()
  {
    if (this.fileName != null)
      return this.fileName;
    return "nofilename";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.RequestParams.FileWrapper
 * JD-Core Version:    0.6.2
 */