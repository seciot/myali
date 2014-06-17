package com.alipay.mobile.command.manager;

import com.alipay.mobile.command.facade.BaseCommand;
import dalvik.system.DexClassLoader;

public class CommandManager$WrapBaseCommand
{
  private DexClassLoader a;
  private BaseCommand b;
  private String c;

  public CommandManager$WrapBaseCommand(DexClassLoader paramDexClassLoader, BaseCommand paramBaseCommand, String paramString)
  {
    this.a = paramDexClassLoader;
    this.b = paramBaseCommand;
    this.c = paramString;
  }

  public final void a()
  {
    this.a = null;
  }

  public final String b()
  {
    return this.c;
  }

  public final BaseCommand c()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.CommandManager.WrapBaseCommand
 * JD-Core Version:    0.6.2
 */