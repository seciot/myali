package com.alibaba.fastjson.util;

import java.security.PrivilegedAction;

final class ASMClassLoader$1
  implements PrivilegedAction<Object>
{
  public final Object run()
  {
    return ASMClassLoader.class.getProtectionDomain();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.ASMClassLoader.1
 * JD-Core Version:    0.6.2
 */