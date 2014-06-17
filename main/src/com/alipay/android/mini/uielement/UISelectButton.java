package com.alipay.android.mini.uielement;

import android.view.View;
import android.widget.ListView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.LogUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UISelectButton extends BaseElement
{
  private ListView e;
  private View f;
  private List g;
  private List h;
  private String i;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    if (j() == null);
    for (JSONArray localJSONArray = null; localJSONArray != null; localJSONArray = (JSONArray)j())
    {
      this.h = new ArrayList();
      this.g = new ArrayList();
      for (int j = 0; j < localJSONArray.length(); j++)
      {
        JSONObject localJSONObject = localJSONArray.optJSONObject(j);
        this.g.add(localJSONObject.optString("text"));
        this.h.add(localJSONObject.optString("val"));
      }
    }
  }

  public final int b()
  {
    ListView localListView = this.e;
    ElementFactory.a(localListView);
    if (localListView != null)
      return localListView.getId();
    return 0;
  }

  public void dispose()
  {
    super.dispose();
    this.e = null;
  }

  public final JSONObject e()
  {
    JSONObject localJSONObject = s();
    try
    {
      localJSONObject.put(a(), this.i);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      LogUtils.a(localJSONException);
    }
    return localJSONObject;
  }

  protected final int t()
  {
    return R.layout.v;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UISelectButton
 * JD-Core Version:    0.6.2
 */