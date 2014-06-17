package com.alipay.mobile.android.mvp.model;

import java.util.HashMap;
import java.util.Map;

public class MvpResult<T>
{
  public static final String SYSTEM_ERROR = "SYSTEM_ERROR";
  private Map<String, Object> a;
  public Exception exception;
  public String resultCode;
  public String resultMessage;
  public boolean success;
  public T value;

  public MvpResult()
  {
  }

  public MvpResult(boolean paramBoolean)
  {
    this.success = paramBoolean;
  }

  public static final <T> MvpResult<T> makeExceptionResult(Exception paramException, T paramT)
  {
    MvpResult localMvpResult = new MvpResult();
    localMvpResult.success = false;
    localMvpResult.exception = paramException;
    localMvpResult.value = paramT;
    return localMvpResult;
  }

  public static final <T> MvpResult<T> makeFailResult(String paramString1, String paramString2, T paramT)
  {
    MvpResult localMvpResult = new MvpResult();
    localMvpResult.success = false;
    localMvpResult.resultCode = paramString1;
    localMvpResult.resultMessage = paramString2;
    localMvpResult.value = paramT;
    return localMvpResult;
  }

  public static final <T> MvpResult<T> makeSuccessResult(T paramT)
  {
    MvpResult localMvpResult = new MvpResult();
    localMvpResult.success = true;
    localMvpResult.value = paramT;
    return localMvpResult;
  }

  public Map<String, Object> getExtMap()
  {
    if ((this.a == null) && (this.a == null))
      this.a = new HashMap();
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.model.MvpResult
 * JD-Core Version:    0.6.2
 */