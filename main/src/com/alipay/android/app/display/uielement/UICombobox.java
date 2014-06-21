package com.alipay.android.app.display.uielement;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.app.util.UIUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UICombobox extends BaseElement
  implements ISubmitable
{
  private String a;
  private List b = new ArrayList();
  private ArrayAdapter c;
  private int d = 0;
  private LinearLayout e;
  private TextView f;
  private TextView g;
  private boolean h = true;

  private void a(TextView paramTextView, UICombobox.Option paramOption)
  {
    UIUtils.a(paramOption.d, paramTextView, 0);
    UIUtils.a(paramOption.c, new al(this, paramOption, paramTextView));
  }

  private void setBundlePath(UICombobox.Option paramOption)
  {
    if (paramOption != null)
    {
      a("value", paramOption.b);
      super.a(this.g, paramOption.a);
      a(this.g, paramOption);
      if (TextUtils.isEmpty(paramOption.b))
        this.d = 0;
    }
    if ((s()) && (this.e.isEnabled()))
      a(new an(this, EventType.h));
  }

  private void b(JSONArray paramJSONArray)
  {
    int i = 0;
    if (paramJSONArray == null)
      return;
    while (i < paramJSONArray.length())
      try
      {
        JSONObject localJSONObject = paramJSONArray.getJSONObject(i);
        UICombobox.Option localOption = new UICombobox.Option(this);
        localOption.a = localJSONObject.optString("text");
        localOption.b = localJSONObject.optString("value");
        localOption.c = UIUtils.d(localJSONObject.optString("icon"));
        localOption.d = localJSONObject.optString("icon_align", "left");
        if (localJSONObject.optBoolean("selected", false))
        {
          a("value", localOption.b);
          this.d = i;
        }
        this.b.add(localOption);
        i++;
      }
      catch (JSONException localJSONException)
      {
        while (true)
          LogUtils.a(localJSONException);
      }
  }

  public final ElementType a()
  {
    return ElementType.p;
  }

  protected final void a(Handler paramHandler)
  {
    super.a(paramHandler);
    paramHandler.post(new ar(this));
  }

  protected final void a(Handler paramHandler, String paramString)
  {
    a("text", paramString);
    paramHandler.post(new aq(this, paramString));
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.a = paramJSONObject1.optString("name");
    if (paramJSONObject1.has("options"))
      b(paramJSONObject1.optJSONArray("options"));
    String str = paramJSONObject1.optString("ds");
    if ((!TextUtils.isEmpty(str)) && (paramJSONObject2 != null))
      b(paramJSONObject2.optJSONArray(str));
    a("show_toast", paramJSONObject1.optString("show_toast", "false"));
  }

  protected final void b(Handler paramHandler, String paramString)
  {
    for (int i = 0; ; i++)
      if (i < this.b.size())
      {
        UICombobox.Option localOption = (UICombobox.Option)this.b.get(i);
        if (localOption.b.equals(paramString))
        {
          this.d = i;
          a("value", localOption.b);
        }
      }
      else
      {
        paramHandler.post(new ao(this));
        return;
      }
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    super.c(paramHandler, paramBoolean);
    paramHandler.post(new ap(this, paramBoolean));
  }

  public void dispose()
  {
    super.dispose();
    this.a = null;
    this.b.clear();
    this.b = null;
    this.c = null;
    this.e = null;
    this.g = null;
    this.f = null;
  }

  public final int[] h()
  {
    if (this.e != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.e.getId();
      return arrayOfInt;
    }
    return null;
  }

  public final ISubmitable.SubmitValue getRequireBundleName()
  {
    if (!super.s());
    while (TextUtils.isEmpty(this.a))
      return null;
    return new ISubmitable.SubmitValue(this.a, e());
  }

  public final boolean k()
  {
    if (!super.s());
    while (!TextUtils.isEmpty(e()))
      return true;
    return false;
  }

  protected final int p()
  {
    return R.layout.R;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UICombobox
 * JD-Core Version:    0.6.2
 */