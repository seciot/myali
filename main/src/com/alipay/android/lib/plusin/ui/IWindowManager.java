package com.alipay.android.lib.plusin.ui;

import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.sys.IDispose;

public abstract interface IWindowManager extends IDispose
{
  public abstract void a(BizUiData paramBizUiData);

  public abstract void a(DataProcessor paramDataProcessor, WindowData paramWindowData);

  public abstract void a(DataProcessor paramDataProcessor, Exception paramException);

  public abstract void a(Object paramObject);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.ui.IWindowManager
 * JD-Core Version:    0.6.2
 */