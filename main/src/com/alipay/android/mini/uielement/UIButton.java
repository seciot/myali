package com.alipay.android.mini.uielement;

import android.os.CountDownTimer;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import com.alipay.android.app.R.layout;
import com.alipay.android.mini.util.UIPropUtil;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public class UIButton extends BaseElement
{
  private int e;
  private int f;
  private CountDownTimer g;
  private Button h;
  private boolean i = false;
  private String[] j;
  private String[] k;
  private boolean l = false;

  public final boolean E()
  {
    return this.i;
  }

  public final void F()
  {
    if ((this.h == null) || (this.e == 0))
      return;
    this.h.post(new i(this));
  }

  public final View G()
  {
    return this.h;
  }

  public final void a(JSONObject paramJSONObject)
  {
    super.a(paramJSONObject);
    this.f = paramJSONObject.optInt("time", 1000);
    this.j = null;
    this.k = null;
    this.i = paramJSONObject.optBoolean("submit");
    String str1 = paramJSONObject.optString("image");
    String str2 = paramJSONObject.optString("color");
    this.l = paramJSONObject.optBoolean("sms");
    if (!TextUtils.isEmpty(str1))
      this.j = str1.split(";");
    if (!TextUtils.isEmpty(str2))
      this.k = str2.split(";");
  }

  public final int b()
  {
    Button localButton = this.h;
    ElementFactory.a(localButton);
    if (localButton != null)
      return localButton.getId();
    return 0;
  }

  public void dispose()
  {
    super.dispose();
    this.g = null;
    this.h = null;
  }

  public final JSONObject e()
  {
    return s();
  }

  protected final int t()
  {
    return R.layout.g;
  }

  protected final void u()
  {
    if (this.l)
    {
      BaseComponent localBaseComponent = (BaseComponent)f();
      if (localBaseComponent != null)
      {
        Iterator localIterator = localBaseComponent.a.iterator();
        while (localIterator.hasNext())
        {
          IUIElement localIUIElement = (IUIElement)localIterator.next();
          if ((localIUIElement instanceof UIInput))
            UIPropUtil.a(((UIInput)localIUIElement).z());
        }
      }
      this.e = 60000;
      this.f = 1000;
      this.h.setEnabled(false);
      this.g = new h(this, this.e, this.f);
      this.g.start();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.UIButton
 * JD-Core Version:    0.6.2
 */