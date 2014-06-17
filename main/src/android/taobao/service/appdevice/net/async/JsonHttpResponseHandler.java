package android.taobao.service.appdevice.net.async;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;

public class JsonHttpResponseHandler extends AsyncHttpResponseHandler
{
  protected void handleFailureMessage(Throwable paramThrowable, String paramString)
  {
    if (paramString != null)
      try
      {
        Object localObject = JSON.parse(paramString);
        if ((localObject instanceof JSONObject))
        {
          onFailure(paramThrowable, (JSONObject)localObject);
          return;
        }
        if (!(localObject instanceof JSONArray))
          return;
        onFailure(paramThrowable, (JSONArray)localObject);
        return;
      }
      catch (JSONException localJSONException)
      {
        onFailure(paramThrowable, paramString);
        return;
      }
    else
      onFailure(paramThrowable, "");
  }

  protected void handleSuccessMessage(String paramString)
  {
    super.handleSuccessMessage(paramString);
    Object localObject;
    try
    {
      localObject = JSON.parse(paramString);
      if ((localObject instanceof JSONObject))
      {
        onSuccess((JSONObject)localObject);
        return;
      }
      if ((localObject instanceof JSONArray))
      {
        onSuccess((JSONArray)localObject);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      onFailure(localJSONException, paramString);
      return;
    }
    throw new JSONException("Unexpected type " + localObject.getClass().getName());
  }

  public void onFailure(Throwable paramThrowable, JSONArray paramJSONArray)
  {
  }

  public void onFailure(Throwable paramThrowable, JSONObject paramJSONObject)
  {
  }

  public void onSuccess(JSONArray paramJSONArray)
  {
  }

  public void onSuccess(JSONObject paramJSONObject)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.JsonHttpResponseHandler
 * JD-Core Version:    0.6.2
 */