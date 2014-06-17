package com.alipay.mobile.common.transport.spdy.internal.http;

class ResponseHeaders$1
  implements HeaderParser.CacheControlHandler
{
  ResponseHeaders$1(ResponseHeaders paramResponseHeaders)
  {
  }

  public void handle(String paramString1, String paramString2)
  {
    if ("no-cache".equalsIgnoreCase(paramString1))
      ResponseHeaders.access$002(this.this$0, true);
    do
    {
      return;
      if ("no-store".equalsIgnoreCase(paramString1))
      {
        ResponseHeaders.access$102(this.this$0, true);
        return;
      }
      if ("max-age".equalsIgnoreCase(paramString1))
      {
        ResponseHeaders.access$202(this.this$0, HeaderParser.parseSeconds(paramString2));
        return;
      }
      if ("s-maxage".equalsIgnoreCase(paramString1))
      {
        ResponseHeaders.access$302(this.this$0, HeaderParser.parseSeconds(paramString2));
        return;
      }
      if ("public".equalsIgnoreCase(paramString1))
      {
        ResponseHeaders.access$402(this.this$0, true);
        return;
      }
    }
    while (!"must-revalidate".equalsIgnoreCase(paramString1));
    ResponseHeaders.access$502(this.this$0, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.ResponseHeaders.1
 * JD-Core Version:    0.6.2
 */