package com.alipay.mobile.command.engine;

import android.webkit.JavascriptInterface;
import com.alipay.mobile.command.facade.BaseCommand;
import com.alipay.mobile.command.invoke.CmdCenterFacadeInvoke;
import com.alipay.mobile.command.manager.CommandManager;
import com.alipay.mobile.command.manager.CommandManager.WrapBaseCommand;
import com.alipay.mobile.command.util.CommandLogUtil;

public class BridgeJsToJava
{
  @JavascriptInterface
  public boolean doCommand(String paramString, String[] paramArrayOfString)
  {
    if (paramString == null)
      paramString = "";
    String[] arrayOfString = paramString.split("\\|");
    if (arrayOfString.length != 2)
    {
      new Object[] { "脚本执行异常,替换后的commandname无法解析,commandWrapName", paramString };
      CommandLogUtil.upErrorInfo(null, new Object[] { "脚本执行异常,替换后的commandname无法解析,commandWrapName:", paramString });
      return false;
    }
    String str1 = arrayOfString[0];
    String str2 = arrayOfString[1];
    CommandManager.WrapBaseCommand localWrapBaseCommand1 = CommandManager.a(str2);
    if (localWrapBaseCommand1 == null)
      CmdCenterFacadeInvoke.a().b();
    for (CommandManager.WrapBaseCommand localWrapBaseCommand2 = CommandManager.a(str2); ; localWrapBaseCommand2 = localWrapBaseCommand1)
    {
      if ((localWrapBaseCommand2 == null) || (localWrapBaseCommand2.c() == null))
      {
        new Object[] { "TASKUUID:", str1, ",commandId:", str2, "不存在." };
        CommandLogUtil.upErrorInfo(null, new Object[] { "TASKUUID:", str1, ",commandId:", str2, "不存在." });
        return false;
      }
      Object[] arrayOfObject1 = new Object[8];
      arrayOfObject1[0] = "Method---->TASKUUID:";
      arrayOfObject1[1] = str1;
      arrayOfObject1[2] = ",commandName:";
      arrayOfObject1[3] = localWrapBaseCommand2.b();
      arrayOfObject1[4] = ",commandId:";
      arrayOfObject1[5] = str2;
      arrayOfObject1[6] = ",开始时间:";
      arrayOfObject1[7] = Long.valueOf(System.currentTimeMillis());
      boolean bool = localWrapBaseCommand2.c().doProcess(str1, paramArrayOfString);
      Object[] arrayOfObject2 = new Object[10];
      arrayOfObject2[0] = "Method---->TASKUUID:";
      arrayOfObject2[1] = str1;
      arrayOfObject2[2] = ",commandName:";
      arrayOfObject2[3] = localWrapBaseCommand2.b();
      arrayOfObject2[4] = ",commandId:";
      arrayOfObject2[5] = str2;
      arrayOfObject2[6] = ",执行结果:";
      arrayOfObject2[7] = Boolean.valueOf(bool);
      arrayOfObject2[8] = ",结束时间:";
      arrayOfObject2[9] = Long.valueOf(System.currentTimeMillis());
      return bool;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.BridgeJsToJava
 * JD-Core Version:    0.6.2
 */