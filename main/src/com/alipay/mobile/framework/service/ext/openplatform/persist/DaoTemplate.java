package com.alipay.mobile.framework.service.ext.openplatform.persist;

public class DaoTemplate
{
  private static final String TAG = "AppDAO";

  <T> T excute(DaoExcutor<T> paramDaoExcutor)
  {
    AppDbHelper localAppDbHelper = AppDbHelper.getDbHelper();
    try
    {
      Object localObject2 = paramDaoExcutor.excute(localAppDbHelper);
      return localObject2;
    }
    catch (Exception localException)
    {
      localException = localException;
      localException.getLocalizedMessage();
      localAppDbHelper.close();
      return null;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.persist.DaoTemplate
 * JD-Core Version:    0.6.2
 */