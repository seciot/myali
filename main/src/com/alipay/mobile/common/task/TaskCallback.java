package com.alipay.mobile.common.task;

public abstract interface TaskCallback
{
  public abstract void onCancelled(int paramInt);

  public abstract void onFailed(int paramInt, Throwable paramThrowable);

  public abstract void onPostExecute(int paramInt, Object paramObject);

  public abstract void onPreExecute(int paramInt);

  public abstract void onProgressUpdate(int paramInt, double paramDouble);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.task.TaskCallback
 * JD-Core Version:    0.6.2
 */