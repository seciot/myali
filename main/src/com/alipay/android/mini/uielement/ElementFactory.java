package com.alipay.android.mini.uielement;

import android.view.View;
import org.json.JSONObject;

public class ElementFactory
{
  private static int a = 0;

  public static IUIElement a(ElementType paramElementType)
  {
    if (paramElementType != null);
    switch (d.a[paramElementType.ordinal()])
    {
    default:
      return null;
    case 1:
      return new UILabel();
    case 2:
      return new UIRichText();
    case 3:
      return new UIInput();
    case 4:
      return new UITextArea();
    case 5:
      return new UIPassword();
    case 6:
      return new UISimplePassword();
    case 7:
      return new UICheckBox();
    case 8:
      return new UIRadio();
    case 9:
      return new UISpan();
    case 10:
      return new UILink();
    case 11:
      return new UICombox();
    case 12:
    case 13:
      return new UIIcon();
    case 14:
      return new UIButton();
    case 15:
      return new UISubmit();
    case 16:
      return new UIComponent();
    case 17:
      return new UIWebView();
    case 18:
      return new UILine();
    case 19:
      return new UIBlock();
    case 20:
      return new UITitle();
    case 21:
    }
    return new UISelectButton();
  }

  public static IUIElement a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null)
      return null;
    return a(ElementType.a(paramJSONObject.optString("type")));
  }

  public static void a(View paramView)
  {
    if (paramView == null);
    while (paramView.getId() != -1)
      return;
    paramView.setId(a);
    a = 1 + a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ElementFactory
 * JD-Core Version:    0.6.2
 */