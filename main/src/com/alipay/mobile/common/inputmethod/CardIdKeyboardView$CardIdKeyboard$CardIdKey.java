package com.alipay.mobile.common.inputmethod;

import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.inputmethodservice.Keyboard.Key;
import android.inputmethodservice.Keyboard.Row;

class CardIdKeyboardView$CardIdKeyboard$CardIdKey extends Keyboard.Key
{
  public CardIdKeyboardView$CardIdKeyboard$CardIdKey(Resources paramResources, Keyboard.Row paramRow, int paramInt1, int paramInt2, XmlResourceParser paramXmlResourceParser)
  {
    super(paramResources, paramRow, paramInt1, paramInt2, paramXmlResourceParser);
  }

  public CardIdKeyboardView$CardIdKeyboard$CardIdKey(Keyboard.Row paramRow)
  {
    super(paramRow);
  }

  private boolean a()
  {
    boolean bool;
    if ((this.codes[0] != -3) && (this.codes[0] != -10))
    {
      int i = this.codes[0];
      bool = false;
      if (i != 67);
    }
    else
    {
      bool = true;
    }
    return bool;
  }

  public int[] getCurrentDrawableState()
  {
    if (this.pressed)
    {
      if (a())
        return new int[] { 16842912, 16842911, 16842919 };
      return new int[] { 16842919 };
    }
    if (a())
      return new int[] { 16842912, 16842911 };
    return new int[0];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.inputmethod.CardIdKeyboardView.CardIdKeyboard.CardIdKey
 * JD-Core Version:    0.6.2
 */