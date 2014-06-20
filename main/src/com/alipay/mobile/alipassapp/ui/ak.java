package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.biz.bean.CmsObject;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import org.json.JSONException;
import org.json.JSONObject;

final class ak
  implements View.OnClickListener
{
  ak(ah paramah)
  {
  }

  public final void onClick(View paramView)
  {
    AlipassListActivity.p();
    String str1 = this.a.a.getUri();
    try
    {
      JSONObject localJSONObject = new JSONObject(str1);
      String str2 = localJSONObject.optString("appId");
      String str3 = localJSONObject.optString("actionType");
      if (this.a.b.getAllBundles().equalsIgnoreCase("TRAVEL"));
      for (String str4 = "20000021"; StringUtils.isNotBlank(str2); str4 = "20000030")
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("actionType", str3);
        AlipassListActivity.p(this.a.b).getMicroApplicationContext().startApp(str4, str2, localBundle);
        return;
      }
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ak
 * JD-Core Version:    0.6.2
 */