package com.alipay.android.mini.uielement;

import android.view.View;
import android.widget.EditText;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class UITextArea extends BaseElement
{
  private EditText e;

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
  }

  public final int b()
  {
    EditText localEditText = this.e;
    ElementFactory.a(localEditText);
    if (localEditText != null)
      return localEditText.getId();
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
      localJSONObject.put(a(), this.e.getText().toString());
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
    return R.layout.z;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UITextArea
 * JD-Core Version:    0.6.2
 */