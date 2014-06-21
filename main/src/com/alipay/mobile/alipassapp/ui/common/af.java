package com.alipay.mobile.alipassapp.ui.common;

import android.os.SystemClock;
import com.alipay.mobile.common.utils.StringUtils;

final class af
  implements Runnable
{
  af(ae paramae, String paramString)
  {
  }

  public final void run()
  {
    ae.a(this.b, Boolean.valueOf(false));
    if (!ae.a());
    int i;
    int j;
    label76: 
    do
    {
      do
      {
        return;
        new StringBuilder("loopQueryTask dynamicId=").append(this.a).toString();
        ae.getBundle(this.b);
        ae.b(this.b);
        i = ae.c(this.b);
        j = 1;
        if (j >= 20)
          break;
        new StringBuilder("loopQueryTask continueLoop=").append(ae.d(this.b)).toString();
      }
      while ((!ae.d(this.b)) || (StringUtils.isBlank(this.a)));
      new StringBuilder("loopQueryTask currentLoopQueryTime=").append(i).append(" excuteloopQueryTimes=").append(ae.c(this.b)).toString();
    }
    while (i != ae.c(this.b));
    new StringBuilder("过滤后:第{").append(i).append("}次调用loopQueryTask,动态码:{").append(this.a).append("}  短轮询第{").append(j).append("}次").toString();
    if (j == 1)
      SystemClock.sleep(3000L);
    while (true)
    {
      ae.a(this.b, this.a);
      j++;
      break label76;
      break;
      SystemClock.sleep(2000L);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.af
 * JD-Core Version:    0.6.2
 */