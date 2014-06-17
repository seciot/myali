package android.net.http;

import java.security.cert.X509Certificate;

public class SslError
{
  public static final int SSL_DATE_INVALID = 4;
  public static final int SSL_EXPIRED = 1;
  public static final int SSL_IDMISMATCH = 2;
  public static final int SSL_INVALID = 5;
  public static final int SSL_MAX_ERROR = 6;
  public static final int SSL_NOTYETVALID = 0;
  public static final int SSL_UNTRUSTED = 3;
  final SslCertificate mCertificate;
  int mErrors;
  final String mUrl;

  static
  {
    if (!SslError.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SslError(int paramInt, SslCertificate paramSslCertificate)
  {
    this(paramInt, paramSslCertificate, "");
  }

  public SslError(int paramInt, SslCertificate paramSslCertificate, String paramString)
  {
    assert (paramSslCertificate != null);
    assert (paramString != null);
    addError(paramInt);
    this.mCertificate = paramSslCertificate;
    this.mUrl = paramString;
  }

  public SslError(int paramInt, X509Certificate paramX509Certificate)
  {
    this(paramInt, paramX509Certificate, "");
  }

  public SslError(int paramInt, X509Certificate paramX509Certificate, String paramString)
  {
    this(paramInt, new SslCertificate(paramX509Certificate), paramString);
  }

  public static SslError SslErrorFromChromiumErrorCode(int paramInt, SslCertificate paramSslCertificate, String paramString)
  {
    assert ((paramInt >= -299) && (paramInt <= -200));
    if (paramInt == -200)
      return new SslError(2, paramSslCertificate, paramString);
    if (paramInt == -201)
      return new SslError(4, paramSslCertificate, paramString);
    if (paramInt == -202)
      return new SslError(3, paramSslCertificate, paramString);
    return new SslError(5, paramSslCertificate, paramString);
  }

  public boolean addError(int paramInt)
  {
    if ((paramInt >= 0) && (paramInt < 6));
    for (boolean bool = true; ; bool = false)
    {
      if (bool)
        this.mErrors |= 1 << paramInt;
      return bool;
    }
  }

  public SslCertificate getCertificate()
  {
    return this.mCertificate;
  }

  public int getPrimaryError()
  {
    if (this.mErrors != 0)
    {
      for (int i = 5; i >= 0; i--)
        if ((this.mErrors & 1 << i) != 0)
          return i;
      if (!$assertionsDisabled)
        throw new AssertionError();
    }
    return -1;
  }

  public String getUrl()
  {
    return this.mUrl;
  }

  public boolean hasError(int paramInt)
  {
    boolean bool;
    if ((paramInt >= 0) && (paramInt < 6))
      bool = true;
    while (bool)
      if ((this.mErrors & 1 << paramInt) != 0)
      {
        return true;
        bool = false;
      }
      else
      {
        return false;
      }
    return bool;
  }

  public String toString()
  {
    return "primary error: " + getPrimaryError() + " certificate: " + getCertificate() + " on URL: " + getUrl();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.net.http.SslError
 * JD-Core Version:    0.6.2
 */