package com.alipay.test.ui.core;

import android.content.Context;
import java.util.List;

public abstract interface ITestCasePlanQuery
{
  public abstract List<String> queryPlanCaseName(Context paramContext, String paramString);

  public abstract List<String> queryTestPlanList(Context paramContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.test.ui.core.ITestCasePlanQuery
 * JD-Core Version:    0.6.2
 */