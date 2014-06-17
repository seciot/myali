package com.alipay.mobile.command.model;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.mobile.command.api.model.TaskMeta;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.command.util.CommandLogUtil;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.SignVerifyTool;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class TaskMetaWrap
  implements Serializable
{
  private static final long serialVersionUID = -5428788044920436605L;
  private long intevalTime = -1L;
  private String jsScript;
  private long minuteTiming = -1L;
  private String notifyEventFlag = null;
  private int property = 1;
  private String runtimeBizContext = null;
  private TaskMeta taskMeta;

  public TaskMetaWrap(TaskMeta paramTaskMeta)
  {
    if (paramTaskMeta == null)
      throw new RuntimeException("initial TaskMeta args can not be null");
    this.taskMeta = paramTaskMeta;
    List localList = paramTaskMeta.getCronExpress();
    if ((localList != null) && (localList.size() > 0))
    {
      Iterator localIterator = localList.iterator();
      label324: 
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        String str3;
        if (str1.startsWith(TriggerTypeEnum.TIME.getType() + "#"))
          try
          {
            str3 = str1.replace(TriggerTypeEnum.TIME.getType() + "#", "");
            if (TextUtils.isEmpty(str3))
              continue;
            if (str3.toUpperCase().endsWith("I"))
              this.intevalTime = Integer.valueOf(str3.replaceAll("I", "")).intValue();
          }
          catch (Throwable localThrowable)
          {
          }
        else
          while (true)
          {
            if (!str1.startsWith(TriggerTypeEnum.NOTIFY.getType() + "#"))
              break label324;
            String str2 = str1.replace(TriggerTypeEnum.NOTIFY.getType() + "#", "");
            if (TextUtils.isEmpty(str2))
              break;
            this.notifyEventFlag = str2;
            break;
            if (str3.toUpperCase().endsWith("P"))
              this.minuteTiming = Integer.valueOf(str3.replaceAll("P", "")).intValue();
          }
      }
    }
  }

  public TaskMetaWrap clone()
  {
    return new TaskMetaWrap(this.taskMeta);
  }

  public List<String> getCronExpress()
  {
    return (List)CommandUtil.specifyProperty(this.taskMeta.getCronExpress(), new ArrayList());
  }

  public List<String> getDepencyCommandList()
  {
    return (List)CommandUtil.specifyProperty(this.taskMeta.getCommandDependency(), new ArrayList());
  }

  public long getIntevalTime()
  {
    return this.intevalTime;
  }

  public String getJsScript()
  {
    if (this.jsScript == null)
    {
      if (initialVerifyScript())
        return this.jsScript;
      throw new RuntimeException("非法调用,该非法的调用必须建立在脚本初始化成功完毕.");
    }
    return this.jsScript;
  }

  public String getMd5()
  {
    return (String)CommandUtil.specifyProperty(this.taskMeta.getMd5(), "");
  }

  public long getMinuteTiming()
  {
    return this.minuteTiming;
  }

  public String getNotifyEventFlag()
  {
    return this.notifyEventFlag;
  }

  public int getProperty()
  {
    return this.property;
  }

  public String getRuntimeBizContext()
  {
    return this.runtimeBizContext;
  }

  public String getScriptContext()
  {
    return (String)CommandUtil.specifyProperty(this.taskMeta.getScriptContent(), "");
  }

  public String getScriptName()
  {
    return (String)CommandUtil.specifyProperty(this.taskMeta.getScriptName(), "");
  }

  public String getSignature()
  {
    return (String)CommandUtil.specifyProperty(this.taskMeta.getSignature(), "");
  }

  public String getTaskName()
  {
    return (String)CommandUtil.specifyProperty(this.taskMeta.getName(), "");
  }

  public String getUuid()
  {
    return (String)CommandUtil.specifyProperty(this.taskMeta.getUuid(), "");
  }

  public boolean initialVerifyScript()
  {
    if ((this.jsScript != null) && (this.jsScript.trim().length() > 0))
      return true;
    try
    {
      File localFile = new File(CommandConfig.getContext().getDir("installApkCache", 0).getAbsolutePath() + File.separatorChar + this.taskMeta.getUuid() + "_" + System.currentTimeMillis() + ".apk");
      CommandUtil.decoderBase64File(getScriptContext(), localFile);
      if (!SignVerifyTool.verifyApk(SignVerifyTool.getPackageSignatures(CommandConfig.getContext(), CommandConfig.getContext().getPackageName()), localFile.getAbsolutePath(), CommandUtil.fetchJsFileNameFromApk(new File(localFile.getAbsolutePath()))))
        break label168;
      String str = CommandUtil.fetchJsInfo(localFile);
      if ((str != null) && (str.trim().length() > 0))
      {
        this.jsScript = str;
        return true;
      }
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
    return false;
    label168: Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = "脚本签名信息异常:";
    arrayOfObject1[1] = toString();
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = "脚本签名信息异常:";
    arrayOfObject2[1] = toString();
    CommandLogUtil.upErrorInfo(null, arrayOfObject2);
    return false;
  }

  public void setIntevalTime(long paramLong)
  {
    this.intevalTime = paramLong;
  }

  public void setMinuteTiming(long paramLong)
  {
    this.minuteTiming = paramLong;
  }

  public void setNotifyEventFlag(String paramString)
  {
    this.notifyEventFlag = paramString;
  }

  public void setProperty(int paramInt)
  {
    this.property = paramInt;
  }

  public void setRuntimeBizContext(String paramString)
  {
    this.runtimeBizContext = paramString;
  }

  public String toString()
  {
    return this.taskMeta.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.TaskMetaWrap
 * JD-Core Version:    0.6.2
 */