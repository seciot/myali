package com.alipay.mobile.command.engine;

import android.text.TextUtils;
import com.alipay.mobile.command.api.model.MapConstructor;
import com.alipay.mobile.command.invoke.CmdCenterFacadeInvoke;
import com.alipay.mobile.command.manager.CommandManager;
import com.alipay.mobile.command.manager.TaskManager;
import com.alipay.mobile.command.model.CommandMetaCollect;
import com.alipay.mobile.command.model.RuntimeTaskStatusEnum;
import com.alipay.mobile.command.model.SeriMetaResult;
import com.alipay.mobile.command.model.TaskMetaWrap;
import com.alipay.mobile.command.model.TriggerTypeEnum;
import com.alipay.mobile.command.trigger.PublicApiInvoke;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.CommandUtil.MetaTypeEnum;
import com.alipay.mobile.command.util.JsonUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;

public class TaskTriggerService
{
  private static String a = null;

  private static void a()
  {
    if (!CommandManager.a())
      CommandManager.a((CommandMetaCollect)CommandUtil.readMeta(CommandUtil.MetaTypeEnum.COMMAND).getMeta(), null, null);
    if (!TaskManager.isHasTask())
      CmdCenterFacadeInvoke.a().c();
  }

  public static void a(TriggerTypeEnum paramTriggerTypeEnum, long paramLong, String paramString1, String paramString2)
  {
    label193: int j;
    label605: Map localMap1;
    while (true)
    {
      Map localMap2;
      try
      {
        if (TriggerTypeEnum.CONNECTIVITY_CHANGE != paramTriggerTypeEnum)
          a = CommandUtil.fetchConnectedNetType();
        switch (h.a[paramTriggerTypeEnum.ordinal()])
        {
        default:
          new StringBuilder("当前任务类型系统中没有配置对应的处理器!").append(paramTriggerTypeEnum).toString();
          return;
        case 1:
          if (CommandUtil.isNeedDoDurTimeTask(CommandUtil.getSp(), "trigger_syn_timer", 4800000L))
          {
            new Object[] { "trigger:", paramTriggerTypeEnum, ",syn System resource(command\task)!" };
            b();
            localMap2 = TaskManager.currentTaskMaps();
            if ((localMap2 != null) && (!localMap2.isEmpty()))
              break label193;
            new Object[] { "trigger:", paramTriggerTypeEnum, ",no tasks to be done" };
            continue;
          }
          break;
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        }
      }
      finally
      {
      }
      a();
      continue;
      long l1 = Long.valueOf(paramLong).longValue();
      long l2 = CommandUtil.fetchCurrnetMiniTimeInIntervalModel() - l1;
      Iterator localIterator2 = localMap2.values().iterator();
      while (localIterator2.hasNext())
      {
        TaskMetaWrap localTaskMetaWrap3 = (TaskMetaWrap)localIterator2.next();
        if ((localTaskMetaWrap3.getIntevalTime() > 0L) && (l2 % localTaskMetaWrap3.getIntevalTime() == 0L))
        {
          Object[] arrayOfObject3 = new Object[6];
          arrayOfObject3[0] = "startTime:";
          arrayOfObject3[1] = Long.valueOf(l1);
          arrayOfObject3[2] = ",spendTime:";
          arrayOfObject3[3] = Long.valueOf(l2);
          arrayOfObject3[4] = ",i each:";
          arrayOfObject3[5] = localTaskMetaWrap3;
          TaskManager.startTask(localTaskMetaWrap3.getUuid(), 0, false, false, paramString2);
        }
        else if (localTaskMetaWrap3.getMinuteTiming() > 0L)
        {
          long l3 = System.currentTimeMillis() / 60L / 1000L - localTaskMetaWrap3.getMinuteTiming();
          if ((l3 >= 0L) && (l3 <= 10L))
          {
            Object[] arrayOfObject2 = new Object[6];
            arrayOfObject2[0] = "startTime:";
            arrayOfObject2[1] = Long.valueOf(l1);
            arrayOfObject2[2] = ",spendTime:";
            arrayOfObject2[3] = Long.valueOf(l2);
            arrayOfObject2[4] = ", p each:";
            arrayOfObject2[5] = localTaskMetaWrap3;
            TaskManager.startTask(localTaskMetaWrap3.getUuid(), 0, false, false, paramString2);
          }
        }
      }
      continue;
      a();
      if (d())
      {
        c();
        continue;
        new Object[] { "start task(Recovery)" };
        b();
        c();
        a(TriggerTypeEnum.LOGIN, paramString2);
        continue;
        a();
        a(paramTriggerTypeEnum, paramString2);
        continue;
        boolean bool2 = TextUtils.isEmpty(paramString1);
        if (!bool2)
        {
          try
          {
            String[] arrayOfString1 = paramString1.split(",");
            if (arrayOfString1.length <= 0)
              continue;
            int n = arrayOfString1.length;
            for (int i1 = 0; i1 < n; i1++)
            {
              String[] arrayOfString2 = arrayOfString1[i1].split("#");
              TaskManager.startTask(arrayOfString2[0], -1, Boolean.valueOf(arrayOfString2[1]).booleanValue(), false, null);
            }
          }
          catch (Exception localException2)
          {
            new Object[] { "exe Triger_biz error." };
          }
          continue;
          a();
          if (!TextUtils.isEmpty(paramString2))
          {
            j = 1;
            localMap1 = TaskManager.currentTaskMaps();
            if ((localMap1 != null) && (!localMap1.isEmpty()))
              break;
            new Object[] { "未找到任务列表" };
          }
        }
      }
    }
    int k = 0;
    Iterator localIterator1 = localMap1.values().iterator();
    while (true)
    {
      while (true)
      {
        if (localIterator1.hasNext())
        {
          TaskMetaWrap localTaskMetaWrap2 = (TaskMetaWrap)localIterator1.next();
          if (!paramString1.equals(localTaskMetaWrap2.getNotifyEventFlag()))
            break label883;
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = "notify trigger,flag:";
          arrayOfObject1[1] = localTaskMetaWrap2.getNotifyEventFlag();
          TaskManager.startTask(localTaskMetaWrap2.getUuid(), 0, false, false, paramString2);
          m = 1;
          break label887;
        }
        if ((k != 0) || (j == 0))
          break;
        b();
        j = 0;
        break label605;
        a();
        boolean bool1 = TextUtils.isEmpty(paramString1);
        if (bool1)
          break;
        try
        {
          JSONArray localJSONArray = new JSONArray(paramString1);
          ArrayList localArrayList = new ArrayList();
          for (int i = 0; i < localJSONArray.length(); i++)
          {
            MapConstructor localMapConstructor = new MapConstructor();
            JsonUtil.fill(localJSONArray.getJSONObject(i), localMapConstructor, PublicApiInvoke.class.getClassLoader());
            localArrayList.add(localMapConstructor);
          }
          if (localArrayList.size() <= 0)
            break;
          TaskMetaWrap localTaskMetaWrap1 = CmdCenterFacadeInvoke.a().a(null, localArrayList);
          if (localTaskMetaWrap1 == null)
            break;
          TaskManager.startTask(localTaskMetaWrap1.getUuid(), -1, true, false, paramString2);
        }
        catch (Exception localException1)
        {
        }
      }
      break;
      label883: int m = k;
      label887: k = m;
    }
  }

