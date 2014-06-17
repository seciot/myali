package android.taobao.service.appdevice.net.async;

import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

class AbsHttpClient$InflatingEntity extends HttpEntityWrapper
{
  public AbsHttpClient$InflatingEntity(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }

  public InputStream getContent()
  {
    return new GZIPInputStream(this.wrappedEntity.getContent());
  }

  public long getContentLength()
  {
    return -1L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AbsHttpClient.InflatingEntity
 * JD-Core Version:    0.6.2
 */