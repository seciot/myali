package com.taobao.security;

final class b$b
  implements Filter
{
  public final boolean filter(c paramc, g paramg)
  {
    if ((paramc == null) || (paramc.d == null) || (paramc.d.equals("")) || (paramc.d.equals("-")));
    while (paramg.a(31).toUpperCase().trim().equals(paramc.d.toUpperCase().trim()))
      return true;
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.b.b
 * JD-Core Version:    0.6.2
 */