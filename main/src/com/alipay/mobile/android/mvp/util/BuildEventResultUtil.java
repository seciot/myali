package com.alipay.mobile.android.mvp.util;

import com.alipay.mobile.android.mvp.DataEvent;
import com.alipay.mobile.android.mvp.model.MvpResult;

public class BuildEventResultUtil
{
  public static final <T> DataEvent<MvpResult<T>> buildDataEvent4Exception(Exception paramException, String paramString, T paramT)
  {
    DataEvent localDataEvent = new DataEvent();
    localDataEvent.eventCode = paramString;
    localDataEvent.data = new MvpResult(false);
    ((MvpResult)localDataEvent.data).exception = paramException;
    ((MvpResult)localDataEvent.data).value = paramT;
    return localDataEvent;
  }

  public static final <T> DataEvent<MvpResult<T>> buildDataEvent4Suc(T paramT, String paramString)
  {
    DataEvent localDataEvent = new DataEvent();
    localDataEvent.eventCode = paramString;
    localDataEvent.data = new MvpResult(true);
    ((MvpResult)localDataEvent.data).value = paramT;
    return localDataEvent;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.util.BuildEventResultUtil
 * JD-Core Version:    0.6.2
 */