package com.alipay.mobile.command.engine;

import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.alipay.mobile.command.manager.TaskManager;
import com.alipay.mobile.command.model.RuntimeTaskStatusEnum;
import com.alipay.mobile.command.util.CommandLogUtil;

final class a extends WebChromeClient
{
  a(ScripterExecutor paramScripterExecutor)
  {
  }

  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    if ((paramString2 != null) && (paramString2.contains("js-ext-command-error")))
    {
      new Object[] { "执行任务异常,message:", paramString2 };
      CommandLogUtil.upErrorInfo(null, new Object[] { "执行任务异常,message:", paramString2 });
    }
    if ((paramString2 != null) && (paramString2.contains("js-ext-command-finish")));
    try
    {
      String[] arrayOfString = paramString2.split("\\|");
      new Object[] { "脚本执行完毕。message:", paramString2 };
      TaskManager.updataRuntimeTask(arrayOfString[0], RuntimeTaskStatusEnum.F, Boolean.valueOf(arrayOfString[2]).booleanValue());
      paramJsResult.cancel();
      return true;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        new Object[] { "脚本执行完毕,解析 message:", paramString2, ",异常。" };
        CommandLogUtil.upErrorInfo(null, new Object[] { "脚本执行完毕,解析 message:", paramString2, ",异常。" });
      }
    }
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.a
 * JD-Core Version:    0.6.2
 */