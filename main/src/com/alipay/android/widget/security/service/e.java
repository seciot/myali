package com.alipay.android.widget.security.service;

import android.annotation.SuppressLint;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobilesecurity.biz.gw.service.securitywidget.SecurityWidgetFacade;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogReq;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogRes;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public final class e
{
  private static String b = "SecurityOperateRecordsService";
  protected ActivityApplication a;
  private String c;

  public e(ActivityApplication paramActivityApplication, String paramString)
  {
    this.a = paramActivityApplication;
    this.c = paramString;
  }

  @SuppressLint({"SimpleDateFormat"})
  public static String a(Date paramDate)
  {
    if (paramDate != null)
      return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(paramDate);
    return null;
  }

  private static String b(Date paramDate)
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.setTime(paramDate);
    localCalendar.set(5, -15 + localCalendar.get(5));
    return a(localCalendar.getTime());
  }

  public final OperationsLogRes a(String paramString1, String paramString2)
  {
    SecurityWidgetFacade localSecurityWidgetFacade = (SecurityWidgetFacade)((RpcService)this.a.getServiceByInterface(RpcService.class.getName())).getRpcProxy(SecurityWidgetFacade.class);
    OperationsLogReq localOperationsLogReq = new OperationsLogReq();
    localOperationsLogReq.setLoginId(this.c);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add("login");
    localArrayList.add("UserLogin");
    localArrayList.add("WapLogin");
    localOperationsLogReq.setNormType(localArrayList);
    localOperationsLogReq.setPageNum(10);
    Date localDate1 = new Date();
    if ((paramString1 == null) || ("forward".equals(paramString2)))
      localOperationsLogReq.setStartDate(b(localDate1));
    while (true)
    {
      if ((paramString1 == null) || ("forward".equals(paramString2)))
      {
        localOperationsLogReq.setEndDate(a(localDate1));
        label150: if (paramString2 != null)
          break label256;
        localOperationsLogReq.setDirect("forward");
      }
      try
      {
        while (true)
        {
          OperationsLogRes localOperationsLogRes = localSecurityWidgetFacade.queryOperationsLog(localOperationsLogReq);
          return localOperationsLogRes;
          if (paramString1 != null);
          while (true)
          {
            try
            {
              localDate2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(paramString1);
              localOperationsLogReq.setStartDate(dexopt(localDate2));
            }
            catch (ParseException localParseException)
            {
              new StringBuilder("{[info=OperationsLogRes], [msg=").append(localParseException.getMessage()).append("]}").toString();
            }
            break;
            Date localDate2 = null;
          }
          localOperationsLogReq.setEndDate(paramString1);
          break label150;
          label256: localOperationsLogReq.setDirect(paramString2);
        }
      }
      catch (RpcException localRpcException)
      {
        new StringBuilder("{[info=initListView], [msg=").append(localRpcException.getMessage()).append("]}").toString();
        throw localRpcException;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.e
 * JD-Core Version:    0.6.2
 */