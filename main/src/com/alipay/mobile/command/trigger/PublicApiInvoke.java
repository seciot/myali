package com.alipay.mobile.command.trigger;

import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.command.api.model.MapConstructor;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.model.TriggerTypeEnum;
import com.alipay.mobile.command.util.JsonUtil;
import java.util.List;

public class PublicApiInvoke
{
  public static void doBizProcess(Context paramContext, String paramString, List<MapConstructor> paramList)
  {
    Intent localIntent = new Intent(paramContext, TaskExeService.class);
    localIntent.putExtra("trigger_type", TriggerTypeEnum.API.getType());
    if ((paramList != null) && (paramList.size() > 0))
    {
      String str = JsonUtil.toJsonString(paramList).replace("\\", "").replace("\"{\"", "{\"").replace("\"}\"", "\"}").replace("\"[", "[").replace("]\"", "]");
      localIntent.putExtra("trigger_biz_context", str);
      localIntent.putExtra("trigger_fm_context", str);
      paramContext.startService(localIntent);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.PublicApiInvoke
 * JD-Core Version:    0.6.2
 */