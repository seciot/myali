package com.alipay.android.app.display.uielement;

import android.widget.ImageView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.util.UIUtils;
import org.json.JSONObject;

public class UIImage extends BaseElement
{
  private ImageView a;
  private String b = null;

  public final ElementType a()
  {
    return ElementType.d;
  }

  public final void a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    super.a(paramJSONObject1, paramJSONObject2);
    this.b = UIUtils.d(paramJSONObject1.optString("src"));
  }

  public void dispose()
  {
    super.dispose();
  }

  public final int[] h()
  {
    if (this.a != null)
    {
      int[] arrayOfInt = new int[1];
      arrayOfInt[0] = this.a.getId();
      return arrayOfInt;
    }
    return null;
  }

  protected final int p()
  {
    return R.layout.W;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.UIImage
 * JD-Core Version:    0.6.2
 */