  private static void a(TriggerTypeEnum paramTriggerTypeEnum, String paramString)
  {
    Map localMap = TaskManager.currentTaskMaps();
    if ((localMap == null) || (localMap.isEmpty()))
      new Object[] { "未找到任务列表" };
    while (true)
    {
      return;
      Iterator localIterator = localMap.values().iterator();
      while (localIterator.hasNext())
      {
        TaskMetaWrap localTaskMetaWrap = (TaskMetaWrap)localIterator.next();
        if (localTaskMetaWrap.getCronExpress().contains(paramTriggerTypeEnum.getType()))
          TaskManager.startTask(localTaskMetaWrap.getUuid(), 0, false, false, paramString);
      }
    }
  }

  private static void b()
  {
    new Object[] { "start syn Command!" };
    CmdCenterFacadeInvoke.a().b();
    new Object[] { "start syn Task!" };
    CmdCenterFacadeInvoke.a().c();
  }

  private static void c()
  {
    try
    {
      new Object[] { "start recovery Task!" };
      Map localMap = (Map)CommandUtil.readMeta(CommandUtil.MetaTypeEnum.RUNTIME_TASK).getMeta();
      if (localMap != null)
      {
        Iterator localIterator = localMap.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          new Object[] { "recovery Task-", str, "!" };
          TaskManager.updataRuntimeTask(str, RuntimeTaskStatusEnum.I, false);
          TaskManager.startTask(str, -1, false, true, null);
        }
      }
    }
    finally
    {
    }
    new Object[] { "Recovery Task Op finish" };
  }

  // ERROR //
  private static boolean d()
  {
    // Byte code:
    //   0: invokestatic 64	com/alipay/mobile/command/util/CommandUtil:fetchConnectedNetType	()Ljava/lang/String;
    //   3: astore 6
    //   5: aload 6
    //   7: getstatic 10	com/alipay/mobile/command/engine/TaskTriggerService:a	Ljava/lang/String;
    //   10: invokevirtual 231	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   13: ifne +100 -> 113
    //   16: aload 6
    //   18: ldc_w 322
    //   21: invokevirtual 231	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   24: istore 8
    //   26: iload 8
    //   28: ifne +23 -> 51
    //   31: iconst_1
    //   32: istore_3
    //   33: aload 6
    //   35: putstatic 10	com/alipay/mobile/command/engine/TaskTriggerService:a	Ljava/lang/String;
    //   38: iconst_1
    //   39: anewarray 4	java/lang/Object
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 324
    //   47: aastore
    //   48: pop
    //   49: iload_3
    //   50: ireturn
    //   51: iconst_1
    //   52: anewarray 4	java/lang/Object
    //   55: dup
    //   56: iconst_0
    //   57: ldc_w 326
    //   60: aastore
    //   61: pop
    //   62: iconst_0
    //   63: istore_3
    //   64: goto -31 -> 33
    //   67: astore_2
    //   68: iconst_0
    //   69: istore_3
    //   70: iconst_1
    //   71: anewarray 4	java/lang/Object
    //   74: dup
    //   75: iconst_0
    //   76: ldc_w 328
    //   79: aastore
    //   80: pop
    //   81: iconst_1
    //   82: anewarray 4	java/lang/Object
    //   85: dup
    //   86: iconst_0
    //   87: ldc_w 324
    //   90: aastore
    //   91: pop
    //   92: iload_3
    //   93: ireturn
    //   94: astore_0
    //   95: iconst_1
    //   96: anewarray 4	java/lang/Object
    //   99: dup
    //   100: iconst_0
    //   101: ldc_w 324
    //   104: aastore
    //   105: pop
    //   106: aload_0
    //   107: athrow
    //   108: astore 10
    //   110: goto -40 -> 70
    //   113: iconst_0
    //   114: istore_3
    //   115: goto -77 -> 38
    //
    // Exception table:
    //   from	to	target	type
    //   0	26	67	java/lang/Throwable
    //   51	62	67	java/lang/Throwable
    //   0	26	94	finally
    //   33	38	94	finally
    //   51	62	94	finally
    //   70	81	94	finally
    //   33	38	108	java/lang/Throwable
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.engine.TaskTriggerService
 * JD-Core Version:    0.6.2
 */