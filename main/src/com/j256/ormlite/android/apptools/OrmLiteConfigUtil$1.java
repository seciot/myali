package com.j256.ormlite.android.apptools;

import java.io.File;
import java.io.FileFilter;

final class OrmLiteConfigUtil$1
  implements FileFilter
{
  public final boolean accept(File paramFile)
  {
    return (paramFile.getName().equals("raw")) && (paramFile.isDirectory());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.apptools.OrmLiteConfigUtil.1
 * JD-Core Version:    0.6.2
 */