package com.alipay.mobile.command.invoke;

import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.mobile.command.api.CmdCenterFacade;
import com.alipay.mobile.command.api.model.CommandMeta;
import com.alipay.mobile.command.api.model.GetRCTaskReq;
import com.alipay.mobile.command.api.model.GetRCTaskRes;
import com.alipay.mobile.command.api.model.MapConstructor;
import com.alipay.mobile.command.api.model.SyncCommandMetaRes;
import com.alipay.mobile.command.api.model.SyncCommandTaskMetaReq;
import com.alipay.mobile.command.api.model.SyncTaskMetaRes;
import com.alipay.mobile.command.api.model.TaskMeta;
import com.alipay.mobile.command.manager.CommandManager;
import com.alipay.mobile.command.manager.RuntimeInfoManager;
import com.alipay.mobile.command.manager.TaskManager;
import com.alipay.mobile.command.model.CommandMetaCollect;
import com.alipay.mobile.command.model.CommandMetaWrap;
import com.alipay.mobile.command.model.SeriMetaResult;
import com.alipay.mobile.command.model.SerializeTypeEnum;
import com.alipay.mobile.command.model.TaskMetaCollect;
import com.alipay.mobile.command.model.TaskMetaWrap;
import com.alipay.mobile.command.rpc.proxy.RpcFactory;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.CommandUtil.MetaTypeEnum;
import com.alipay.mobile.command.util.ThreadPools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;

public final class CmdCenterFacadeInvoke
{
  private static CmdCenterFacadeInvoke b = new CmdCenterFacadeInvoke();
  private CmdCenterFacade a = (CmdCenterFacade)RpcFactory.buildRpcProxy(CmdCenterFacade.class, SerializeTypeEnum.JSON, new a(this));

  public static CmdCenterFacadeInvoke a()
  {
    return b;
  }

  public final TaskMetaWrap a(String paramString, List<MapConstructor> paramList)
  {
    while (true)
    {
      TaskMetaWrap localTaskMetaWrap;
      try
      {
        TaskMetaCollect localTaskMetaCollect = (TaskMetaCollect)CommandUtil.readMeta(CommandUtil.MetaTypeEnum.TASK).getMeta();
        GetRCTaskReq localGetRCTaskReq = new GetRCTaskReq();
        ArrayList localArrayList1 = new ArrayList();
        if (paramList != null)
          localGetRCTaskReq.setClientInfo(paramList);
        if (!TextUtils.isEmpty(paramString))
          localArrayList1.add(paramString);
        localGetRCTaskReq.setTaskUUID(localArrayList1);
        GetRCTaskRes localGetRCTaskRes = this.a.getRCTask(localGetRCTaskReq);
        if ((localGetRCTaskRes == null) || (localGetRCTaskRes.getTaskMetaList() == null))
          break label225;
        ArrayList localArrayList2 = new ArrayList();
        Iterator localIterator = localGetRCTaskRes.getTaskMetaList().iterator();
        localObject2 = null;
        if (localIterator.hasNext())
        {
          TaskMeta localTaskMeta = (TaskMeta)localIterator.next();
          localTaskMetaWrap = new TaskMetaWrap(localTaskMeta);
          localArrayList2.add(localTaskMetaWrap);
          if (localTaskMeta.getUuid().equals(paramString))
            break label231;
          if (TextUtils.isEmpty(paramString))
            break label231;
        }
        else
        {
          TaskManager.upateTaskMeta(localTaskMetaCollect, localArrayList2, null);
          return localObject2;
        }
      }
      catch (Throwable localThrowable)
      {
        new Object[] { "getRcError" };
        localObject2 = null;
        continue;
      }
      finally
      {
      }
      Object localObject3 = localObject2;
      break label235;
      label225: Object localObject2 = null;
      continue;
      label231: localObject3 = localTaskMetaWrap;
      label235: localObject2 = localObject3;
    }
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    ThreadPools.applyDefaultThreadPool("service_triger").execute(new c(this, paramString, paramBoolean));
  }

