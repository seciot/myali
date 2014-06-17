package com.alipay.android.app.display.uielement;

import android.os.Handler;
import android.text.TextUtils;
import android.widget.RadioGroup;
import com.alipay.android.app.R.layout;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class UIRadioGroup extends BaseElement
  implements ISubmitable
{
  private String a;
  private List b = new ArrayList();
  private RadioGroup c;

  public final ElementType a()
  {
    return ElementType.i;
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.a = paramJSONObject1.optString("name");
    if (paramJSONObject1.has("radios"))
      try
      {
        JSONArray localJSONArray = paramJSONObject1.getJSONArray("radios");
        for (int i = 0; i < localJSONArray.length(); i++)
        {
          JSONObject localJSONObject = localJSONArray.getJSONObject(i);
          bn localbn = new bn();
          localbn.a(localJSONObject, paramJSONObject2);
          this.b.add(localbn);
        }
      }
      catch (JSONException localJSONException)
      {
      }
  }

  protected final void b(Handler paramHandler, String paramString)
  {
    a("value", paramString);
    paramHandler.post(new bt(this, paramString));
  }

  protected final void c(Handler paramHandler, boolean paramBoolean)
  {
    super.c(paramHandler, paramBoolean);
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      ((bn)localIterator.next()).c(paramHandler, paramBoolean);
  }

  public void dispose()
  {
    super.dispose();
    if (this.c != null)
      this.c.removeAllViews();
    this.c = null;
    if (this.b != null)
      this.b.clear();
    this.b = null;
  }

  public final int[] h()
  {
    if (this.c != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.c.getId();
      return arrayOfInt;
    }
    return null;
  }

  public final ISubmitable.SubmitValue j()
  {
    if (!super.s())
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
    return R.layout.ac;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIRadioGroup
 * JD-Core Version:    0.6.2
 */