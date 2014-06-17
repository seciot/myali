package com.alipay.mobile.scan;

import android.content.Intent;
import com.alipay.mobile.framework.service.ext.ExternalService;

public abstract class ScanService extends ExternalService
{
  public abstract void notifyScanResult(boolean paramBoolean, Intent paramIntent);

  public abstract void scan(ScanRequest paramScanRequest, ScanCallback paramScanCallback);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.scan.ScanService
 * JD-Core Version:    0.6.2
 */