  public final void b()
  {
    while (true)
    {
      CommandMetaCollect localCommandMetaCollect;
      SyncCommandMetaRes localSyncCommandMetaRes;
      ArrayList localArrayList;
      try
      {
        localCommandMetaCollect = (CommandMetaCollect)CommandUtil.readMeta(CommandUtil.MetaTypeEnum.COMMAND).getMeta();
        if (localCommandMetaCollect == null)
        {
          localObject2 = null;
          SyncCommandTaskMetaReq localSyncCommandTaskMetaReq = new SyncCommandTaskMetaReq();
          localSyncCommandTaskMetaReq.setAlipayWalletVersion(RuntimeInfoManager.getInstance().getProductVersion());
          localSyncCommandTaskMetaReq.setUuidList((List)localObject2);
          localSyncCommandTaskMetaReq.setOsName("Android");
          localSyncCommandTaskMetaReq.setOsVersion(Build.VERSION.SDK_INT);
          localSyncCommandMetaRes = this.a.syncCommand(localSyncCommandTaskMetaReq);
          if (localSyncCommandMetaRes != null)
          {
            localArrayList = new ArrayList();
            if (localSyncCommandMetaRes.getCommandList() == null)
              break label192;
            Iterator localIterator = localSyncCommandMetaRes.getCommandList().iterator();
            if (!localIterator.hasNext())
              break label192;
            localArrayList.add(new CommandMetaWrap((CommandMeta)localIterator.next()));
            continue;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        new Object[] { "syncCmdError" };
        return;
        Object localObject2 = new ArrayList(localCommandMetaCollect.getCommandWrapMap().keySet());
        continue;
      }
      finally
      {
      }
      label192: CommandManager.a(localCommandMetaCollect, localArrayList, localSyncCommandMetaRes.getInValidCommandUUID());
    }
  }

  public final void c()
  {
    while (true)
    {
      TaskMetaCollect localTaskMetaCollect;
      SyncTaskMetaRes localSyncTaskMetaRes;
      ArrayList localArrayList;
      try
      {
        localTaskMetaCollect = (TaskMetaCollect)CommandUtil.readMeta(CommandUtil.MetaTypeEnum.TASK).getMeta();
        if (localTaskMetaCollect == null)
        {
          localObject2 = null;
          SyncCommandTaskMetaReq localSyncCommandTaskMetaReq = new SyncCommandTaskMetaReq();
          localSyncCommandTaskMetaReq.setAlipayWalletVersion(RuntimeInfoManager.getInstance().getProductVersion());
          localSyncCommandTaskMetaReq.setUuidList((List)localObject2);
          localSyncCommandTaskMetaReq.setOsName("Android");
          localSyncCommandTaskMetaReq.setOsVersion(Build.VERSION.SDK_INT);
          localSyncTaskMetaRes = this.a.syncTask(localSyncCommandTaskMetaReq);
          if (localSyncTaskMetaRes != null)
          {
            localArrayList = new ArrayList();
            if (localSyncTaskMetaRes.getTaskList() == null)
              break label192;
            Iterator localIterator = localSyncTaskMetaRes.getTaskList().iterator();
            if (!localIterator.hasNext())
              break label192;
            localArrayList.add(new TaskMetaWrap((TaskMeta)localIterator.next()));
            continue;
          }
        }
      }
      catch (Throwable localThrowable)
      {
        new Object[] { "syncTaskError" };
        return;
        Object localObject2 = new ArrayList(localTaskMetaCollect.getTaskWrapMap().keySet());
        continue;
      }
      finally
      {
      }
      label192: TaskManager.upateTaskMeta(localTaskMetaCollect, localArrayList, localSyncTaskMetaRes.getInValidTaskUUID());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.invoke.CmdCenterFacadeInvoke
 * JD-Core Version:    0.6.2
 */