package android.taobao.service.appdevice.net.mtop;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

public class MtopResponseHelper
{
  public static final String FAIL = "FAIL";
  public static final String SUCCESS = "SUCCESS";

  public static Result parse(String paramString)
  {
    int i = 0;
    Result localResult = new Result();
    try
    {
      JSONObject localJSONObject = JSON.parseObject(paramString);
      JSONArray localJSONArray = localJSONObject.getJSONArray("ret");
      int j = localJSONArray.size();
      while (i < j)
      {
        String str = localJSONArray.getString(i);
        if ((str != null) || (!"".equals(str)))
        {
          String[] arrayOfString = str.split("::");
          if ((arrayOfString != null) && (2 == arrayOfString.length))
          {
            localResult.setRetCode(arrayOfString[0]);
            localResult.setRetDesc(arrayOfString[1]);
            if ("SUCCESS".equals(arrayOfString[0]))
            {
              localResult.setData(localJSONObject.getString("data"));
              localResult.setSuccess(true);
              return localResult;
            }
            localResult.setSuccess(false);
          }
        }
        i++;
      }
    }
    catch (Exception localException)
    {
      throw localException;
    }
    return localResult;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.MtopResponseHelper
 * JD-Core Version:    0.6.2
 */