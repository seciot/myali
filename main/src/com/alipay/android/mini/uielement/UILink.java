package com.alipay.android.mini.uielement;

import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import org.json.JSONException;
import org.json.JSONObject;

public class UILink extends BaseElement
{
  private TextView e = null;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
  }

  public final int b()
  {
    TextView localTextView = this.e;
    int i = 0;
    if (localTextView != null)
    {
      ElementFactory.a(this.e);
      i = this.e.getId();
    }
    return i;
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
      if ((j() != null) && (!TextUtils.isEmpty(j().toString())))
        localJSONObject.put(a(), j().toString());
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
    return localJSONObject;
  }

  protected final int t()
  {
    return R.layout.q;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UILink
 * JD-Core Version:    0.6.2
 */