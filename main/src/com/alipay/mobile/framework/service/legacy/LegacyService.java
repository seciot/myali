package com.alipay.mobile.framework.service.legacy;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import com.alipay.mobile.framework.service.ext.ExternalService;
import java.io.File;
import java.util.Map;

public abstract class LegacyService extends ExternalService
{
  public static final int KEEP_ALIVE_TIME = 5;
  public static final int POOL_SIZE = 4;
  public static final int QUEUE_SIZE = 128;
  public static boolean mFinishPage = false;
  public static boolean mFinishPageFirst = false;
  public static BroadcastReceiver mSafepayInstallreceiver;

  public abstract File certVerify(String paramString1, String paramString2);

  public abstract void executeTask(Runnable paramRunnable);

  public abstract void finishCurrentActivity();

  public abstract Activity getActivity();

  public abstract Map<String, Class<?>> getEngines();

  public abstract boolean isBankListRefresh();

  public abstract boolean isDispathced();

  public abstract boolean isFirstInTransferToAccount();

  public abstract boolean isFirstTransfer();

  public abstract boolean isSavedCCRBankRefresh();

  public abstract boolean isVerifySuccess();

  public abstract void loadLotteryEnterance();

  public abstract void myDestroy();

  public abstract void notifyUpdateSession();

  public abstract void sendMessage(String paramString1, String paramString2, String paramString3, String paramString4);

  public abstract void setActivity(Activity paramActivity);

  public abstract void setBankListRefresh(boolean paramBoolean);

  public abstract void setDispathced(boolean paramBoolean);

  public abstract void setFirstInTransfer(boolean paramBoolean);

  public abstract void setFirstInTransferToAccount(boolean paramBoolean);

  public abstract void setSavedCCRBankRefresh(boolean paramBoolean);

  public abstract void setVerifySuccess(boolean paramBoolean);

  public abstract void showToast(String paramString);

  public abstract void startActivity(String paramString1, String paramString2);

  public abstract void startPaipai(Context paramContext);

  public abstract void stepBackward();

  public abstract void stepForward();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.legacy.LegacyService
 * JD-Core Version:    0.6.2
 */