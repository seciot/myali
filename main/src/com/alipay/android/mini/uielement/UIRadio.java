package com.alipay.android.mini.uielement;

import android.util.SparseArray;
import android.view.View;
import android.widget.RadioGroup;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.LogUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class UIRadio extends BaseElement
{
  private RadioGroup e;
  private SparseArray f;

  public final int b()
  {
    RadioGroup localRadioGroup = this.e;
    ElementFactory.a(localRadioGroup);
    if (localRadioGroup != null)
      return localRadioGroup.getId();
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
      localJSONObject.put(a(), this.f.get(this.e.getCheckedRadioButtonId()));
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
    return R.layout.s;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIRadio
 * JD-Core Version:    0.6.2
 */