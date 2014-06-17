package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Snapshot;
import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import java.io.InputStream;
import java.net.SecureCacheResponse;
import java.security.Principal;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLPeerUnverifiedException;

class HttpResponseCache$EntrySecureCacheResponse extends SecureCacheResponse
{
  private final HttpResponseCache.Entry a;
  private final DiskLruCache.Snapshot b;
  private final InputStream c;

  public HttpResponseCache$EntrySecureCacheResponse(HttpResponseCache.Entry paramEntry, DiskLruCache.Snapshot paramSnapshot)
  {
    this.a = paramEntry;
    this.b = paramSnapshot;
    this.c = HttpResponseCache.access$1000(paramSnapshot);
  }

  public InputStream getBody()
  {
    return this.c;
  }

  public String getCipherSuite()
  {
    return HttpResponseCache.Entry.access$1200(this.a);
  }

  public Map getHeaders()
  {
    return HttpResponseCache.Entry.access$1100(this.a).toMultimap(true);
  }

  public List getLocalCertificateChain()
  {
    if ((HttpResponseCache.Entry.access$1400(this.a) == null) || (HttpResponseCache.Entry.access$1400(this.a).length == 0))
      return null;
    return Arrays.asList((Object[])HttpResponseCache.Entry.access$1400(this.a).clone());
  }

  public Principal getLocalPrincipal()
  {
    if ((HttpResponseCache.Entry.access$1400(this.a) == null) || (HttpResponseCache.Entry.access$1400(this.a).length == 0))
      return null;
    return ((X509Certificate)HttpResponseCache.Entry.access$1400(this.a)[0]).getSubjectX500Principal();
  }

  public Principal getPeerPrincipal()
  {
    if ((HttpResponseCache.Entry.access$1300(this.a) == null) || (HttpResponseCache.Entry.access$1300(this.a).length == 0))
      throw new SSLPeerUnverifiedException(null);
    return ((X509Certificate)HttpResponseCache.Entry.access$1300(this.a)[0]).getSubjectX500Principal();
  }

  public List getServerCertificateChain()
  {
    if ((HttpResponseCache.Entry.access$1300(this.a) == null) || (HttpResponseCache.Entry.access$1300(this.a).length == 0))
      throw new SSLPeerUnverifiedException(null);
    return Arrays.asList((Object[])HttpResponseCache.Entry.access$1300(this.a).clone());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.EntrySecureCacheResponse
 * JD-Core Version:    0.6.2
 */