package com.alipay.android.launcher.core;

import java.util.List;

public abstract interface IWidgetGroupFactory
{
  public abstract List<IWidgetGroup> getAllWidgetGroups();

  public abstract List<ClassLoader> getClassloaders();

  public abstract IWidgetGroup getWidgetGroup(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.core.IWidgetGroupFactory
 * JD-Core Version:    0.6.2
 */