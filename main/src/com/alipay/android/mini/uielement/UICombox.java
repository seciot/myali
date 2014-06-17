package com.alipay.android.mini.uielement;

import android.view.View;
import android.widget.Spinner;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.LogUtils;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class UICombox extends BaseElement
{
  private Map e;
  private Spinner f;
  private List g;
  private String h;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.h = paramJSONObject.optString("label");
  }

  public final int b()
  {
    Spinner localSpinner = this.f;
    ElementFactory.a(localSpinner);
    if (localSpinner != null)
      return localSpinner.getId();
    return 0;
  }

  public void dispose()
  {
    super.dispose();
    this.f = null;
    this.h = null;
  }

  public final JSONObject e()
  {
    JSONObject localJSONObject = s();
    try
    {
      localJSONObject.put(a(), this.e.get(this.f.getSelectedItem()));
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
    return R.layout.i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UICombox
 * JD-Core Version:    0.6.2
 */