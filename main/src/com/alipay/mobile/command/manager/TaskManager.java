package com.alipay.mobile.command.manager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import com.alipay.mobile.command.invoke.CmdCenterFacadeInvoke;
import com.alipay.mobile.command.model.RuntimeTaskStatusEnum;
import com.alipay.mobile.command.model.SeriMetaResult;
import com.alipay.mobile.command.model.TaskMetaCollect;
import com.alipay.mobile.command.model.TaskMetaWrap;
import com.alipay.mobile.command.util.CommandLogUtil;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.CommandUtil.MetaTypeEnum;
import com.alipay.mobile.command.util.PriorityBlockingQueueExt;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class TaskManager
{
  private static Map<String, TaskMetaWrap> a = new HashMap();
  private static Map<String, Boolean> b = new HashMap();
  private static Comparator<TaskMetaWrap> c = new d();
  private static PriorityBlockingQueueExt<TaskMetaWrap> d = new PriorityBlockingQueueExt(100, c);
  public static Handler taskExhandler = new e(Looper.getMainLooper());

  public static void clearTask()
  {
    a.clear();
  }

  public static Map<String, TaskMetaWrap> currentTaskMaps()
  {
    return a;
  }

  public static TaskMetaWrap fetchTast(String paramString)
  {
    return (TaskMetaWrap)a.get(paramString);
  }

  public static boolean isHasTask()
  {
    return (a != null) && (!a.isEmpty());
  }

  public static boolean isNeedReportStatus(String paramString)
  {
    Boolean localBoolean = (Boolean)b.get(paramString);
    if (localBoolean == null)
      return true;
    return localBoolean.booleanValue();
  }

  public static void loop()
  {
    while (true)
      try
      {
        TaskMetaWrap localTaskMetaWrap = (TaskMetaWrap)d.take();
        updataRuntimeTask(localTaskMetaWrap.getUuid(), RuntimeTaskStatusEnum.I, false);
        Message localMessage = taskExhandler.obtainMessage(273);
        localMessage.obj = localTaskMetaWrap;
        taskExhandler.sendMessage(localMessage);
      }
      catch (InterruptedException localInterruptedException)
      {
        new Object[] { "获取队列任务异常." };
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
      }
  }

  public static void startTask(String paramString1, int paramInt, boolean paramBoolean1, boolean paramBoolean2, String paramString2)
  {
    try
    {
      TaskMetaWrap localTaskMetaWrap1 = (TaskMetaWrap)a.get(paramString1);
      if (localTaskMetaWrap1 == null)
      {
        if (paramBoolean1)
          localTaskMetaWrap1 = CmdCenterFacadeInvoke.a().a(paramString1, null);
      }
      else
      {
        if (localTaskMetaWrap1 != null)
          break label111;
        Object[] arrayOfObject1 = new Object[4];
        arrayOfObject1[0] = "task fetch is null,TaskUuid:";
        arrayOfObject1[1] = paramString1;
        arrayOfObject1[2] = ",isRc:";
        arrayOfObject1[3] = Boolean.valueOf(paramBoolean1);
        if (paramBoolean2)
          updataRuntimeTask(paramString1, RuntimeTaskStatusEnum.F, false);
      }
      while (true)
      {
        return;
        CmdCenterFacadeInvoke.a().c();
        localTaskMetaWrap1 = (TaskMetaWrap)a.get(paramString1);
        break;
        label111: Object[] arrayOfObject2 = new Object[5];
        arrayOfObject2[0] = "Task--";
        arrayOfObject2[1] = localTaskMetaWrap1.getUuid();
        arrayOfObject2[2] = ",taskName--";
        arrayOfObject2[3] = localTaskMetaWrap1.getTaskName();
        arrayOfObject2[4] = ",进入队列";
        TaskMetaWrap localTaskMetaWrap2 = localTaskMetaWrap1.clone();
        localTaskMetaWrap2.setProperty(paramInt);
        localTaskMetaWrap2.setRuntimeBizContext(paramString2);
        d.add(localTaskMetaWrap2);
      }
    }
    finally
    {
    }
  }

  public static void upateTaskMeta(TaskMetaCollect paramTaskMetaCollect, List<TaskMetaWrap> paramList, List<String> paramList1)
  {
    if (paramTaskMetaCollect == null);
    Map localMap;
    try
    {
      paramTaskMetaCollect = new TaskMetaCollect();
      localMap = paramTaskMetaCollect.getTaskWrapMap();
      if (paramList1 != null)
      {
        Iterator localIterator1 = paramList1.iterator();
        while (localIterator1.hasNext())
        {
          String str = (String)localIterator1.next();
          localMap.remove(str);
          b.remove(str);
        }
      }
    }
    finally
    {
    }
    Iterator localIterator2 = localMap.values().iterator();
    while (localIterator2.hasNext())
    {
      TaskMetaWrap localTaskMetaWrap2 = (TaskMetaWrap)localIterator2.next();
      if (!localTaskMetaWrap2.initialVerifyScript())
      {
        new Object[] { "本地文件校验失败.", localTaskMetaWrap2, ",可能被篡改." };
        localMap.remove(localTaskMetaWrap2.getUuid());
        CommandLogUtil.upErrorInfo(null, new Object[] { "本地文件校验失败.", localTaskMetaWrap2, ",可能被篡改." });
        localMap.remove(localTaskMetaWrap2.getUuid());
      }
    }
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator3 = paramList.iterator();
      while (localIterator3.hasNext())
      {
        TaskMetaWrap localTaskMetaWrap1 = (TaskMetaWrap)localIterator3.next();
        byte[] arrayOfByte = Base64.decode(localTaskMetaWrap1.getScriptContext(), 0);
        if (localTaskMetaWrap1.getMd5().equals(CommandUtil.genObjectMd5sum(arrayOfByte)))
        {
          if (!CommandManager.a(localTaskMetaWrap1.getDepencyCommandList()))
          {
            new Object[] { "更新task:", localTaskMetaWrap1, "其依赖的command无法满足.尝试进行command同步" };
            CmdCenterFacadeInvoke.a().b();
          }
          if (localTaskMetaWrap1.initialVerifyScript())
          {
            localMap.put(localTaskMetaWrap1.getUuid(), localTaskMetaWrap1);
            b.put(localTaskMetaWrap1.getUuid(), Boolean.valueOf(true));
          }
        }
        else
        {
          new Object[] { "task:", localTaskMetaWrap1, " md5 veify fail!" };
          CommandLogUtil.upErrorInfo(null, new Object[] { "task:", localTaskMetaWrap1, " md5 veify fail!" });
        }
      }
    }
    a = localMap;
    CommandUtil.writerMeta(CommandUtil.MetaTypeEnum.TASK, paramTaskMetaCollect);
  }

  public static void updataRuntimeTask(String paramString, RuntimeTaskStatusEnum paramRuntimeTaskStatusEnum, boolean paramBoolean)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    Map localMap = (Map)CommandUtil.readMeta(CommandUtil.MetaTypeEnum.RUNTIME_TASK).getMeta();
    if (localMap == null);
    for (Object localObject = new ConcurrentHashMap(); ; localObject = localMap)
    {
      switch (f.a[paramRuntimeTaskStatusEnum.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        CommandUtil.writerMeta(CommandUtil.MetaTypeEnum.RUNTIME_TASK, localObject);
        return;
        ((Map)localObject).put(paramString, paramRuntimeTaskStatusEnum.name());
        continue;
        String str = (String)((Map)localObject).get(paramString);
        Object[] arrayOfObject = new Object[9];
        arrayOfObject[0] = "task:";
        arrayOfObject[1] = paramString;
        arrayOfObject[2] = "执行完毕,状态变迁:";
        arrayOfObject[3] = str;
        arrayOfObject[4] = "----->";
        arrayOfObject[5] = paramRuntimeTaskStatusEnum;
        arrayOfObject[6] = "(";
        arrayOfObject[7] = Boolean.valueOf(paramBoolean);
        arrayOfObject[8] = ")";
        if ((str != null) && (str.equals(RuntimeTaskStatusEnum.I.name())))
        {
          ((Map)localObject).remove(paramString);
          if (isNeedReportStatus(paramString))
            CmdCenterFacadeInvoke.a().a(paramString, paramBoolean);
          while (true)
          {
            d.completeElement(a.get(paramString));
            break;
            new Object[] { "task:", paramString, "本次任务放弃汇报" };
          }
        }
        d.removeElement(a.get(paramString));
      }
    }
  }

  public static void updateReportFlag(String paramString, Boolean paramBoolean)
  {
    b.put(paramString, paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.manager.TaskManager
 * JD-Core Version:    0.6.2
 */