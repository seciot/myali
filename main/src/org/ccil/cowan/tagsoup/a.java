package org.ccil.cowan.tagsoup;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

final class a
  implements AutoDetector
{
  a(Parser paramParser)
  {
  }

  public final Reader a(InputStream paramInputStream)
  {
    return new InputStreamReader(paramInputStream);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     org.ccil.cowan.tagsoup.a
 * JD-Core Version:    0.6.2
 */