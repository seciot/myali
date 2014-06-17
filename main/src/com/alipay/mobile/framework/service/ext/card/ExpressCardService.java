package com.alipay.mobile.framework.service.ext.card;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class ExpressCardService extends ExternalService
{
  public abstract void clearCallback();

  public abstract void newExpressCard(String paramString, NewExpressCardCallback paramNewExpressCardCallback);

  public abstract void newExpressCard(String paramString, NewExpressCardCallback paramNewExpressCardCallback, Bundle paramBundle);

  public abstract void notifyAddBankCard(boolean paramBoolean);

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.card.ExpressCardService
 * JD-Core Version:    0.6.2
 */