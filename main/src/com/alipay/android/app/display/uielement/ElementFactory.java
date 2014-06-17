package com.alipay.android.app.display.uielement;

import android.view.View;
import org.json.JSONObject;

public final class ElementFactory
{
  private static int a = 0;

  public static IUIElement a(ElementType paramElementType)
  {
    if (paramElementType != null);
    switch (t.a[paramElementType.ordinal()])
    {
    default:
      return null;
    case 1:
      return new UIButton();
    case 2:
      return new UICheckBox();
    case 3:
      return new UICombobox();
    case 4:
      return new UIDatePicker();
    case 5:
      return new UIImage();
    case 6:
      return new UILabel();
    case 7:
      return new UILink();
    case 8:
      return new UIPanel();
    case 9:
      return new UIPane();
    case 10:
      return new UIPassword();
    case 11:
      return new UIProgress();
    case 12:
      return new bn();
    case 13:
      return new UIRadioGroup();
    case 14:
      return new UISwitcher();
    case 15:
      return new UITextarea();
    case 16:
      return new UITextField();
    case 17:
      return new UILayoutColumn();
    case 18:
      return new bj();
    case 19:
      return new UINavigator();
    case 20:
      return new UIList();
    case 21:
      return new UIHr();
    case 22:
      return new UIButtonGroup();
    case 23:
    }
    return new UILayoutPopup();
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
 * Qualified Name:     com.alipay.android.app.display.uielement.ElementFactory
 * JD-Core Version:    0.6.2
 */