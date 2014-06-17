package com.alipay.android.lib.plusin.script;

import android.util.SparseArray;
import com.alipay.android.app.data.LuaExcutor;
import com.alipay.android.app.exception.AppErrorException;

public class ScriptExcutorCreator
{
  private static ScriptExcutorCreator a;
  private static Class b;
  private SparseArray c = new SparseArray();

  public static ScriptExcutorCreator a()
  {
    if (a == null)
      a = new ScriptExcutorCreator();
    return a;
  }

  public static void a(Class paramClass)
  {
    b = paramClass;
  }

  public final IScriptExcutor a(int paramInt)
  {
    IScriptExcutor localIScriptExcutor = (IScriptExcutor)this.c.get(paramInt);
    if (localIScriptExcutor == null);
    try
    {
      if (b == null)
        b = LuaExcutor.class;
      localIScriptExcutor = (IScriptExcutor)b.newInstance();
      this.c.put(paramInt, localIScriptExcutor);
      return localIScriptExcutor;
    }
    catch (Exception localException)
    {
      throw new AppErrorException(localException.getClass(), "can not creat script excutor");
    }
  }

  public final void b(int paramInt)
  {
    IScriptExcutor localIScriptExcutor = (IScriptExcutor)this.c.get(paramInt);
    if (localIScriptExcutor != null)
    {
      localIScriptExcutor.dispose();
      this.c.remove(paramInt);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.script.ScriptExcutorCreator
 * JD-Core Version:    0.6.2
 */