package com.alipay.mobile.framework.service.ext.fund;

import android.content.ContextWrapper;
import android.os.Bundle;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class FundService extends ExternalService
{
  public abstract void checkFundOpenInfo(ActivityApplication paramActivityApplication, ContextWrapper paramContextWrapper, Runnable paramRunnable1, boolean paramBoolean, Runnable paramRunnable2);

  public abstract void createFundAccount(Bundle paramBundle, CreateFundCallback paramCreateFundCallback);

  public abstract void goFundIndexPage(ActivityApplication paramActivityApplication);

  public abstract void goFundRealIndexPage(ActivityApplication paramActivityApplication);

  public abstract void transferFund(Bundle paramBundle, TransferFundCallback paramTransferFundCallback);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.fund.FundService
 * JD-Core Version:    0.6.2
 */