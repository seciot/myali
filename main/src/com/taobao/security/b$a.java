package com.taobao.security;

final class b$a
  implements Filter
{
  public final boolean filter(c paramc, g paramg)
  {
    if ((paramc == null) || (paramc.a == -1) || (paramc.b == -1));
    int i;
    do
    {
      return true;
      i = Integer.parseInt(paramg.a(32).trim());
    }
    while ((i >= paramc.a) && (i <= paramc.b));
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.b.a
 * JD-Core Version:    0.6.2
 */